import 'package:flutter/material.dart';

class Textfieldpage extends StatelessWidget {
  const Textfieldpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(child: Text('テキストフィールドページ')),
      ),
      body: const Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(),
              Padding(
                padding: EdgeInsets.all(100.0),
                child: SizedBox(
                  height: 40,
                  width: 40,
                  child: ColoredBox(color: Colors.blue),
                ),
              ),
              TextButton(
                  style: TextButton.styleFrom(
                    fixedSize: Size(30, 30),
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.black,
                  ),
                  onPressed: null,
                  child: Text('次へ')),
            ]),
      ),
    );
  }
}
