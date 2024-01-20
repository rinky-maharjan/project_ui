import 'package:flutter/material.dart';
import 'package:flutter_firebase_config/components/my_button.dart';
import 'package:flutter_firebase_config/components/my_textfield.dart';
import 'package:flutter_firebase_config/components/square_tile.dart';
//import 'package:flutter_firebase_config/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  //text editing controllers
  final usernameController =  TextEditingController();
  final passwordController =  TextEditingController();

  //sign user in method
  void signUserIn(){
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(220, 201, 219, 1),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 5),
              Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [       
                  Image.asset(      
                    'lib/images/logo-color.png',
                    height:105,
                    ),
                ],
              ),
              //logo
              // Icon(
              //   Icons.lock,
              //   size:100,
              // ),
          
            //welcome back!!

              SizedBox(height: 20),
              Text(
                'Welcome back!',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20),
              ),
              SizedBox(height: 20),
              MyTextField(
                controller: usernameController , 
                hintText: 'Username',
                 obscureText: false),
              SizedBox(height:20),
              MyTextField(
                controller:passwordController,
                hintText:'Password',
                obscureText: true),
                
              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal:25.0),
              //   child: TextField(
              //     decoration:InputDecoration(
              //       enabledBorder: OutlineInputBorder(
              //         borderSide:BorderSide(color:Colors.white),
              //       ),
              //       focusedBorder:OutlineInputBorder(
              //         borderSide: BorderSide(color:Colors.grey)
              //       ),
              //       fillColor:Colors.white,
              //       filled:true,
              //       hintText:'Username',
              //      // obscureText:false,
              //     )
              //   ),
              // ),
              // SizedBox(height: 20),
              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal:25.0),
              //   child: TextField(
              //     decoration:InputDecoration(
              //       enabledBorder: OutlineInputBorder(
              //         borderSide:BorderSide(color:Colors.white),
              //       ),
              //       focusedBorder:OutlineInputBorder(
              //         borderSide: BorderSide(color:Colors.grey)
              //       ),
              //       fillColor:Colors.white,
              //       filled:true,
              //       hintText:'Password',
              //       //obscureText:true,
              //     )
              //   ),
              // ),
                
              
              SizedBox(height: 20),
                
              //forgot password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:20.0),
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot password?',
                      style:TextStyle(color:Colors.grey[600])),
                  ],
                ),
              ),

                
              //sign in
              MyButton(
                onTap: signUserIn,
              ),
                
              //continue with google
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness:0.5,
                        color:Colors.grey[400],
                      ),
                    ),
                    Text('Or continue with'),
                    Expanded(
                      child:Divider(
                        thickness:0.5,
                        color:Color.fromARGB(255, 119, 119, 119),
                      ),
                    ),
                  ],
                ),
              ),
              
              //google button
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                  SquareTile(imagepath: 'lib/images/google_logo.jpg'),
                  ],
                ),
              ),
                
              //not a member? sign up
              Row(
                 mainAxisAlignment:MainAxisAlignment.center,
                children: [ 
                  Text('Not a memeber?'),
                  const SizedBox(width:4),
                  Text(
                    "Register now",
                    style:TextStyle(color:Colors.blue[900],fontWeight:FontWeight.bold)),
                ],
              ),
          ]),
        ),
      )
    );
  }
}