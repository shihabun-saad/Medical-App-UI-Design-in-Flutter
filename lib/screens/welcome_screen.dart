import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:project/screens/login_screen.dart';
import 'package:project/widgets/navbar_roots.dart';
import 'package:project/screens/singup_screen.dart';

class Welcome_Screen extends StatefulWidget {
  const Welcome_Screen({super.key});

  @override
  State<Welcome_Screen> createState() => _Welcome_ScreenState();
}

class _Welcome_ScreenState extends State<Welcome_Screen> {
  @override
  Widget build(BuildContext context) {
    return Material(

      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(10),

        child: Column(
          children: [
            SizedBox(height: 1),
            Align(alignment: Alignment.centerRight,
            
            child: TextButton(
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(
                  builder: (context)=> NavBar_Roots()
                ));
              },
              child: Text("SKIP",
              style: TextStyle(
                color: Colors.brown,
                fontSize: 15
              ),
              ),
            ),
            ),
            SizedBox(height: 50),
            Padding(padding: EdgeInsets.all(20),
            child: Image.asset("images/logo2.jpg"),),
            SizedBox(height: 40),
            Text("Doctors Appoinment", 
            style: TextStyle(color: Colors.brown,
            fontSize: 35,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
            wordSpacing: 2,
            ),),
            SizedBox(height: 10),
            Text("Appoint Your Doctor", 
            style: TextStyle(color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.bold,
            ),),

            SizedBox(height: 50),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Material(
                color: Colors.brown,
                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  onTap: (){

                    Navigator.push(context,MaterialPageRoute(
                  builder: (context)=> Login_Screen(),
                ));
                  },
                  child: Padding(padding: EdgeInsets.symmetric(vertical: 10,horizontal: 30),
                  child: Text("Log In",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),),),
                ),
              ),


               Material(
                color: Colors.brown,
                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  onTap: (){

                   Navigator.push(context,MaterialPageRoute(
                      builder: (context)=> SingUp_Screen(), ));
                  },
                  child: Padding(padding: EdgeInsets.symmetric(vertical: 10,horizontal: 30),
                  child: Text("Sing Up",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),),),
                ),
              )
            ],)
          ],
        ),
      ),
    );
  }
}