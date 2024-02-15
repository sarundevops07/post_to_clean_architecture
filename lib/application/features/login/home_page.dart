import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:postblocapp/application/features/login/bloc/login_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Page")),
      body: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          final user = state.user;
          if (user == null) {
            return const Center(child: Text("No user found"));
          } else if (state.isError) {
            const Center(
              child: Text("Error occured"),
            );
          } else if (state.isLoading) {
            const Center(
              child: CircularProgressIndicator(),
            );
          }
          final userName = user.firstName;
          return Center(child: Text(userName));
        },
      ),
    );
  }
}
