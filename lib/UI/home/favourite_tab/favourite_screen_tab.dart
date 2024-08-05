import 'package:flutter/material.dart';
import 'package:untitled/UI/components/item_caffee/item_caffee.dart';

class FavouriteScreenTab extends StatelessWidget {
  static   List<ItemCaffe> favourites = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffC29377),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Favourite',
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: favourites.length,
              itemBuilder: (context, index) {
                return favourites[index];
              },
            ),
          ),
        ],
      ),
    );
  }
}
