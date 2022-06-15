import 'package:flutter/material.dart';
import 'package:mceapp/Iletisim.dart';
import 'package:mceapp/NavBar.dart';
class Tshirt extends StatefulWidget {
  const Tshirt({Key? key}) : super(key: key);

  @override
  State<Tshirt> createState() => _TshirtState();
}

class _TshirtState extends State<Tshirt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF5b3e9e),
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Color(0xFF1f1536),
        title: Text(
            'mcegraphic',
            style: TextStyle (
              color: Color(0xFFa023f1),
            )
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Container (

              decoration: BoxDecoration(
                color: Color(0xFF1f1536),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadiusDirectional.circular(20.0),
              ),
              alignment: Alignment.topRight,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(5),
              child: Image(image: AssetImage('assets/images/okaliptus.jpg'),),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(14),
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Color(0xFF1f1536),
                borderRadius: BorderRadiusDirectional.circular(20.0),
              ),
              child: Column(
                children: [

                  Text('Okaliptus Streetwear Collection !\nSıradanlıktan hoşlanmayan, estetik kaygısı olan ve sanatsever bir kitleye hitap eder. %100 pamuklu, rahat ve kaliteli kumaştan üretilen tişörtlerimize sahip olmak isterseniz bize ulaşmanız yeterli.',
                    style:TextStyle(
                      color:Color(0xFFa023f1),
                      fontSize:15,
                    ),
                  ),
                ],

              ),
            ),
            Container(
              width: 160,
              margin: EdgeInsets.symmetric(horizontal: 50,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Color(0xFF1f1536),
                borderRadius: BorderRadiusDirectional.circular(20.0),
              ),
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Icon(Icons.call,
                    color: Color(0xFFa023f1),

                  ),
                  SizedBox(
                    width: 10,
                  ),
                  TextButton(
                    child: Text('İletişim' ,
                      style:TextStyle(
                        color:Color(0xFFa023f1),
                        fontSize:20,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Iletisim()),
                      );
                    },
                  ),

                ],
              ),
            ),

          ],
        ),

      ),
    );
  }
}
