import 'package:flutter/material.dart';
import 'package:flutter_blog/pages/post/home_page.dart';
import 'package:flutter_blog/pages/post/update_page.dart';
import 'package:get/get.dart';

class DetailPage extends StatelessWidget {
  final int id;

  DetailPage(this.id);

  @override
  Widget build(BuildContext context) {
    //String data = Get.arguments;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('글 제목 ${id+1}', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35)),
            Divider(),
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      Get.off(HomePage());
                    },
                    child: Text('삭제')
                ),
                SizedBox(width: 10),
                ElevatedButton(
                    onPressed: () {
                      Get.to(UpdatePage());
                    },
                    child: Text('수정')
                )
              ]
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Text('글 내용!' * 500)
              )
            )
          ]
        ),
      )
    );
  }
}