import 'package:flutter/material.dart';

class LanchesView extends StatelessWidget {
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
                'Lanches',
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
                    Icons.lunch_dining,
                    size: 28,
                  ),
                  tileColor: Colors.grey[300],
                  title: Text('X-Burger'),
                  subtitle: Text('R\$ 10,00'),
                  trailing: Icon(Icons.add_shopping_cart_outlined),
                ),
                ListTile(
                  leading: Icon(
                    Icons.lunch_dining,
                    size: 28,
                  ),
                  tileColor: Colors.grey[300],
                  title: Text('X-Burger'),
                  subtitle: Text('R\$ 10,00'),
                  trailing: Icon(Icons.add_shopping_cart_outlined),
                ),
                ListTile(
                  leading: Icon(
                    Icons.lunch_dining,
                    size: 28,
                  ),
                  tileColor: Colors.grey[300],
                  title: Text('X-Burger'),
                  subtitle: Text('R\$ 10,00'),
                  trailing: Icon(Icons.add_shopping_cart_outlined),
                ),
                ListTile(
                  leading: Icon(
                    Icons.lunch_dining,
                    size: 28,
                  ),
                  tileColor: Colors.grey[300],
                  title: Text('X-Burger'),
                  subtitle: Text('R\$ 10,00'),
                  trailing: Icon(Icons.add_shopping_cart_outlined),
                ),
                ListTile(
                  leading: Icon(
                    Icons.lunch_dining,
                    size: 28,
                  ),
                  tileColor: Colors.grey[300],
                  title: Text('X-Burger'),
                  subtitle: Text('R\$ 10,00'),
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
