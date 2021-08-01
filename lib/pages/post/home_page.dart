import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blog/constants/size.dart';
import 'package:flutter_blog/pages/post/detail_page.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _navigation(context),
      appBar: AppBar(),
      body: ListView.separated(
        itemCount: 5,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Get.to(DetailPage(index), arguments: '데이터');
            },
            title: Text('제목$index'),
            leading: Text('$index')
          );
        },
        separatorBuilder: (context, index) {
          return Divider();
        }
      )
    );
  }

  Widget _navigation(BuildContext context) {
    return Container(
      width: getDrawerWidth(context),
      height: double.infinity,
      color: Colors.white,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                onPressed: (){},
                child: Text(
                  '회원정보보기',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54
                  )
                )
              ),
              Divider(),
              TextButton(
                onPressed: (){},
                child: Text(
                  '로그아웃',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54
                  )
                )
              ),
              Divider()
            ]
          ),
        ),
      )
    );
  }
}