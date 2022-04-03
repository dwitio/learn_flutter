import 'package:belajar_flutter/cart.dart';
import 'package:belajar_flutter/money.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MultiProviderWidget extends StatelessWidget {
  const MultiProviderWidget({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Money>(create: (_) => Money()),
        ChangeNotifierProvider<Cart>(create: (_) => Cart())
      ],
      child: Scaffold(
        floatingActionButton: Consumer<Money>(
          builder: (context, money, child) => Consumer<Cart>(
            builder: (context, cart, child) => FloatingActionButton(
              onPressed: () {
                if (money.balance >= 500) {
                  cart.quantity += 1;
                  money.balance -= 500;
                }
              },
              child: const Icon(Icons.add_shopping_cart),
              backgroundColor: Colors.purple,
            ),
          ),
        ),
        appBar: AppBar(
          title: const Text('Multi Provider'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Balance'),
                  Container(
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: Consumer<Money>(
                          builder: (context, value, child) => Text(
                            value.balance.toString(),
                            style: const TextStyle(
                                color: Colors.purple, fontWeight: FontWeight.w700),
                          ),
                        )),
                    height: 30,
                    width: 150,
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.purple[100],
                        border: Border.all(color: Colors.purple, width: 2)),
                  )
                ],
              ),
              Container(
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Consumer<Cart>(
                      builder: (context, value, child) => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Apple (500) x ' + value.quantity.toString(),
                            style: const TextStyle(
                                color: Colors.black, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            (500 * value.quantity).toString(),
                            style: const TextStyle(
                                color: Colors.black, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    )),
                height: 30,
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.black, width: 2)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
