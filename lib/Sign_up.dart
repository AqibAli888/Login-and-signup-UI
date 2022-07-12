import 'package:flutter/material.dart';

class Sign_up_page extends StatefulWidget {
  const Sign_up_page({Key? key}) : super(key: key);

  @override
  State<Sign_up_page> createState() => _Sign_up_pageState();
}

class _Sign_up_pageState extends State<Sign_up_page> {
  @override
  Widget build(BuildContext context) {
     return SafeArea(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/register.png"),
                fit:  BoxFit.cover
            )
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(left: 40,top: 100),
                child: Text("Welcome to the \n sign up page ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 33
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.5,right: 35,left: 35) ,
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.white54,
                            filled:true,
                            hintText: "Email",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)
                            )
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.white54,
                            filled:true,
                            hintText: "Phone Number",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)
                            )
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            fillColor: Colors.white10,
                            filled:true,
                            hintText: "Password",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)
                            )
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(right: 300),
                            child: Text("Sign Up",
                              style: TextStyle(
                                  fontSize: 28,fontWeight: FontWeight.w700
                              ),),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(onPressed: (){
                            Navigator.pushNamed(context, "login");
                          }, child: Text("Sign in",style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            decoration: TextDecoration.underline,


                          ),
                          )
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),

      ),
    );;
  }
}
