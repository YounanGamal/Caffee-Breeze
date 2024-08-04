import 'package:flutter/material.dart';
import 'package:untitled/UI/components/item_caffee/item_caffee.dart';

class CardScreenTab extends StatelessWidget {
  static   List<ItemCaffe> items = [];
  // ItemCaffe itemCaffe;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffC29377),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Card',
          style: TextStyle(
              fontSize: 30,
              // color: Color(0xff552F22),
              color: Colors.black),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 325,
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return items[index];
              },
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Cart',
                    style: TextStyle(fontSize: 25),
                  ),
                  Text(
                    '25\$',
                    style: TextStyle(fontSize: 25),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'discount',
                    style: TextStyle(fontSize: 25),
                  ),
                  Text(
                    '25\$',
                    style: TextStyle(fontSize: 25),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Total',
                    style: TextStyle(fontSize: 25),
                  ),
                  Text(
                    '25\$',
                    style: TextStyle(fontSize: 25),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 80,),
          Container(
            alignment: Alignment.center,
            height: 36,
            width: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
            color: const Color(0xff552F22),
            ),
            child: const Text('Check out',style: TextStyle(fontSize: 20,color: Colors.white),),
          )
        ],
      ),
    );
  }
}
