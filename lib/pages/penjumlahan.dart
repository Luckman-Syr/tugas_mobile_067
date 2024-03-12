import 'package:flutter/material.dart';

class Penjumlahan extends StatefulWidget {
  const Penjumlahan({super.key});

  @override
  State<Penjumlahan> createState() => _PenjumlahanState();
}

// text controller untuk inputan angka
TextEditingController angka1 = TextEditingController();
TextEditingController angka2 = TextEditingController();
// variabel hasil untuk menampung hasil penjumlahan
int hasil = 0;

class _PenjumlahanState extends State<Penjumlahan> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Penjumlahan"),
          backgroundColor: Colors.pink,
        ),
        body: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  // inputan angka 1
                  TextField(
                    controller: angka1,
                    decoration: InputDecoration(
                      labelText: "Angka 1",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // inputan angka 2
                  TextField(
                    controller: angka2,
                    decoration: InputDecoration(
                      labelText: "Angka 2",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // ketika button di klik akan dilakukan proses penjumlahan angka1 dan angka2
                      setState(() {
                        hasil = int.parse(angka1.text) + int.parse(angka2.text);
                      });
                    },
                    child: Text("Hitung"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    // melakukan pengecekan dan penampilan hasil penjumlahan
                    hasil == 0 ? "Hasil : 0" : "Hasil : $hasil",
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
