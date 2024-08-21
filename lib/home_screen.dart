import 'package:flutter/material.dart';
import 'package:my_app/provider/favourite_provider.dart';
import 'package:provider/provider.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    final obj=Provider.of<FavouriteProvider>(context);
    return  Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: obj.favourites.length,
                itemBuilder:(ctx,index){
                  return ListTile(
                    title: Text('item'+index.toString()),
                  );
                } ),
          )
        ],
      ),

    );
  }
}
