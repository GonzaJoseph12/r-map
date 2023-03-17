import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
        child: Padding(
          padding: const EdgeInsets.only(left: 15, top: 70),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(4.0),
                child: Icon(Icons.person, size: 25.0, color: const Color.fromRGBO(197, 223, 161, 1),),
              ),
              SizedBox(width: 4.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Juan Roberto",
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromRGBO(58, 90, 13, 1),
                      ),
                    ),
                    SizedBox(height: 4.0),
                    Text(
                      "juancito123@gmail.com",
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
          ),
          ListTile(
            title: Text('Item 1'),
            onTap: () {
              // Update the UI based on drawer item selected
            },
          ),
                Row(
                  children: [
                    Container(
                      width: 200,
                      height: 2,
                      margin: EdgeInsets.only(left: 40),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.grey,
                            width: 0.5,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),


          ListTile(
            title: Text('Item 2'),
            onTap: () {
              // Update the UI based on drawer item selected
            },
          ),
        ],
      ),
    );
  }
}

