import 'package:flutter/material.dart';

void main(){
 
 runApp(Mainpage());
 
}

class Mainpage extends StatelessWidget{
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Firstpage(),
    );
  }
}

class Firstpage extends StatelessWidget{
  
  final TextEditingController emailController = TextEditingController(); 
  final TextEditingController passwordController = TextEditingController(); 
 
  @override
 Widget build (BuildContext context) {
    return Scaffold(
    appBar: AppBar(
       title: const Text("LOG IN"),
       backgroundColor: Colors.amberAccent,
       leading: const Icon(Icons.code)
     ),
     
    body: Form(
      child: ListView(
        children: [
          TextFormField(
            controller: emailController,
            decoration: const InputDecoration(
            labelText:'Email Address',
            ),
              keyboardType: TextInputType.text,
            ),
          TextFormField(
              controller: passwordController,
              decoration: const InputDecoration(
              labelText: 'Password',
           ),
              keyboardType: TextInputType.text,
            ),
            ElevatedButton(
              onPressed: () {
                String email= emailController.text;
                String password= passwordController.text;
                print('Email: $email , Password: $password');
              },
              child: const Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
