import 'package:flutter/material.dart';
import 'package:flutter_chanhyuk_talk/components/register/form_item.dart';
import 'package:flutter_chanhyuk_talk/controllers/user_controller.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool phoneChecked = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _name = "";
  String _phone = "";
  String _email = "";
  String _password = "";

  void buttonPressed(BuildContext context) async {
    if (!phoneChecked) {
      Get.dialog(const Dialog(
        child: SizedBox(
          width: double.infinity,
          height: 60,
          child: Center(
            child: Text("휴대폰번호를 인증해주세요."),
          ),
        ),
      ));
      return;
    }

    if (_formKey.currentState!.validate()) {
      FocusScope.of(context).unfocus();
      // 값저장
      _formKey.currentState!.save();
      bool registered = await UserController.to.registerUser(
          name: _name, phone: _phone, email: _email, password: _password);

      if (registered) {
        Future.delayed(
            const Duration(seconds: 1), () => Get.offAllNamed("/main"));
      } else {
        Get.dialog(Dialog(
          child: Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 100,
            child: const Text('회원가입 실패'),
          ),
        ));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("회원가입")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              FormItem(
                  title: "닉네임",
                  onSaved: (String? s) {
                    _name = s!;
                  }),
              const SizedBox(height: 10),
              const Text("휴대폰번호"),
              Row(children: [
                Expanded(
                  child: TextFormField(
                    onSaved: (String? s) {
                      _phone = s!;
                    },
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return "휴대폰은 필수로 입력해주세요.";
                      }
                      return null;
                    },
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      // 추후 휴대폰 인증로직 추가
                      phoneChecked = true;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue),
                        borderRadius: BorderRadius.circular(6)),
                    child: const Text(
                      "인증하기",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                )
              ]),
              const SizedBox(
                height: 10,
              ),
              phoneChecked
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FormItem(
                            title: "인증번호",
                            onSaved: (String? s) {
                              print("인증번호 $s!");
                            }),
                        const SizedBox(
                          height: 10,
                        )
                      ],
                    )
                  : Container(),
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
                  onPressed: () => buttonPressed(context),
                  child: const Text("회원가입"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
