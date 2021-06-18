import 'package:flutter/material.dart';
import 'package:magazine_luiza/model/item.dart';
import 'package:magazine_luiza/provider/items.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final bgColor = const Color(0xFFFFFFFF);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: Text("Ofertas do Dia"),
        leading: Image.asset(
          "assets/images/logo.jpg",
        ),
      ),
      body: ListView.builder(
        itemBuilder: builder,
        itemCount: listItems.length,
      ),
    );
  }

  Widget builder(BuildContext context, int index) {
    Item item = listItems.elementAt(index);
    return ListTile(
      title: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Row(
            children: [
              Image.asset(
                item.photo,
                width: 80,
                height: 80,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name,
                    style: TextStyle(
                      fontSize: 8,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    item.description,
                    style: TextStyle(
                      fontSize: 8,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    item.price,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    item.parcel,
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.blueAccent,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      trailing: IconButton(
        icon: Icon(
          (item.favorite) ? Icons.favorite : Icons.favorite_border,
          color: Colors.pinkAccent,
          size: 20,
        ),
        onPressed: () {
          setState(() {
            item.favorite = !item.favorite;
          });
        },
      ),
    );
  }
}
