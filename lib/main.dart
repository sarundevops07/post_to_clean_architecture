import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:postblocapp/application/core/services/theme_service.dart';
import 'package:postblocapp/application/features/login/bloc/login_bloc.dart';
import 'package:postblocapp/application/features/login/login_screen.dart';
import 'package:postblocapp/application/features/posts/bloc/posts_bloc.dart';
import 'package:postblocapp/application/features/posts/posts_page.dart';
import 'package:postblocapp/application/features/products/bloc/products_bloc.dart';
import 'package:postblocapp/dependency_injectioin/injectable.dart';
import 'package:postblocapp/theme.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeServiceProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeServiceProvider>(
        builder: (context, themeService, child) {
      return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (ctx) => LoginBloc(),
          ),
          BlocProvider(
            create: (ctx) => ProductsBloc(),
          ),
          BlocProvider(
            create: (ctx) => getIt<PostsBloc>(),
          ),
        ],
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            themeMode:
                themeService.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            home: const PostPage()),
      );
    });
  }
}
