
import 'package:assignment/inputfeild.dart';
import 'package:assignment/login_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController  emailController = TextEditingController(text: "example@gmail.com");
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.deepPurple,
      body: 
      SafeArea(child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const SizedBox(height: 40,),
            const Text("Welcome back!",
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
              
            ),
            ),
            const SizedBox(height: 50,),
            const Text("Plese enter your detail below!",
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            ),
            const SizedBox(height: 70,),
            inputfeild(controller: emailController, hintText: "Enter your Email", icon: Icons.email),
            const SizedBox(height: 25,),
            inputfeild(controller: passwordController, hintText: "Enter your password", icon: Icons.password,obscureText: true,),
            const SizedBox(height: 50,),
            MaterialButton(onPressed: (){
              if(isValidate())
                {
                  print("Verified");
                }

          },
          elevation: 5.0,
          child: Container(
           decoration:BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(30), ),
            constraints: const BoxConstraints(maxHeight: 60),
            alignment: Alignment.center,
            child:  const Text( "Sign Up",
            style: TextStyle(
            color: Colors.black,
            fontSize: 17.0,
            fontWeight: FontWeight.bold,
            ),
          ),
          ),
          ),
            const SizedBox(height: 25,),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?",style: 
                    TextStyle(
                      color: Colors.white,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w300,
                    )
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>const RegistrationScreen()));
                    },
                    child: const Text("Sing Up",style: 
                      TextStyle(
                        color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w900,
                      )
                    ),
                  ),
                ],
              ),
            
          ],
        ),
      ))
      
    );
  }
  bool isValidate()
  {
    if(emailController.text.isEmpty)
    {
      showScaffold(context, "Enter your Email");
      return false;
    }
    if(passwordController.text.isEmpty)
    {
      showScaffold(context, "Enter your Password");
      return false;
    }
    return true;
  }
}
