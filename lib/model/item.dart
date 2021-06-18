class Item {
  final String photo;
  final String name;
  final String description;
  final String price;
  final String parcel;
  bool favorite;

  Item({
    required this.photo,
    required this.name,
    required this.description,
    required this.price,
    required this.parcel,
    this.favorite = false,
  });
}
