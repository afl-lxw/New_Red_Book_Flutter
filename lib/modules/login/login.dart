import 'package:flutter/material.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  @override
  Widget build(BuildContext context) {
    // 使用堆叠布局
    return Column(
      children: [
        // 顶部图片
        Image.asset(
          'assets/images/login/login_bg.png',
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 2.5,
          fit: BoxFit.cover,
        ),
        // 登录表单
        Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              // 用户名输入框
              TextField(
                decoration: const InputDecoration(
                  labelText: '用户名',
                  hintText: '请输入用户名',
                ),
              ),
              // 密码输入框
              TextField(
                decoration: const InputDecoration(
                  labelText: '密码',
                  hintText: '请输入密码',
                ),
              ),
              // 登录按钮
              Container(
                margin: const EdgeInsets.only(top: 20),
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('登录'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
