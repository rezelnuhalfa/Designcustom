import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/profile.dart';
import 'profile.dart'; 

class InstagramHome extends StatelessWidget {
  final List<String> storyImages = [
    'assets/bellingham.jpg',
    'assets/mbappe.jpg',
    'assets/puan.jpg',
    'assets/seto.jpg',
    'assets/costa.jpg',
  ];

  final List<String> storyNames = [
    'Jude Bellingham',
    'Kylian Mbappe',
    'Puan Maharani',
    'Kak Seto',
    'Diego Costa',
  ];

  final List<String> postImages = [
    'assets/JudeBellingham.jpg',
    'assets/kylian.jpg',
    'assets/pedei.png',
    'assets/kakseto.jpg',
    'assets/costa.jpg',
  ];

  final List<String> userNames = [
    'Jude Bellingham',
    'Kylian Mbappe',
    'Puan Maharani',
    'Kak Seto',
    'Diego Costa',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Instagram',
          style: TextStyle(
            fontSize: 32,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite_border, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.send, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 120,
            margin: EdgeInsets.only(top: 10, bottom: 10),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(
                storyImages.length,
                (index) => storyItem(index),
              ),
            ),
          ),
          Column(
            children: List.generate(
              postImages.length,
              (index) => postItem(index),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          if (index == 4) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => InstagramProfile()),
            );
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
      ),
    );
  }

  Widget storyItem(int index) {
    return Container(
      width: 80,
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(storyImages[index]),
          ),
          SizedBox(height: 5),
          Text(
            storyNames[index],
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  Widget postItem(int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(storyImages[index]),
          ),
          title: Text(userNames[index]),
          subtitle: Text('Malang'),
          trailing: Icon(Icons.more_vert),
        ),
        Image(
          image: AssetImage(postImages[index]),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite_border),
                  SizedBox(width: 15),
                  Icon(Icons.comment),
                  SizedBox(width: 15),
                  Icon(Icons.send),
                ],
              ),
              Icon(Icons.bookmark_border),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            'Liked by rezelelfachri and others',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          child: Text('Like And follow guys'),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            'View all comments',
            style: TextStyle(fontSize: 10),
          ),
        ),
      ],
    );
  }
}
