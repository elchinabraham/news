import 'package:flutter/material.dart';
import 'package:news/models/utils.dart';

class CategoryItem extends StatelessWidget {
  String title;
  String id;
  String imageUrl;

  CategoryItem(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushReplacementNamed(
          '/',
          arguments: {
            'categoryId': id,
          },
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0),
        ),
        color: Utils.mainColor,
        elevation: 10,
        child: Container(
          width: 150,
          height: 150,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(
                imageUrl,
                width: 50,
                height: 50,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Utils.textColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
