import 'package:flutter/material.dart';

void main() =>runApp(MyApp());
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Myhome();
  }
}


class Myhome extends State<MyApp>{
  var x='https://www.foottheball.com/wp-content/uploads/2018/01/messi-ronaldo-3.jpg';
  var isRonaldo=false;
  var isMessi=false;
  changeImage(){
   if(isMessi==true){
     setState(() {
       x='https://i.ytimg.com/vi/86b1wygMpyM/maxresdefault.jpg';
     });
   }
   if(isRonaldo==true){
     setState(() {
       x='https://i.pinimg.com/originals/66/86/a5/6686a57566f863a3ab5f76da8216d328.jpg';
     }
     );

   }


  }
  @override
  Widget build(BuildContext context) {
    changeImage();
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        title: Text(
          "Who is better?"
        ),
          backgroundColor: Colors.greenAccent,
        ),
        body:
            Center(
         child:
        Column(
            children: <Widget>[
              Image(
                image: NetworkImage('$x'),
              ),
              Row(
                children: <Widget>[
                  RaisedButton(
                    child: Text("MESSI"),
                    onPressed: () =>
                        setState((){
                          isMessi=!isMessi;
                          isRonaldo=false;
                        })
                  ),
                  RaisedButton(
                    child: Text("RONALDO"),
                    onPressed: () =>
                        setState((){
                          isRonaldo=!isRonaldo;
                          isMessi=false;
                        })
                  ),
                ],
                mainAxisAlignment:
                MainAxisAlignment.center
              ),
            ],
          ),
            ),





      )
    );
  }

}



