import 'package:flutter/material.dart';
import 'package:simple_login2/register_page.dart';
import 'package:simple_login2/reset_password_page.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
                left: 130,
                child: Text(
                  "OMS",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                  ),
                )),
            const Positioned(
                top: 120,
                left: 130,
                child: Text(
                  "LOGIN",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                  ),
                )),
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
              top: 420,
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
              top: 510,
              left: 220,
              child: Container(
                width: 150,
                height: 50,
                child: ElevatedButton.icon(
                    icon:Icon(Icons.lock),
                    label: Text('login'),
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.black),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.black))))),
              ),
            ) ,
            Positioned(
              top:600,
              left:50,
                child: Row(
                  children: [
                    TextButton(
                        onPressed: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder:(context){
                                return RegisterScreen();
                              }),);
                        },
                        child: Text('Register' ,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,

                        ),)) ,
                    SizedBox( width: 100,),
                    TextButton(
                        onPressed: (){
                          Navigator.push(context,
                            MaterialPageRoute(builder:(context){
                              return ResetScreen();
                            }),);
                        },
                        child: Text('Forgot Password' ,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,

                          ),))

                  ],
                ))
          ],
        ));
  }
}
