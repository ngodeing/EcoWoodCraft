import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'result_page.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({Key? key}) : super(key: key);

  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    _initializeControllerFuture = _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    final cameras = await availableCameras();
    final firstCamera = cameras.first;

    _controller = CameraController(
      firstCamera,
      ResolutionPreset.medium,
    );

    try {
      await _controller.initialize();
    } catch (e) {
      print('Error initializing camera: $e');
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        toolbarHeight: 120.0,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Image.asset(
            '../../lib/src/images/x.png',
            width: 30.0,
            height: 30.0,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              '../../lib/src/images/flash.png',
              width: 30.0,
              height: 30.0,
            ),
            const SizedBox(width: 40.0),
            Image.asset(
              '../../lib/src/images/hdr.png',
              width: 30.0,
              height: 30.0,
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          FutureBuilder<void>(
            future: _initializeControllerFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: CameraPreview(_controller),
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 80.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    '../../lib/src/images/switch.png',
                    width: 40.0,
                    height: 40.0,
                  ),
                  FloatingActionButton(
                    onPressed: () async {
                      try {
                        await _initializeControllerFuture;
                        final navigator = Navigator.of(context);
                        navigator.push(
                          MaterialPageRoute(
                            builder: (context) => ResultPage(),
                          ),
                        );
                      } catch (e) {
                        print('Error taking picture: $e');
                      }
                    },
                    backgroundColor: Colors.transparent,
                    child: Container(
                      width: 80.0,
                      height: 80.0,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 224, 224, 224),
                      ),
                    ),
                  ),
                  Image.asset(
                    '../../lib/src/images/galery.png',
                    width: 40.0,
                    height: 40.0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}
