import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({this.title});

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            widget.title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Center(
          child: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.grey,
                child: Text(
                  'Logo',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                radius: 50,
              ),
              CitySelected(
                cityName: 'الرياض',
              ),
              CitySelected(
                cityName: 'مكة',
              ),
              CitySelected(
                cityName: 'المدينة المنورة',
              ),
              CitySelected(
                cityName: 'بريدة',
              ),
              CitySelected(
                cityName: 'تبوك',
              ),
              CitySelected(
                cityName: 'الدمام',
              ),
              CitySelected(
                cityName: 'الاحساء',
              ),
            ],
          ),
        ],
      )),
    );
  }
}

class CitySelected extends StatelessWidget {
  final String cityName;
  const CitySelected({
    Key key,
    this.cityName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: MediaQuery.of(context).size.width * .75,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(
            FontAwesomeIcons.check,
            color: Colors.red,
          ),
          Row(
            children: <Widget>[
              Text(
                cityName,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 15,
              ),
              CircleAvatar(
                backgroundColor: Colors.white70,
                child: Icon(
                  FontAwesomeIcons.mapMarkerAlt,
                  size: 30,
                  color: Colors.teal,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
