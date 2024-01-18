import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
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
              const SizedBox(height: 16.0),
              for (int i = 0; i < 3; i++)
                Column(
                  children: [
                    Container(
                      width: 300.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Image.asset(
                              '../image/kayuasal.png',
                              width: 200.0,
                              height: 200.0,
                            ),
                          ),
                          const SizedBox(height: 16.0),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Deskripsi Result yang panjang dan informatif.',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                  ],
                ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Color(0xFF016434),
        padding: EdgeInsets.all(16.0),
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
