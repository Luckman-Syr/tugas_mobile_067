import 'package:flutter/material.dart';
// import homepage untuk tampilan after login
import 'package:tugas1_moble/pages/home_page.dart';

// menggnakan statefull widget karena membutuhkan perubahan state untuk mengolah dan mengecheck data
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

// controller untuk mengambil data dari inputan textfield
TextEditingController usernameController = TextEditingController();
TextEditingController passwordController = TextEditingController();

// data user yang akan di gunakan untuk login
var users = [
  {"username": "123210067", "password": "1234"},
  {"username": "user", "password": "user"}
];

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    // Scaffold untuk tampilan aplikasi login
    return Scaffold(
      // safearea untuk menghindari tampilan aplikasi terpotong oleh notch
      body: SafeArea(
        child: Container(
          // padding untuk memberi jarak antara container dengan layar
          padding: EdgeInsets.symmetric(horizontal: 40),
          // decoration untuk memberi warna background pada container
          decoration: BoxDecoration(
            color: Colors.pink,
          ),
          // alignment untuk mengatur posisi container
          alignment: Alignment.topLeft,
          // width untuk mengatur lebar container
          width: double.infinity,
          // colum untuk mengatur tata letak widget secara vertikal
          child: Column(
            // mainAxisAlignment untuk mengatur posisi widget secara vertikal
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment untuk mengatur posisi widget secara horizontal
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "LOGIN",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                padding: const EdgeInsets.symmetric(horizontal: 20),

                // textfield untuk inputan username
                child: TextFormField(
                  controller: usernameController,
                  onChanged: (value) {},
                  decoration: const InputDecoration(
                      labelText: 'Username',
                      // border untuk menghilangkan garis bawah pada textfield
                      border:
                          UnderlineInputBorder(borderSide: BorderSide.none)),
                  // style untuk mengatur style text pada textfield
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                      labelText: 'Password',
                      border:
                          UnderlineInputBorder(borderSide: BorderSide.none)),
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                // button untuk login dimana terdapat logic untuk manage login
                onPressed: () {
                  // mengambil data dari inputan textfield
                  var username = usernameController.text;
                  var password = passwordController.text;

                  // variabel check untuk mengecek apakah username dan password yang diinputkan sesuai dengan data user
                  bool check = false;

                  //  logic untuk mengecek username dan password sekaligus melakukan peruabahan state pada variabel check menjadi true jika username dan password sesuai
                  setState(() {
                    for (var i = 0; i < users.length; i++) {
                      if (username == users[i]['username'] &&
                          password == users[i]['password']) {
                        check = true;
                        break;
                      }
                    }
                  });

                  // jika check bernilai true maka akan diarahkan ke halaman home
                  check == true
                      ? Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()))
                      : ScaffoldMessenger.of(context).showSnackBar(
                          // jika check bernilai false maka akan muncul snackbar atau pesan pop up
                          const SnackBar(
                            content: Text('Username atau Password salah'),
                          ),
                        );
                },
                child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 251, 64, 127),
                        borderRadius: BorderRadius.circular(20)),
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      "LOGIN",
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
