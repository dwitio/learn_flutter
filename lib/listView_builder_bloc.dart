import 'dart:math';
import 'package:belajar_flutter/product_card/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(ListViewBuilderBloc());

class ListViewBuilderBloc extends StatelessWidget {
  const ListViewBuilderBloc({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => ProductBloc(Product as List),
        child: MainPages(),
      ),
    );
  }
}

class MainPages extends StatelessWidget {
  MainPages({Key key}) : super(key: key);

  final Random r = Random();

  @override
  Widget build(BuildContext context) {
    ProductBloc bloc = BlocProvider.of<ProductBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Demo ListView Builder"),
      ),
      body: Column(
        children: [
          RaisedButton(onPressed: () {
            bloc.add(r.nextInt(4) + 2);
          }),
          BlocBuilder<ProductBloc, List<Product>>(
            builder: (context, products) => Expanded(
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return ProductCard(
                      imageURL: products[index].imageURL,
                      name: products[index].name,
                      price: products[index].price.toString(),
                      onAddCartTap: () {

                      },
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}

class Product {
  String imageURL;
  String name;
  int price;

  Product({this.imageURL = "", this.name = "", this.price = 0});
}

class ProductBloc extends Bloc<int, List<Product>> {
  ProductBloc(List<Product> initialState) : super(initialState);

  @override
  List<Product> get initialState => [];

  @override
  Stream<List<Product>> mapEventToState(int event) async* {
    List<Product> products = [];
    for (int i = 0; i < event; i++) {
      products.add(Product(
          imageURL: "https://images-gmi-pmc.edge-generalmills.com/51a73941-61c0-4c35-a1fb-de0be46ca8bd.jpg",
          name: "Produk " + i.toString(),
          price: (i + 1) * 5000
      ));
      yield products;
    }
  }
}
