import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/second_page.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('ファースト'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            // ボタン押した時に呼ばれるコードを書く
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SecondPage(),
                fullscreenDialog: true,
              ),
            );
          },
          child: const Text('ボタン'),
        ),
      ),
    );
  }
}