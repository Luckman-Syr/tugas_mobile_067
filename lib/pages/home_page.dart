import 'package:flutter/material.dart';

// Import halaman-halaman yang akan digunakan
import 'package:tugas1_moble/pages/checkBilangan.dart';
import 'package:tugas1_moble/pages/pengurangan.dart';
import 'package:tugas1_moble/pages/penjumlahan.dart';

// Membuat class HomePage yang merupakan statefull widget
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Menu Utama"),
          leading: Icon(Icons.calculate),
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.pink,
        ),
        body: Container(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Hii selamat datang di halaman utama!",
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Expanded digunakan untuk mengatur agar button menyesuaikan layar
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.pink,
                          ),
                          onPressed: () {
                            // Navigator.push digunakan untuk berpindah halaman ketika button ditekan
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Penjumlahan();
                            }));
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 50,
                            child: Text(
                              "Penjumlahan",
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.pink,
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Pengurangan();
                            }));
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 50,
                            child: Text("Pengurangan"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pink,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return CheckBilangan();
                    }));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: Text("Check Ganjil Genap"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
