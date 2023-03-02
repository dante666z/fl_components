import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            imageUrl:
                'https://photographylife.com/wp-content/uploads/2017/01/What-is-landscape-photography.jpg',
          ),
          SizedBox(
            height: 20,
          ),
          CustomCardType2(
            imageUrl:
                'https://www.mickeyshannon.com/photos/landscape-photography.jpg',
            name: 'Otro hermoso paisaje',
          ),
          SizedBox(
            height: 20,
          ),
          CustomCardType2(
            imageUrl: 'https://i.ytimg.com/vi/c7oV1T2j5mc/maxresdefault.jpg',
            name: 'Un Hermosos paisaje',
          ),
          SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
