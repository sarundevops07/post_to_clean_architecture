import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:postblocapp/application/features/products/bloc/products_bloc.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<ProductsBloc>().add(const ProductsEvent.getAllProducts());
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<ProductsBloc, ProductsState>(
        builder: (context, state) {
           final products = state.products;
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state.isError) {
            return const Center(
              child: Text("Error Occured"),
            );
          }
          if (products.isEmpty) {
            return const Center(
              child: Text("No Products to display"),
            );
          }

          return ListView.separated(
              itemBuilder: (context, index) {
               
                final product = products[index];
                final image = product.images[0];
                return ListTile(
                  title: Text(product.title),
                  subtitle: Text(product.description),
                  trailing: Text(product.price.toString()),
                  leading: CircleAvatar(backgroundImage: NetworkImage(image)),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(height: 8),
              itemCount:products.length );
        },
      ),
    );
  }
}
