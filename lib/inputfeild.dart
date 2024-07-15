import 'package:flutter/material.dart';
//import 'package:login_page/app_utils.dart';

class inputfeild extends StatelessWidget {
  

  final TextEditingController controller;
  final String hintText;
  final IconData icon;
  final  bool obscureText;
  

   const inputfeild({
    super.key,
    required this.controller,
    required this.hintText,
    required this.icon,
    this.obscureText = false, 
  });
  

  
  
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16,right: 20),
        child: TextFormField(
          
          keyboardType: TextInputType.emailAddress,
          obscureText: obscureText,
          controller: controller,
          style: const TextStyle(
          color: Colors.white,  
          fontSize: 14.0,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
        
          ),
          textAlign: TextAlign.center,
          cursorColor: Colors.white,
          decoration: InputDecoration(
          isDense: true,
          prefixIcon:  Icon(icon,color: Colors.white,),
          focusColor: Colors.white,
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Colors.grey,
            fontFamily: 'Montserrat',
            fontSize: 12,
    
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            
          ),
          border: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          contentPadding: const EdgeInsets.only(top: 15,),
        ),
        
      ),
      
    );
  }
}
