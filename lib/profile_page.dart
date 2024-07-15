//import 'package:assignment/Sign_In.dart';
import 'package:assignment/login_screen.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProfilePage extends StatelessWidget {
  String nameData;
  String deptData;
  String semData;
  String emailData;
  String passData;
  
  //const ProfilePage({super.key});
  ProfilePage(this.nameData,this.deptData,this.semData,this.emailData,this.passData, {super.key});
  

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      backgroundColor: isDark?Colors.black:Colors.deepPurple,
      appBar: AppBar(title: const Text('Profile'),
      actions: [
        IconButton(onPressed: (){}, icon: Icon(isDark? Icons.sunny : Icons.star_border_outlined),)
      ],
      backgroundColor: isDark?Colors.black:Colors.deepPurple,
      ),
      body: 
      SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(9),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: 120,
                    width: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(60),
                      child: const Image(image: NetworkImage('https://w0.peakpx.com/wallpaper/560/1001/HD-wallpaper-anime-boy-anime-anime-boy-anime-boys-demon-depressed-lonely-sad-sad-anime-boy-sad-anime-boys.jpg',),
                      fit:  BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                      ),
                      child: const Icon(Icons.edit,),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              Text(nameData,style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color:Colors.white,
                    ),
                  ),
              Text(emailData,style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color:Colors.white,
                    ),
                  ),
              const SizedBox(height: 20,),
              SizedBox(width: 150,child: ElevatedButton(onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>const RegistrationScreen()));
              }, child: const Text("Edit Profile")),),
              const SizedBox(height: 30,),
              //const Divider(color: Colors.grey,),
              const SizedBox(height: 10,),
              //const Menu_widget(title: "Setting",icon: Icons.settings,data: "shamim",),
              const SizedBox(height: 30,),
              //const Divider(color: Colors.grey,),
              Menu_widget(title: "Name :",icon: Icons.person,data: nameData,),
              Menu_widget(title: "Depertment :",icon: Icons.book,data: deptData,),
              Menu_widget(title: "Semister :",icon: Icons.numbers,data: semData,),
              Menu_widget(title: "Email Id :",icon: Icons.email,data: emailData,),
              //const Divider(color: Colors.grey,),
              const SizedBox(height: 100,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  ElevatedButton(onPressed: (){}, child: const Icon(Icons.settings)),
                  const SizedBox(width: 100,),
                  ElevatedButton(onPressed: (){}, child: const Icon(Icons.logout)),
                  // Container(
                  //   width: 40,
                  //   height: 40,
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(100),
                  //     color: Colors.white.withOpacity(0.2),
                  //   ),
                  //   child: const Icon(Icons.settings,color: Colors.white,),
                  // ),
                ]
              ),

            ],
          ),
        ),
      )
    );
  }
}

// ignore: camel_case_types
class Menu_widget extends StatelessWidget {
  const Menu_widget({
    required this.title, 
    required this.icon, 
    //required this.endIcon,
    required this.data,
    super.key,
  });
  final String title;
  final IconData icon;
  //final bool endIcon;
  final String data;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.white.withOpacity(0.2),
        ),
        child: Icon(icon,color: Colors.white,),
      ),
      title: Text(title,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
      
      trailing: 
      Text(data,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
      // Container(
      //   width: 40,
      //   height: 40,
      //   decoration: BoxDecoration(
      //     borderRadius: BorderRadius.circular(100),
      //     color: Colors.grey.withOpacity(0.1),
      //   ),
      //   child: const Icon(Icons.arrow_right,color: Colors.grey,),
      // )
    );
  }
}