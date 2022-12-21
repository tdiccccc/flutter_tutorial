import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/second_page.dart';

class FirstPage extends StatelessWidget {
  String nameText = '';
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('ファースト'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
              // const Image(
              //   image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
              // )
              TextField(
                onChanged: (text) {
                  nameText = text;
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              ElevatedButton(
                onPressed: (){
                  // ボタン押した時に呼ばれるコードを書く
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondPage(nameText),
                      fullscreenDialog: true,
                    ),
                  );
                },
                child: const Text('ボタン'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}