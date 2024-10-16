class PayModel {
  static List<Item> items = [];
}

class Item {
  final String icon;
  final int id;
  final String name;
  final String desc;
  final num price;
  final String desc2;

  Item({
    required this.icon,
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.desc2,
  });

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      icon: map["icon"],
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      desc2: map["desc2"],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "icon": icon,
      "id": id,
      "name": name,
      "desc": desc,
      "price": price,
      "desc2": desc2,
    };
  }
}
