import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  String usename= "admin";
      String password= 'abcde234';
      TextEditingController usercontroller =TextEditingController();
      TextEditingController passwordcontroller =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                controller: usercontroller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.people),
                    hintText: "UserName",
                    helperText: "user name must be an email",
                    labelText: "UserName"),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20,
                  bottom: 50),
              child: TextField(
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.visibility_off_sharp),
                    hintText: "Password",
                    helperText: "password must contain 6 characters",
                    labelText: "Password"),
              ),
            ),
             ElevatedButton(onPressed: () {
              if(username == usercontroller.text
              &&
              password == passwordcontroller.text) {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Home()));
              } else{
                ScaffoldMessenger.of(context).showSnackBar( const SnackBar(
                  content: Text(),
                )
              }
            }, child: const Text("Login"))
          ],
        ),
      ),
    );
  }
}