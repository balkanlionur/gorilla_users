import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

String _imageGorilla = 'assets/1.png';

class _LoginScreenState extends State<LoginScreen> {
  bool checkboxvalue = false;
  void updateimage(String text) {
    setState(() {
      _imageGorilla = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Gorilla Login')),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: SizedBox(
                width: 200, height: 200, child: Image.asset(_imageGorilla)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onTap: () {
                updateimage('assets/2.png');
              },
              decoration: const InputDecoration(
                  prefix: Icon(Icons.person_rounded),
                  border: OutlineInputBorder(),
                  labelText: 'Username'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onTap: () {
                updateimage('assets/4.png');
              },
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), label: Text('Password')),
            ),
          ),
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Checkbox(
                    value: checkboxvalue,
                    onChanged: (checkboxvalue) async {
                      if (checkboxvalue == true) {
                        updateimage('assets/5.png');
                      } else {
                        updateimage('assets/1.png');
                      }

                      setState(() {
                        this.checkboxvalue = checkboxvalue!;
                      });
                    }),
                const Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Text('show'),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            child: ElevatedButton(onPressed: () {}, child: const Text('Login')),
          )
        ],
      ),
    );
  }
}
