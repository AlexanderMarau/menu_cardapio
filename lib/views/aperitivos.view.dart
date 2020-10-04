import 'package:flutter/material.dart';

class AperitivosView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                'Aperitivos',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.food_bank,
                    size: 28,
                  ),
                  tileColor: Colors.grey[300],
                  title: Text('Batatas'),
                  subtitle: Text('R\$ 9,50'),
                  trailing: Icon(Icons.add_shopping_cart_outlined),
                ),
                ListTile(
                  leading: Icon(
                    Icons.food_bank,
                    size: 28,
                  ),
                  tileColor: Colors.grey[300],
                  title: Text('Batatas'),
                  subtitle: Text('R\$ 9,50'),
                  trailing: Icon(Icons.add_shopping_cart_outlined),
                ),
                ListTile(
                  leading: Icon(
                    Icons.food_bank,
                    size: 28,
                  ),
                  tileColor: Colors.grey[300],
                  title: Text('Batatas'),
                  subtitle: Text('R\$ 9,50'),
                  trailing: Icon(Icons.add_shopping_cart_outlined),
                ),
                ListTile(
                  leading: Icon(
                    Icons.food_bank,
                    size: 28,
                  ),
                  tileColor: Colors.grey[300],
                  title: Text('Batatas'),
                  subtitle: Text('R\$ 9,50'),
                  trailing: Icon(Icons.add_shopping_cart_outlined),
                ),
                ListTile(
                  leading: Icon(
                    Icons.food_bank,
                    size: 28,
                  ),
                  tileColor: Colors.grey[300],
                  title: Text('Batatas'),
                  subtitle: Text('R\$ 9,50'),
                  trailing: Icon(Icons.add_shopping_cart_outlined),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
