import 'package:flutter/material.dart';

import '../viewmodel/firstscreen_viewmodel.dart';

class FirstScreen extends StatefulWidget {
 const  FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
       var data= FirestViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(
          data.titel,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              // هنا تم جلب ال count وعرضه
              '${data.getCount()}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: const SizedBox(height: 10)),
            ),
            const Text("height: 10"),
            ElevatedButton(onPressed: () {
              // هنا تم عمل عملية ال increase in the count
              setState(() {
                data.inc();
              });
            }, child: const Icon(Icons.add))
          ],
        ),
      ),
    );
  }
}
