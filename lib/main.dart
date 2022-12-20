import 'package:flutter/material.dart';
import 'package:stacked_card_carousel/stacked_card_carousel.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Stacked card carousel'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key, required this.title});
  final String title;

  final List<Widget> fancyCards = <Widget>[
    FancyCard(
      image: Image.network("https://images.pexels.com/photos/1037992/pexels-photo-1037992.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
      title: "Say hello to planets!",
    ),
    FancyCard(
      image: Image.network("https://images.pexels.com/photos/1762851/pexels-photo-1762851.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1g"),
      title: "Don't be sad!",
    ),
    FancyCard(
      image: Image.network("https://images.pexels.com/photos/1069798/pexels-photo-1069798.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
      title: "Go for a walk!",
    ),
    FancyCard(
      image: Image.network("https://images.pexels.com/photos/754898/pexels-photo-754898.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
      title: "Try teleportation!",
    ),
    FancyCard(
      image: Image.network("https://images.pexels.com/photos/358904/pexels-photo-358904.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
      title: "Enjoy Life",
    ),
    FancyCard(
      image: Image.network("https://images.pexels.com/photos/733853/pexels-photo-733853.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
      title: "Play with your cat!",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title,style: TextStyle(fontSize: 15),),
      ),
      body: StackedCardCarousel(
        items: fancyCards,
      ),
    );
  }
}

class FancyCard extends StatelessWidget {
  const FancyCard({
    super.key,
    required this.image,
    required this.title,
  });

  final Image image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Container(
              width: 250,
              height: 250,
              child: image,
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.headline5,
            ),
            OutlinedButton(
              child: const Text("Learn more"),
              onPressed: () => print("Button was tapped"),
            ),
          ],
        ),
      ),
    );
  }
}