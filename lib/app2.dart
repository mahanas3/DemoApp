import 'package:flutter/material.dart';
import 'package:flutter_project1/app3.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool? c = false;
  String? gender;

  final projectSubmission = TextEditingController();

  final projectResubmission = TextEditingController();

  final projectAssignments = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DemoApp'),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(height: 20, width: 20),
          TextField(
            controller: projectSubmission,
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Name',
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.blue,
                ),
                hintText: 'Enter your name',
                alignLabelWithHint: true,
                fillColor: Color(10),
                hintStyle: TextStyle(color: Colors.red),
                iconColor: Color(20)),
          ),
          const SizedBox(
            width: 20,
            height: 20,
          ),
          TextField(
            controller: projectResubmission,
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text('Age'),
                prefixIcon: Icon(Icons.place, color: Colors.red),
                hintStyle: TextStyle(color: Colors.blue),
                hintText: 'Enter your age'),
          ),
          const SizedBox(
            width: 20,
            height: 20,
          ),
          TextField(
            controller: projectAssignments,
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Qualification',
                prefixIcon: Icon(
                  Icons.contact_page,
                  color: Colors.purple,
                ),
                hintText: 'Enter your Qualification',
                hintStyle: TextStyle(color: Colors.deepOrange)),
          ),
          const SizedBox(
            width: 100,
          ),
          Row(
            children: [
              const SizedBox(
                width: 17,
              ),
              Checkbox(
                value: this.c,
                onChanged: (bool? value) {
                  setState(() {
                    this.c = value;
                  });
                },
              ),
              const Text('passed')
            ],
          ),
          RadioListTile(
            title: const Text("Male"),
            value: "male",
            groupValue: gender,
            onChanged: (value) {
              setState(() {
                gender = value.toString();
              });
            },
          ),
          RadioListTile(
            title: const Text("Female"),
            value: "female",
            groupValue: gender,
            onChanged: (value) {
              setState(() {
                gender = value.toString();
              });
            },
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => App2(
                                name: projectSubmission.text.toString(),
                                age: projectResubmission.text.toString(),
                                qualification:
                                    projectAssignments.text.toString(),
                              )),
                    );
                  },
                  child: const Text('SUBMIT'))),
        ]),
      ),
    );
  }
}
