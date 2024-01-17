import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Gambar statis
            Image.asset(
              '../../lib/src/images/result.png', // Gantilah dengan path gambar statis Anda
              width: 200.0,
              height: 200.0,
            ),
            const SizedBox(height: 16.0),
            // Gambar pressable
            GestureDetector(
              onTap: () {
                // Kembali ke camera_page.dart saat gambar pressable ditekan
                Navigator.pop(context);
              },
              child: Image.asset(
                '../../lib/src/images/retake.png', // Gantilah dengan path gambar pressable Anda
                width: 100.0,
                height: 100.0,
              ),
            ),
            const SizedBox(height: 16.0),
            // Judul
            const Text(
              'Judul Result',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            // Deskripsi
            const Text(
              'Deskripsi Result yang panjang dan informatif.',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
