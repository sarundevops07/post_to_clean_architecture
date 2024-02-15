import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:postblocapp/application/core/extensions/color_extension.dart';
import 'package:postblocapp/application/core/extensions/text_style_extension.dart';
import 'package:postblocapp/application/features/login/bloc/login_bloc.dart';
import 'package:postblocapp/application/features/login/home_page.dart';
import 'package:postblocapp/application/features/products/products_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(radius: 100),
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: TextFormField(
                  style: context.medium18!.tertiary(context),
                  controller: usernameController,
                  decoration: InputDecoration(
                    enabledBorder: buildOutlineInputBorder(context),
                    focusedBorder: buildOutlineInputBorder(context),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 25),
                    hintText: "Username",
                    hintStyle: context.regular18!.tertiaryDark(context),
                    filled: true,
                    fillColor: context.primaryDark,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: TextFormField(
                  style: context.medium18!.tertiary(context),
                  controller: passwordController,
                  decoration: InputDecoration(
                    enabledBorder: buildOutlineInputBorder(context),
                    focusedBorder: buildOutlineInputBorder(context),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 25),
                    hintText: "Password",
                    hintStyle: context.regular18!.tertiaryDark(context),
                    filled: true,
                    fillColor: context.primaryDark,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                  onPressed: () {
                    login(context, usernameController.text,
                        passwordController.text);
                  },
                  child: Text(
                    "Login",
                    style: context.medium18!.accent(context),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder(BuildContext ctx) {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(13),
      ),
    );
  }

  void login(BuildContext context, String userName, String password) {
    if (userName.isEmpty || password.isEmpty) {
      return;
    }
    context.read<LoginBloc>().add(LoginEvent.login(userName, password));
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => const ProductsScreen(),
    ));
  }
}
