import 'package:flutter/material.dart';
import 'package:flutter_chanhyuk_talk/components/register/form_item.dart';
import 'package:flutter_chanhyuk_talk/controllers/user_controller.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _email = "";
  String _password = "";

  void onClickLoginHandler(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      FocusScope.of(context).unfocus();
      _formKey.currentState!.save();

      if (await UserController.to
          .loginUser(email: _email, password: _password)) {
        Future.delayed(
            const Duration(seconds: 1), () => Get.offAllNamed("/main"));
      } else {
        Get.dialog(Dialog(
          child: Container(
            width: double.infinity,
            alignment: Alignment.center,
            height: 100,
            child: const Text("로그인을 실패했습니다."),
          ),
        ));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("로그인"),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              FormItem(
                  title: "이메일",
                  onSaved: (String? s) {
                    _email = s!;
                  }),
              const SizedBox(
                height: 10,
              ),
              FormItem(
                title: "비밀번호",
                onSaved: (String? s) {
                  _password = s!;
                },
                isPassword: true,
              ),
              Center(
                child: TextButton(
                  onPressed: () => onClickLoginHandler(context),
                  child: const Text("로그인"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
