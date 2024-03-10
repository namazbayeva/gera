import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
class SecondPage extends StatefulWidget {
  const SecondPage ({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  List products = ['Қазақ тілі', 'Әдебиет', 'Алгебра', 'Геометрия', 'Тарих', 'Биология'];
  @override
  Widget build (BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('${products[index]}'),
              trailing: ConstrainedBox(
                constraints: const BoxConstraints(
                  minWidth: 44,
                  minHeight: 44,
                  maxHeight: 64,
                  maxWidth: 64,
                ),
                child: LikeButton(
                  size: 20,
                  circleColor: const CircleColor(
                    start: Colors.pink, end: Colors.pink),
                  bubblesColor: const BubblesColor(
                    dotPrimaryColor: Colors.pink,
                    dotSecondaryColor: Colors.pink,
                  ) ,
                  likeBuilder: (bool isLiked) {
                    return Icon(
                      Icons.favorite,
                      color: isLiked ? Colors.red : Colors.grey,
                      size: 20,
                    );
                  },
                  likeCount: 0,
                ),
              ),
            );
          }
        )
      ),
    );
  }
}