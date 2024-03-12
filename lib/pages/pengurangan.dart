import 'package:flutter/material.dart';

class Pengurangan extends StatefulWidget {
  const Pengurangan({super.key});

  @override
  State<Pengurangan> createState() => _PenguranganState();
}

// text controller untuk inputan angka
TextEditingController angka1 = TextEditingController();
TextEditingController angka2 = TextEditingController();
// variabel hasil untuk menampung hasil pengurangan
int hasil = 0;

class _PenguranganState extends State<Pengurangan> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Pengurangan"),
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
                  // button untuk menghitung hasil pengurangan
                  ElevatedButton(
                    // ketika button di klik akan dilakukan proses pengurangan angka1 dan angka2
                    onPressed: () {
                      setState(() {
                        // pareseInt digunakan untuk mengubah string menjadi integer
                        hasil = int.parse(angka1.text) - int.parse(angka2.text);
                      });
                    },
                    child: Text("Hitung"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    // melakukan pengecekan hasil pengurangan dan menampilkannya
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
