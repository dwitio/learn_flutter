import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'product_card.dart';

void main() => runApp(MainProductCard());

class MainProductCard extends StatelessWidget {
  const MainProductCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: firstColor,
        ),
        body: ChangeNotifierProvider<ProductState>(
          create: (context) => ProductState(),
          child: Container(
            margin: EdgeInsets.all(20),
            child: Align(
              alignment: Alignment.topCenter,
              child: Consumer<ProductState>(
                builder: (context, productState, _) => ProductCard(
                  imageURL:
                        "https://images-gmi-pmc.edge-generalmills.com/51a73941-61c0-4c35-a1fb-de0be46ca8bd.jpg",
                  name: "Buah Mix 1 kg",
                  price: "Rp25.000",
                  quantity: productState.quantity,
                  notification: (productState.quantity > 5) ? "Diskon 10%" : null,
                  onAddCartTap: () {},
                  onIncTap: () {
                    productState.quantity++;
                  },
                  onDecTap: () {
                    productState.quantity--;
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ProductState with ChangeNotifier{
  int _quantity = 0;

  int get quantity => _quantity;
  set quantity(int newValue){
    _quantity = newValue;
    notifyListeners();
  }
}