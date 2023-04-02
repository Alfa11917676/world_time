import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);
  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  int counter = 0;
  int counter2 = 0;

  void getData() async {

    String firstCounter =  await Future.delayed(const Duration(seconds: 3), () {
      counter+=1;
      return counter.toString();
    });

    String secondCounter = await Future.delayed(const Duration(seconds: 2), () {
      counter2+=1;
      return counter2.toString();
    });
    print("First counter is $firstCounter and second counter is $secondCounter");

  }

  @override
  void initState() {
    super.initState();
    getData();
    print('function ran');
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
        elevation: 0
      ),
      body: ElevatedButton(
        onPressed: () {
          setState(() {
            print("Getting data");
            getData();
          });
        },
        child: Text('Counter is $counter and $counter2'),
      )
    );
  }
}
