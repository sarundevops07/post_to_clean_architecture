import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'package:postblocapp/application/core/services/theme_service.dart';
import 'package:postblocapp/application/features/posts/bloc/posts_bloc.dart';




// class PostWrapper extends StatelessWidget {
//   const PostWrapper({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => getIt<PostsBloc>(),
//       child: const PostPage(),
//     );
//   }
// }

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  void initState() {
    BlocProvider.of<PostsBloc>(context).add(const GetPostFromDataSource());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final themedata = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "PostApp using Bloc",
          style: themedata.textTheme.titleMedium,
        ),
        actions: [
          Switch(
              activeColor: Colors.green,
              trackOutlineColor: MaterialStateProperty.all(Colors.transparent),
              value: Provider.of<ThemeServiceProvider>(context).isDarkModeOn,
              inactiveTrackColor: Colors.blueGrey,
              inactiveThumbColor: Colors.black87,
              onChanged: (_) {
                Provider.of<ThemeServiceProvider>(context, listen: false)
                    .toggleTheme();
              }),
          IconButton(
              onPressed: () {
                BlocProvider.of<PostsBloc>(context)
                    .add(const GetPostFromDataSource());
              },
              icon: const Icon(Icons.refresh))
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "All Posts",
              style: themedata.textTheme.displayLarge,
            ),
            Expanded(
              child: BlocBuilder<PostsBloc, PostsState>(
                builder: (context, state) {
                  if (state.isLoading) {
                    return const Center(
                      child: CircularProgressIndicator(color: Colors.pink),
                    );
                  } else if (state.isError) {
                    return const Text("Posts are waititng to be loaded");
                  } else if (state.posts.isEmpty) {
                    return const Text("No Data");
                  }

                  return ListView.builder(
                    itemBuilder: (context, index) {
                      final posts = state.posts;
                      final post = posts[index];
                      return Card(
                        child: ListTile(
                          leading: CircleAvatar(
                            child: Center(
                              child: Text("${index + 1}"),
                            ),
                          ),
                          title: Text(post.title),
                          subtitle: Text(post.body),
                        ),
                      );
                    },
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
