import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/second_page.dart';

class FirstPage extends StatelessWidget {
  final List<String> entries = <String>['A', 'B', 'C', 'D'];
  // String nameText = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('リスト'),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 50,
              /// 配列の値をListViewに表示する 
              child: Center(child: Text('Entry ${entries[index]}')),
            );
          }
          // separatorBuilder: (BuildContext context, int index) => const Divider(),
        ),
        
      // body: Center(
      //   child: Padding(
      //     padding: const EdgeInsets.all(16.0),
      //     child: Column(
      //       children: [
      //         Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
      //         // const Image(
      //         //   image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
      //         // )
      //         TextField(
      //           onChanged: (text) {
      //             nameText = text;
      //           },
      //           decoration: InputDecoration(
      //             border: OutlineInputBorder(),
      //           ),
      //         ),
      //         ElevatedButton(
      //           onPressed: (){
      //             // ボタン押した時に呼ばれるコードを書く
      //             Navigator.push(
      //               context,
      //               MaterialPageRoute(
      //                 builder: (context) => SecondPage(nameText),
      //                 fullscreenDialog: true,
      //               ),
      //             );
      //           },
      //           child: const Text('ボタン'),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}