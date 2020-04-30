import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(home: Home(),));
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: <Widget>[
        Container(
          height: 150,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Row(
            children: <Widget>[
              Expanded(child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          colors: [
                            Color(0xff3399ff),
                            Color(0xff33ccff)
                          ]
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Column(
                      children: <Widget>[
                        Expanded(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('images/sheetpaper.png'),
                        )),
                        Text('create', style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),),
                        Text('template', style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),)
                      ],
                    ),
                  ),
                ),
              )),
              Expanded(child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          colors: [
                            Color(0xff33ccff),
                            Color(0xff3399ff)

                          ]
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Column(
                      children: <Widget>[
                        Expanded(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('images/icon2.png'),
                        )),
                        Text('create', style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),),
                        Text('message', style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),)
                      ],
                    ),
                  ),
                ),
              )),

            ],
          ),
        ),
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
                    title: Text('Sunday Church', style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),),
                    trailing: Icon(Icons.edit),
                    subtitle: Text('Group(1) 90%', style: TextStyle(color: Colors.black38),),
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
