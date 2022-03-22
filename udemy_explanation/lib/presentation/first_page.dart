import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udemy_explanation/application/example_provider.dart';
import 'package:udemy_explanation/router/router.gr.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ExampleProvider>(
      builder: (context, exampleProvider, _) => Scaffold(
        appBar: AppBar(
          title: Text("First Page"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              exampleProvider.getDataString,
              style: TextStyle(fontSize: 30),
            ),
            ElevatedButton(
              onPressed: () {
                context.router.push(SecondRoute(nama: "Yusup", umur: 22));
                exampleProvider.setDataString("0");
              },
              child: Text("Go to Second Page"),
            ),
          ],
        )),
      ),
    );
  }
}
