import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("登录页"),
        ),
        body: const Padding(
          padding: EdgeInsets.all(18),
          child: Column(
            children: [
              Center(child: Image(image: AssetImage("images/test.jpeg"))),
              SwitchTest(),
            ],
          ),
        ));
  }
}

class SwitchTest extends StatefulWidget {
  const SwitchTest({super.key});

  @override
  State<StatefulWidget> createState() => SwitchTestState();
}

class SwitchTestState extends State<SwitchTest> {
  final GlobalKey _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  labelText: '用户名',
                  hintText: '您的用户名',
                  prefixIcon: Icon(Icons.person)),
              validator: (v) {
                return v!.trim().isNotEmpty ? null : '请输入用户名';
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: '密码',
                  hintText: '请输入密码',
                  prefixIcon: Icon(Icons.password)),
              obscureText: true,
              validator: (v) {
                return v!.trim().length > 5 ? null : "密码不能少于6位";
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                          if ((_formKey.currentState as FormState).validate()) {
                            //验证通过提交数据
                          }
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text("提交"),
                        )),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
