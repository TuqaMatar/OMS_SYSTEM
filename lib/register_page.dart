import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/background_image.jpeg"),
                    ))),
            const Positioned(
                top: 80,
                left: 100,
                child: Text(
                  "REGISTER",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                  ),
                )),
            const Positioned(
                top: 120,
                left: 130,
                child: Text(
                  "NOW",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                  ),
                )),
            Positioned(
              top: 250,
              child: Container(
                width: MediaQuery.of(context).size.width - 30,
                padding: const EdgeInsets.fromLTRB(30, 10, 10, 0),
                child: const Expanded(
                  child: TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'USER NAME',
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 340,
              child: Container(
                width: MediaQuery.of(context).size.width - 30,
                padding: const EdgeInsets.fromLTRB(30, 10, 10, 0),
                child: const Expanded(
                  child: TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'EMAIL',
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 430,
              child: Container(
                width: MediaQuery.of(context).size.width - 30,
                padding: const EdgeInsets.fromLTRB(30, 10, 10, 0),
                child: const Expanded(
                  child: TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'PHONE',
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 520,
              child: Container(
                width: MediaQuery.of(context).size.width - 30,
                padding: const EdgeInsets.fromLTRB(30, 10, 10, 0),
                child: const Expanded(
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'PASSWORD',
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 610,
              left: 270,
              child: Container(
                width: 120,
                child: ElevatedButton.icon(
                    icon:Icon(Icons.ad_units_sharp),
                    label: Text('Register'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.black),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.black))))),
              ),
            )
          ],
        ));
  }
}
