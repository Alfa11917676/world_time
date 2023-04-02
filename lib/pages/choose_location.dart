import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  int counter = 0;

  void getData() {
    // simulate network request for a username
    Future.delayed(const Duration(seconds: 3), () {
      counter+=1;
      print('Counter raised to $counter');
    });
    print('getting data');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
    // print('function ran');
  }

  @override
  Widget build(BuildContext context) {
    print('build function ran');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ElevatedButton(
        onPressed: () {
          setState(() {
            print("Getting data");
            getData();
          });
        },
        child: Text('Counter is $counter'),
      )
    );
  }
}
