import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('aaa'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            // ボタン押した時に呼ばれるコードを書く
          },
          child: Text('ボタン'),
        ),
      ),
    );
  }
}