import 'package:flutter/material.dart';

class PointsCounter extends StatefulWidget {
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamApoints=0;

  int teamBpoint=0;

  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text('Points Counter'),
      backgroundColor: Colors.orange


      ),
body: Column(
  children: [
        Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
            Container(
              height: 500,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
                      Text('Team A',style: TextStyle(fontSize: 34)),
                      Text('$teamApoints',style: TextStyle(fontSize: 150)),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
        primary:Colors.orange,
                            minimumSize: Size(150, 50),
                          ),
                          onPressed: (){

setState(() {
  teamApoints++;
});
                          }, child: Text('Add 1 Point',style:TextStyle(fontSize: 18,color: Colors.black))
                  ),

                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary:Colors.orange,
                            minimumSize: Size(150, 50),
                          ),
                          onPressed: (){

setState(() {
  teamApoints+=2;
});
                          }, child: Text('Add 2 Point',style:TextStyle(fontSize: 18,color: Colors.black))
                      ),

                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary:Colors.orange,
                            minimumSize: Size(150, 50),
                          ),
                          onPressed: (){

                         setState(() {
                           teamApoints+=3;
                         });
                          }, child: Text('Add 3 Point',style:TextStyle(fontSize: 18,color: Colors.black))
                      ),
                ],
              ),
            ),
      Container(
        height: 500,
          child: VerticalDivider(
            indent: 50,
            endIndent: 50
            ,
            color: Colors.grey,thickness: 1,
          ),
        ),
        Container(
          height: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Team B',style: TextStyle(fontSize: 34)),
              Text('$teamBpoint',style: TextStyle(fontSize: 150)),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary:Colors.orange,
                    minimumSize: Size(150, 50),
                  ),
                  onPressed: (
                      ){

                    setState(() {
                      teamBpoint++;
                    });
                  }, child: Text('Add 1 Point',style:TextStyle(fontSize: 18,color: Colors.black))
              ),

              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary:Colors.orange,
                    minimumSize: Size(150, 50),
                  ),
                  onPressed: (){

                    setState(() {
                      teamBpoint=teamBpoint+2;
                    });
                  }, child: Text('Add 2 Point',style:TextStyle(fontSize: 18,color: Colors.black))
              ),

              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary:Colors.orange,
                    minimumSize: Size(150, 50),
                  ),
                  onPressed: (){

                    setState(() {
                      teamBpoint+=3;
                    });
                  }, child: Text('Add 3 Point',style:TextStyle(fontSize: 18,color: Colors.black))
              ),

            ],
          ),
        ),
      ],
    ),
    ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding:EdgeInsets.all(8),
          primary:Colors.orange,
          minimumSize: Size(150, 50),
        ),
        onPressed: (){
          setState(() {

            teamBpoint=0;
            teamApoints=0;
          });
        }, child: Text('Reset',style:TextStyle(fontSize: 18,color: Colors.black))
    ),
  ],
)
    ),
    );
  }
}
