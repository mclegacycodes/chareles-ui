import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp());
class Messages extends StatefulWidget {
  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Flexible(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListView.builder(
              padding: EdgeInsets.all(5),
              itemBuilder: (context,i){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    onTap: (){},
                    title: Text('Mr. Charles', style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),),
                    trailing: Icon(Icons.chat),
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('images/moesha.png'),
                    ),
                    subtitle: Text('Hello World, how are you...', style: TextStyle(color: Colors.black38),),
                  ),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
