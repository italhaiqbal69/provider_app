import 'package:flutter/material.dart';
import 'package:my_app/home_screen.dart';
import 'package:my_app/provider/favourite_provider.dart';
import 'package:provider/provider.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    final favProvider = Provider.of<FavouriteProvider>(context);
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cart()));
              },
              child: Icon(Icons.shopping_cart)),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 100,
                itemBuilder: (ctx, index) {
                  return InkWell(
                    onTap: () {
                      favProvider.favourites.contains(index)
                          ? favProvider.removeItem(index)
                          : favProvider.addItem(index);
                    },
                    child: Consumer<FavouriteProvider>(
                      builder: (context, vm, child) {
                        return ListTile(
                          title: Text('item' + index.toString()),
                          trailing: vm.favourites.contains(index)
                              ? Icon(Icons.favorite)
                              : Icon(Icons.favorite_outline),
                        );
                      },
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
