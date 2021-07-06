import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    // home: HomePage(),
    routes: <String, WidgetBuilder>{
      '/': (context) => HomePage(),
      '/about': (context) => AboutPage(),
      '/gallery': (context) => GalleryPage(),
    },
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/about');
            },
            child: Text('Tap ke About')),
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('About Page'),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Kembali ke Home')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/gallery');
                  },
                  child: Text('Tap ke Gallery')),
            ],
          ),
        ));
  }
}

class GalleryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Gallery'),
      ),
      body: Center(
        child: Text('Ini adalah halaman gallery'),
      ),
    );
  }
}
