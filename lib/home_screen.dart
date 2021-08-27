import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: Icon(
          Icons.menu,
        ),
        title: Text(
          'First App',
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.notification_important,
            ),
            onPressed: () {
              print('notiification clicked');
            },
          ),
          IconButton(
              icon: Icon(
                Icons.search,
              ),
              onPressed: () {
                print('search clicked');
              })
        ],
      ),
      body:Column(
        children: [
          Container(
            width: 200.0,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0,
                  )
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Stack(
                alignment: Alignment.bottomCenter,
                  children: [
                    Image(
                        image: NetworkImage(
                          'https://ohanaflowers.com/pub/media/wysiwyg/banner4.png'
                        ),
                        width: 200.0,
                        height: 200.0,
                        fit: BoxFit.cover,
                    ),
                    Container(
                      width: double.infinity,
                      color: Colors.black.withOpacity(.7),
                      padding: const EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 10.0,
                      ),
                      child: Text(
                          'Flower',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
