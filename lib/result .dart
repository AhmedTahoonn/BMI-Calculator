import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
var valuew = 120.0;

var valueh = 120.0;
class result extends StatefulWidget {
  final String ismale;
  final String name;
  result({
    required this.ismale,
    required this.name,
  });
  @override
  State<result> createState() => _resultState();
}

class _resultState extends State<result> {

  double bmii=Rato(valuew, valueh);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment:Alignment.center,
        children: [
          Column(
            children: [
              Expanded(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      color: Colors.white,
                    ),
                    Container( width: 150,
                      height: 240,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:  AssetImage('assets/images/${image(bmii.toDouble(),widget.ismale )}.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  color: color(bmii.toDouble()),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 75),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                              'Hi,  '+
                              widget.name,
                            style: TextStyle(
                              fontStyle: FontStyle.italic,

                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black
                            ),
                            textAlign:TextAlign.start ,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Weight',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            Text(
                              '${valuew.round()}',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            Text(
                              'Kg',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.italic,                              ),
                            ),
                          ],
                        ),
                        Slider(
                          value: valuew,
                          max: 160,
                          min: 30,
                          thumbColor: Colors.white,
                          inactiveColor: Colors.grey,
                          activeColor: Colors.grey,
                          onChanged: (value) {
                            setState(() {
                              valuew = value;
                               bmii=Rato(valuew, valueh);

                            });
                          },
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'height',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.italic,                              ),
                            ),
                            Text(
                              '${valueh.round()}',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.italic,                              ),
                            ),
                            Text(
                              'cm',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.italic,                              ),
                            ),
                          ],
                        ),
                        Slider(
                            value: valueh,
                            max: 220,
                            min: 80,
                            thumbColor: Colors.white,
                            inactiveColor: Colors.grey,
                            activeColor: Colors.grey,
                            onChanged: (value) {

                                setState(() {
                                  valueh = value;
                                   bmii=Rato(valuew, valueh);

                                });

                            }),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          CircleAvatar(
            radius: 75.0,
            backgroundColor: Colors.white,
          ),
          CircleAvatar(
            radius: 60.0,
            backgroundColor: Colors.grey[300],
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children:
              [
                Text('Ratio',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.italic,
                ),
                ),
                Text( '${bmii.round()}',

                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic,


                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
double Rato(valuew,valueh)=>valuew/((valueh/100.0)*(valueh/100.0));
Color color(rato){
  if(rato<18.5)
    return Color.fromRGBO(98, 201, 228, 1) ;
  else if(rato>=18.5&&rato<24.5)
    return Color.fromRGBO(160, 203,69, 1) ;
  else if(rato>=24.5&&rato<30)
    return Color.fromRGBO(239, 206, 80 ,1) ;
  else if(rato>=30&&rato<39.5)
    return Color.fromRGBO(219, 134, 53, 1) ;
  else if(rato>39.5&&rato<44.5)
    return Color.fromRGBO(216, 100, 46, 1) ;
  else
    return Color.fromRGBO(186, 68, 65, 1) ;
}
String image(rato,gander){
  if(rato<18.5)
    return '${gander}1';
  else if(rato>=18.5&&rato<24.5)
    return '${gander}2';
  else if(rato>=24.5&&rato<30)
    return '${gander}3';
  else if(rato>=30&&rato<39.5)
    return '${gander}4';
  else if(rato>=40&&rato<44.5)
    return '${gander}5';
  else
    return '${gander}6';
}

