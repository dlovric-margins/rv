import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:racunalni_vid/camera_cubit/camera_cubit.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const CameraApp());
}

class CameraApp extends StatefulWidget {
  /// Default Constructor
  const CameraApp({super.key});

  @override
  State<CameraApp> createState() => _CameraAppState();
}

class _CameraAppState extends State<CameraApp> {
  late final CameraCubit _cameraCubit = CameraCubit()
    ..initController()
    ..clearState();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => _cameraCubit,
        child: Material(
          child: WillPopScope(
            onWillPop: () async {
              await _cameraCubit.clearState();
              return false;
            },
            child: Scaffold(
              appBar: AppBar(
                centerTitle: true,
                title: const Text('FACE RECOGNITION'),
                toolbarHeight: 30,
              ),
              body: LoaderOverlay(
                child: Builder(builder: (context) {
                  return BlocListener<CameraCubit, CameraState>(
                    listener: (context, state) {
                      state.when(
                        imageState: (
                          imageData,
                          isLoading,
                          controller,
                        ) {
                          if (state.isLoading) {
                            context.loaderOverlay.show();
                          } else {
                            context.loaderOverlay.hide();
                          }
                        },
                      );
                    },
                    child: BlocBuilder<CameraCubit, CameraState>(
                      builder: (context, state) {
                        return state.when(
                          imageState: (
                            imageData,
                            _,
                            controller,
                          ) {
                            if (imageData.initialFile == null &&
                                controller != null) {
                              return CameraWidget(
                                controller: controller,
                                cameraCubit: _cameraCubit,
                              );
                            } else if (imageData.initialFile != null) {
                              return SingleChildScrollView(
                                child: GeneratedImagePreview(
                                  cameraCubit: _cameraCubit,
                                ),
                              );
                            } else {
                              return const LoadingIndicator();
                            }
                          },
                        );
                      },
                    ),
                  );
                }),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class GeneratedImagePreview extends StatelessWidget {
  const GeneratedImagePreview({
    super.key,
    required this.cameraCubit,
  });

  final CameraCubit cameraCubit;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CameraCubit, CameraState>(
      builder: (context, state) {
        return state.when(
          imageState: (imageData, isLoading, controller) {
            return Column(
              children: [
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    if (imageData.processedFile != null)
                      Image.file(
                        File(imageData.processedFile!.path),
                      )
                    else
                      Image.file(
                        File(imageData.initialFile!.path),
                      ),
                    if (imageData.processedFile != null)
                      if (state.imageData.name != null)
                        Padding(
                          padding: const EdgeInsets.only(bottom: 40),
                          child: Text(
                            state.imageData.name!,
                            style: const TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                              backgroundColor: Colors.black,
                            ),
                          ),
                        )
                  ],
                ),
                if (imageData.processedFile != null)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          cameraCubit.clearState();
                        },
                        icon: const Icon(Icons.arrow_back),
                      ),
                      if (state.imageData.name == null) ...[
                        if (state.imageData.faceCount == 0)
                          const Text('No faces found.')
                        else if (state.imageData.faceCount == 1 &&
                            !state.imageData.exists)
                          _buildButton(context, imageData.initialFile!)
                        else if (state.imageData.exists)
                          const Text('Face recognized')
                        else
                          Text('Faces found: ${state.imageData.faceCount}'),
                      ] else
                        const Text('User added to database.'),
                      const SizedBox(width: 40)
                    ],
                  )
                else
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text('Processing...'),
                  ),
              ],
            );
          },
        );
      },
    );
  }

  OutlinedButton _buildButton(BuildContext context, File initialFile) {
    return OutlinedButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            String username = '';

            return AlertDialog(
              title: const Text('Enter Username'),
              content: TextField(
                onChanged: (value) {
                  username = value;
                },
                decoration: const InputDecoration(
                  labelText: 'Username',
                ),
              ),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // Close the dialog
                  },
                  child: const Text('Cancel'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Perform your submit action here, passing the entered username
                    cameraCubit.addToDatabase(initialFile, username);
                    Navigator.of(context).pop(); // Close the dialog
                  },
                  child: const Text('Submit'),
                ),
              ],
            );
          },
        );
      },
      child: const Text('Add to database'),
    );
  }
}

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: SizedBox(
            height: 50, width: 50, child: CircularProgressIndicator()));
  }
}

class CameraWidget extends StatelessWidget {
  const CameraWidget({
    super.key,
    required this.controller,
    required this.cameraCubit,
  });

  final CameraController controller;
  final CameraCubit cameraCubit;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CameraPreview(
          controller,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: TextButton(
                  onPressed: () async {
                    cameraCubit.takePicture();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [Icon(Icons.camera_alt)],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
