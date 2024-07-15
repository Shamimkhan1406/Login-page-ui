import 'package:flutter/material.dart';
//import 'package:login_page/app_utils.dart';

// ignore: must_be_immutable
class MyInformation extends StatelessWidget {

  // ignore: prefer_typing_uninitialized_variables
  String nameData;
  String deptData;
  String semData;
  String emailData;
  String passData;
  
  // ignore: prefer_typing_uninitialized_variables
  //String semData;
  MyInformation(this.nameData,this.deptData,this.semData,this.emailData,this.passData, {super.key});
  //MyInformation({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      //appBar: AppBar(backgroundColor: Colors.deepPurple,),
      body: 
      SafeArea(
        child: Center(
          child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 50,),
                    // const SizedBox(
                    //   height: 200,
                    //   width: 200,
                    //   child: CircleAvatar(
                    //     backgroundImage: NetworkImage('https://w0.peakpx.com/wallpaper/560/1001/HD-wallpaper-anime-boy-anime-anime-boy-anime-boys-demon-depressed-lonely-sad-sad-anime-boy-sad-anime-boys.jpg'),
                    //   ),
                    // ),
                    Center(
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          image: const DecorationImage(image: NetworkImage('https://w0.peakpx.com/wallpaper/560/1001/HD-wallpaper-anime-boy-anime-anime-boy-anime-boys-demon-depressed-lonely-sad-sad-anime-boy-sad-anime-boys.jpg',),
                          fit:  BoxFit.cover,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(100)),
                          //color: Colors.amber,
                          border: Border.all(color: Colors.white,width: 10),
                          boxShadow: const [
                            BoxShadow(color: Colors.black,spreadRadius: 0.2,blurRadius: 24),
                          ]
                        ),
                      
                      ),
                    ),
                    const SizedBox(height: 50,),
                    Text('name:  $nameData',style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color:Colors.white,
                    ),
                  ),
                  const SizedBox(height: 50,),
                    Text('Depertment:  $deptData',style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color:Colors.white,
                    ),
                  ),
                  const SizedBox(height: 50,),
                    Text('Semister:  $semData',style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color:Colors.white,
                    ),
                  ),
                  const SizedBox(height: 50,),
                    Text('Email Id:  $emailData',style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color:Colors.white,
                    ),
                  ),
                  const SizedBox(height: 50,),
                    Text('password:  $passData',style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color:Colors.white,
                    ),
                  ),
                  const SizedBox(height: 50,),
                    
                    
                    
            ],
            
          ),
        ),
      ),
    );
  }
}
