import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  // Array objek dengan link gambar dan deskripsi
  final List<Map<String, String>> resultData = [
    {
      'image': '../image/kayuasal.png',
      'description':
          'Deskripsi Result yang panjang dan informatif. Deskripsi Result yang panjang dan informatif. Deskripsi Result yang panjang dan informatif. Deskripsi Result yang panjang dan informatif. Deskripsi Result yang panjang dan informatif.',
    },
    {
      'image': '../image/carakerja.png',
      'description':
          'Deskripsi Result yang panjang dan informatif. Deskripsi Result yang panjang dan informatif. Deskripsi Result yang panjang dan informatif. Deskripsi Result yang panjang dan informatif. Deskripsi Result yang panjang dan informatif.',
    },
    {
      'image': '../image/hasil.png',
      'description':
          'Deskripsi Result yang panjang dan informatif. Deskripsi Result yang panjang dan informatif. Deskripsi Result yang panjang dan informatif. Deskripsi Result yang panjang dan informatif. Deskripsi Result yang panjang dan informatif.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF016434),
        toolbarHeight: 120.0,
        title: Align(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.only(right: 60.0, top: 50.0),
            child: Text(
              'Result',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
            ),
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  '../image/result.png',
                  width: 200.0,
                  height: 200.0,
                ),
              ),
              const SizedBox(height: 16.0),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    '../image/retake.png',
                    width: 100.0,
                    height: 100.0,
                  ),
                ),
              ),
              const SizedBox(height: 24.0),
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 25.0),
                      child: const Text(
                        'Step by step',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 24.0),
                  ],
                ),
              ),
              // Menggunakan map untuk membuat kontainer dengan gambar dan deskripsi
              ...resultData.map((data) => Column(
                    children: [
                      Container(
                        width: 300.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFD9D9D9),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Image.asset(
                                data['image']!,
                                width: 200.0,
                                height: 200.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: 300.0, // Lebar teks deskripsi
                          child: Text(
                            data['description']!,
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16.0),
                    ],
                  )),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Color(0xFF016434),
        padding: EdgeInsets.all(25.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Reset',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            Text(
              'Save',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}