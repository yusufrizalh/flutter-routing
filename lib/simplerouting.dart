import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Home'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Route route =
                  MaterialPageRoute(builder: (context) => AboutPage());
              Navigator.push(context, route);
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
          title: Text('Halaman About'),
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
                    Route route =
                        MaterialPageRoute(builder: (context) => GalleryPage());
                    Navigator.push(context, route);
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
