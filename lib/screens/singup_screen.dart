import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:project/screens/login_screen.dart';

class SingUp_Screen extends StatefulWidget {
  const SingUp_Screen({super.key});

  @override
  State<SingUp_Screen> createState() => _SingUp_ScreenState();
}

class _SingUp_ScreenState extends State<SingUp_Screen> {

  bool passToggle = true;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 10),
            Padding(padding: EdgeInsets.all(20),
            child: Image.asset("images/logo2.jpg")
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Full Name",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              ),

              Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Email Address",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              ),

              Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Phone Number",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.phone),
                ),
              ),
              ),

              Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
              child: TextField(
                obscureText: passToggle ? true : false,
                decoration: InputDecoration(
                  labelText: "Email password",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                  suffixIcon: InkWell(
                    onTap: (){
                      if (passToggle == true){
                        passToggle = false;
                      }
                      else{passToggle = true;}
                      setState(() {
                        
                      });
                    },

                    child: passToggle ? Icon(CupertinoIcons.eye_slash_fill) 
                    : Icon(CupertinoIcons.eye_fill),
                  )
                ),
              ),
              ),

              SizedBox(height: 10),
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
                        child: Text("Create Account",
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have account?",
                  style: TextStyle(
                    fontSize: (16),
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                  ),
                  TextButton(onPressed: (){
                    Navigator.push(context,MaterialPageRoute(
                      builder: (context)=> Login_Screen(), ));
                  }, 
                  child: Text("Log in",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown
                  ),
                  ),
                  )
                ],
              ),

          ],
        ),
      ),
        ),
    );
  }
}