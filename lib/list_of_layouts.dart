import 'package:flutter/material.dart';

class ListOfLayouts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Layout"),
      ),
      body: ListView(
        children: <Widget>[
          Layout(
            title: "Flutter Layout Demo",
            subtitle: "my first layout",
            destination: "/flutter_layout_demo",
          ),
          Layout(
            title: "Profile Challenge",
            subtitle: "my second layout",
            destination: "/profile_challenge",
          ),
          Layout(
            title: "My Weather App",
            subtitle: "intense layouts one",
            destination: "/my_weather_app",
          ),
          Layout(
            title: "Minimal Shopping App",
            subtitle: "trying to spice it up, Devefy is really cool",
            destination: "/minimal_shopping_app",
          ),
          Layout(
            title: "Adidas Shoe Store Details",
            subtitle: "more from devefy",
            destination: "/adidas_shoe_detail",
          ),
          Layout(
            title: "Stadia App Concept",
            subtitle: "from Techie Blossom Channel",
            destination: "/stadia_app_concept",
          ),
        ],
      ),
    );
  }
}

class Layout extends StatelessWidget {
  final String title;
  final String subtitle;
  final String destination;

  const Layout(
      {@required this.title, @required this.subtitle, @required this.destination});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, destination),
      child: Card(
        child: ListTile(
          title: Text(title),
          subtitle: Text(subtitle),
        ),
      ),
    );
  }
}
