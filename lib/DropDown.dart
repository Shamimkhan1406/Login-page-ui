import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  const DropDown({super.key});

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  
  bool isOpen = false;
  String SelectOption = 'SelectOption';
  List<String> semister =["one","two","three","four","five","six"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
          child: Column(
            
            children: [
              const SizedBox(height: 50),
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
                    color: Colors.grey,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal:10.0,),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(width:25),
                        const Icon(Icons.numbers,color: Colors.white,),
                        const SizedBox(width:100),
                        Text(SelectOption),
                        const SizedBox(width:100),
                        Icon( isOpen ?Icons.arrow_drop_up:Icons.arrow_drop_down),
                      ],
                    ),
                  )
                ),
              ),
              if (isOpen)
              ListView(
                primary: true,
                shrinkWrap: true,
                children:semister.map((e) => Container(
                  decoration: const BoxDecoration(
                  color: Colors.grey,
                  ),
                  child : Padding(
                    padding: const EdgeInsets.symmetric(horizontal:10.0),
                    child: InkWell(
                      onTap: () {
                        SelectOption = e;
                        isOpen = false;
                        setState(() {
                          
                        });
                      },
                      child: Text(e)),
                  ),)).toList(),
                
              )
            ],
          ),
        ),
      )
    );
  }
}