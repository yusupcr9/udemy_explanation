import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udemy_explanation/application/example_provider.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key, required this.nama, required this.umur})
      : super(key: key);

  final String nama;
  final int umur;

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int data1 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.nama),
      ),
      body: Center(
        child: Text(
          data1.toString(),
          style: TextStyle(fontSize: 30),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          data1++;
          setState(() {});
          context.read<ExampleProvider>().setDataString(data1.toString());
        },
      ),
    );
  }
}
