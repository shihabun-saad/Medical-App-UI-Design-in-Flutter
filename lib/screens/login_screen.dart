import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:project/screens/singup_screen.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({super.key});

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {

  bool passToggle = true;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(children: [
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.all(20),
              child: Image.asset("images/logo2.jpg"),
              ),
              SizedBox(height: 10),
              Padding(padding: EdgeInsets.all(12),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Enter Username"),
                  prefixIcon: Icon(Icons.person)
                ),
              ),
              ),

              Padding(padding: EdgeInsets.all(12),
              child: TextField(
                obscureText: passToggle ? true: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Enter Password"),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: InkWell(
                    onTap: (){
                      passToggle = !(passToggle);
                      setState(() {
                        
                      });
                    },
                    child: passToggle ? Icon(CupertinoIcons.eye_slash_fill) 
                    : Icon(CupertinoIcons.eye_fill),
                  )
                ),
              ),
              ),
              SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  width: double.infinity,
                  child: Material(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(10),

                    child: InkWell(
                      onTap: (){
                
                        //Navigator.push(context,MaterialPageRoute(
                      //builder: (context)=> Login_Screen(), ));
                      },
                      child: Padding(padding: EdgeInsets.symmetric(vertical: 10,horizontal: 30),
                      child: Center(
                        child: Text("Log In",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),),
                      ),),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have any account?",
                  style: TextStyle(
                    fontSize: (16),
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                  ),
                  TextButton(onPressed: (){
                    Navigator.push(context,MaterialPageRoute(
                      builder: (context)=> SingUp_Screen(), ));
                  }, 
                  child: Text("Create Account",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown
                  ),
                  ),
                  )
                ],
              ),
          ],)),
      ),
    );
  }
}