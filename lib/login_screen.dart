import 'package:assignment/Sign_In.dart';
//import 'package:assignment/home.dart';
import 'package:assignment/inputfeild.dart';
import 'package:assignment/profile_page.dart';
import 'package:flutter/material.dart';


void showScaffold(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(text),
    ),
  );
}


class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});


  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {

  bool isOpen = false;
  String SelectOption = 'Select your current Semister';
  List<String> semister =["one","two","three","four","five","six"];

  TextEditingController depertmentController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  late String semData;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.deepPurple),
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.deepPurple,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(child: Text('HELLO', 
            style: TextStyle(
              color: Colors.white,
              fontSize: 28.0,
              //fontFamily: fontFamily,
              fontWeight: FontWeight.bold,
              ),
              ),
            ),
            const SizedBox(height: 8.0,),
            const Center(child: Text('Sign Up to continue', 
            style: TextStyle(
              color: Colors.white,
              fontSize: 28.0,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.03,),
            const Center(child: Text('Plese enter your information', 
            style: TextStyle(
              color: Colors.white,
              fontSize: 14.0,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              ),
              ),
            ),
            const SizedBox(height: 50),
            inputfeild(controller: nameController,icon: Icons.person,hintText:'Name',),
            const SizedBox(height: 25),
            inputfeild(controller: depertmentController,icon: Icons.book_rounded,hintText: 'Enter your Depertment',),
            const SizedBox(height: 25),
            SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0,),
          child: Column(
            
            children: [
              //const SizedBox(height: 1),
              InkWell(
                onTap: () {
                  setState(() {
                    isOpen = !isOpen;
                  });
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    
                    color: Colors.transparent,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal:10.0,),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //const SizedBox(width:10),
                        // ignore: avoid_unnecessary_containers
                        const SizedBox( width: 25,  child: Icon(Icons.numbers,color: Colors.white,)),
                        const SizedBox(width:25),
                        Container(alignment: Alignment.center,  width: 250,  child: Text(SelectOption)),
                        //const SizedBox(width:110),
                        SizedBox(width: 25,  child: Icon( isOpen ?Icons.arrow_drop_up:Icons.arrow_drop_down)),
                      ],
                      
                    ),
                  )
                ),
              ),
              Container(height: 0.5,color: Colors.grey,),
              if (isOpen)
              ListView(
                primary: true,
                shrinkWrap: true,
                children:
                semister.map((e) => Container(//width: 200,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                  color: Colors.transparent,
                  ),
                  child : Padding(
                    padding: const EdgeInsets.symmetric(horizontal:10.0),
                    child: InkWell(
                      onTap: () {
                        SelectOption = e;
                        isOpen = false;
                        setState(() {
                          semData = e;
                        });
                      },
                      child: Text(e)),
                  ),)).toList(),
                
              )
            ],
          ),
        ),
      ),
            const SizedBox(height: 25),
            inputfeild(controller: emailController,icon: Icons.email,hintText: 'Enter your Email Id',),
            const SizedBox(height: 25),
            inputfeild(controller: passwordController,icon: Icons.password,hintText: 'password',obscureText: true,),
            //const SizedBox(height: 25),
            
            const SizedBox(height: 25),
            MaterialButton(onPressed: (){
              if(isValidate())
                {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>ProfilePage(
                  nameController.text.toString(),
                  depertmentController.text.toString(),
                  semData.toString(),
                  emailController.text.toString(),
                  passwordController.text.toString(),
                  )),
                  // MyInformation(
                  // nameController.text.toString(),
                  // depertmentController.text.toString(),
                  // semData.toString(),
                  // emailController.text.toString(),
                  // passwordController.text.toString(),
                  // )
                  // )
                  );
                
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
          const SizedBox(height: 25),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account?",style: 
                  TextStyle(
                    color: Colors.white,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w300,
                  )
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>const LoginScreen()));
                  },
                  child: const Text("Sing In",style: 
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
      )
    );
    
  }
  bool isValidate()
  {
    if(nameController.text.isEmpty)
    {
      showScaffold(context, "Enter your name");
      return false;
    }
    if(depertmentController.text.isEmpty)
    {
      showScaffold(context, "Enter your Depertment");
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
