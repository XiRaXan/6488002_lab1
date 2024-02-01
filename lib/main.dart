import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Product layout demo home page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Product Listing")),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          children: <Widget>[
            ProductBox(
                name: "NIKE",
                description: "nike shirt with three swoosh",
                price: 3000,
                image: "shirt2.jpeg"),
            ProductBox(
                name: "Versace",
                description: "versace shirt",
                price: 5000,
                image: "shirt1.jpeg"),
            ProductBox(
                name: "Gucci",
                description: "gucci shirt",
                price: 4000,
                image: "shirt.jpeg"),
            ProductBoxURL(
                name: "Celine",
                description: "Celine shirt",
                price: 6000,
                image: "https://lh3.googleusercontent.com/proxy/EyD6maa6r7HuiYd5SXSPZpHRfyn_nbWCazAKemM3zN7HYFzKJwEGWtY9WKUE-eEAsq-wZgFk_iQhIPZUipdIM_8i9UMaoFrhEaejAWKe75vDbgMVKo0Nte-W"),
            ProductBoxURL(
                name: "Prada",
                description: "prada shirt",
                price: 3000,
                image: "https://d2cva83hdk3bwc.cloudfront.net/prada-logo-cotton-t-shirt-navy-white-1.jpg"),
            ProductBoxURL(
                name: "Essential",
                description: "Essential shirt",
                price: 2000,
                image:
                    "https://m.media-amazon.com/images/I/41snP2PuanL._AC_UF1000,1000_QL80_.jpg"),
          ],
        ));
  }
}

class ProductBox extends StatelessWidget {
  ProductBox(
      {Key? key,
      required this.name,
      required this.description,
      required this.price,
      required this.image})
      : super(key: key);
  final String name;
  final String description;
  final int price;
  final String image;
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 120,
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Image.asset("assets/" + image),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(this.name,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(this.description),
                          Text("Price: " + this.price.toString()),
                        ],
                      )))
            ])));
  }
}

class ProductBoxURL extends StatelessWidget {
  ProductBoxURL(
      {Key? key,
      required this.name,
      required this.description,
      required this.price,
      required this.image})
      : super(key: key);
  final String name;
  final String description;
  final int price;
  final String image;
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 120,
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Image.network(image),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(this.name,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(this.description),
                          Text("Price: " + this.price.toString()),
                        ],
                      )))
            ])));
  }
}