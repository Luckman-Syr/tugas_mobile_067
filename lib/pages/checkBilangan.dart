import 'package:flutter/material.dart';

class CheckBilangan extends StatefulWidget {
  const CheckBilangan({super.key});

  @override
  State<CheckBilangan> createState() => _CheckBilanganState();
}

// text controller untuk inputan angka
TextEditingController angka1 = TextEditingController();
// variabel hasil untuk menampung hasil pengecekan bilangan
String hasil = "";

class _CheckBilanganState extends State<CheckBilangan> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text("Check Bilangan"),
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
                    TextField(
                      controller: angka1,
                      decoration: InputDecoration(
                        labelText: "Masukan angka anda",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          // ketika button di klik akan dilakukan proses pengecekan angka dengan melakukan operasi modulus atau sisa bagi
                          if (int.parse(angka1.text) % 2 == 0) {
                            hasil = "Genap";
                          } else {
                            hasil = "Ganjil";
                          }
                        });
                      },
                      child: Text("Check"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      // menampilkan hasil pengecekan bilangan
                      "Hasil: $hasil",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ],
          ))),
    );
  }
}
