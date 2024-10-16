import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:khata_books/pages/models/product.dart';

class Itemwidgets extends StatelessWidget {
  final Item item;

  const Itemwidgets({Key? key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      child: ListTile(
        leading: CircleAvatar(
          child: Text(item.icon),
        ),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Column(
          children: [
            Text(
              "\$${item.price}",
              textScaleFactor: 1.5,
              style: TextStyle(color: Colors.red),
            ),
            Text(
              item.desc2,
              style: TextStyle(color: Colors.blue),
            )
          ],
        ),
      ),
    );
  }
}
