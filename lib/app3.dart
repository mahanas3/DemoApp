import 'package:flutter/material.dart';

class App2 extends StatelessWidget {
  const App2({required this.name,required this.age,required this.qualification,super.key, });

  final String? name;
  final String age;
  final String qualification;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(color: Colors.yellow,borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(color: Colors.black,blurRadius: 7,offset: Offset(2,-2))
              ]),
          height:200 ,
          width: 200,
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Name: $name',style: const TextStyle(fontSize: 20,fontStyle: FontStyle.italic)),
              Text('Age: $age',style:
              const TextStyle(fontSize: 20,fontStyle: FontStyle.italic)),
              Text('Qualification: $qualification',style: const TextStyle(fontSize: 20,fontStyle: FontStyle.italic)),
            ],
          ),
        ),
      ),
    );
  }
}
