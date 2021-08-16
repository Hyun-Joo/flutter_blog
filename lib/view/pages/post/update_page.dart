import 'package:flutter/material.dart';
import 'package:flutter_blog/util/validator_util.dart';
import 'package:flutter_blog/view/components/custom_elevated_button.dart';
import 'package:flutter_blog/view/components/custom_text_area.dart';
import 'package:flutter_blog/view/components/custom_text_form_field.dart';
import 'package:get/get.dart';

class UpdatePage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
              key: _formKey,
              child: ListView(
                children: [
                  CustomTextFormField(
                    hint: 'Title',
                    funValidator: validateTitle(),
                    value: '제목1'
                  ),
                  CustomTextArea(
                    hint: 'Content',
                    funValidator: validateContent(),
                    value: '이제 즐기며 살아 ' * 30
                  ),
                  CustomElevatedButton(
                    text: '글 수정하기',
                    funPageRoute: () {
                      if(_formKey.currentState!.validate()) {
                        // 같은 page 가 있으면 이동할 때 덮어씌우는 것이 좋음
                        Get.back(); // 상태관리 GetX 라이브러리 - Obs 로 보완 예정
                      }
                    }
                  )
                ]
              )
          ),
        )
    );
  }
}