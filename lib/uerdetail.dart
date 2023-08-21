import 'package:flutter/material.dart';
import 'models/user.dart';


class UserDetail extends StatelessWidget{
  final User user;

  const UserDetail({Key? key, required this.user}) : super(key: key);

  Widget  phone(){
    return GestureDetector(
      child: Card(
        color: Colors.white,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        child: ListTile(
          leading: Icon(
            Icons.phone,
            color: Colors.teal,
          ),
          title: Text(
            user.phone,
            style: TextStyle(
                color: Colors.teal,
                fontSize: 20,
                fontFamily: "Source Sans Pro"),
          ),
        ),
      ),
    );
  }

  Widget  mail(){
    return GestureDetector(
      child: Card(
        color: Colors.white,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        child: ListTile(
          leading: Icon(
            Icons.mail,
            color: Colors.teal,
          ),
          title: Text(
            user.email,
            style: TextStyle(
                color: Colors.teal,
                fontSize: 20,
                fontFamily: "Source Sans Pro"),
          ),
        ),
      ),
    );
  }

  Widget  web(){
    return GestureDetector(
      child: Card(
        color: Colors.white,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        child: ListTile(
          leading: Icon(
            Icons.web,
            color: Colors.teal,
          ),
          title: Text(
            user.website,
            style: TextStyle(
                color: Colors.teal,
                fontSize: 20,
                fontFamily: "Source Sans Pro"),
          ),
        ),
      ),
    );
  }


  Widget  address(){
    return GestureDetector(
      child: Card(
        color: Colors.white,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        child: ListTile(
          leading: Icon(
            Icons.location_on,
            color: Colors.teal,
          ),
          subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "city: "+user.address.city,
              style: TextStyle(
                color: Colors.teal,
                fontSize: 16,
                fontFamily: "Source Sans Pro",
              ),
            ),
            Text(
              "street: "+user.address.street,
              style: TextStyle(
                color: Colors.teal,
                fontSize: 16,
                fontFamily: "Source Sans Pro",
              ),
            ),
            Text(
              "suite: "+user.address.suite,
              style: TextStyle(
                color: Colors.teal,
                fontSize: 16,
                fontFamily: "Source Sans Pro",
              ),
            ),
            Text(
              "zipcode: "+user.address.zipcode,
              style: TextStyle(
                color: Colors.teal,
                fontSize: 16,
                fontFamily: "Source Sans Pro",
              ),
            ),
            Text(
              "lat: "+user.address.geo.lat,
              style: TextStyle(
                color: Colors.teal,
                fontSize: 16,
                fontFamily: "Source Sans Pro",
              ),
            ),
            Text(
              "lng: "+user.address.geo.lng,
              style: TextStyle(
                color: Colors.teal,
                fontSize: 16,
                fontFamily: "Source Sans Pro",
              ),
            ),
          ],
        ),
        ),
      ),
    );
  }



    Widget  company(){
    return GestureDetector(
      child: Card(
        color: Colors.white,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        child: ListTile(
          leading: Icon(
            Icons.business,
            color: Colors.teal,
          ),
          title: Text(
            user.company.name,
            style: TextStyle(
              color: Colors.teal,
              fontSize: 20,
              fontFamily: "Source Sans Pro",
            ),
          ),
          subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              user.company.catchPhrase,
              style: TextStyle(
                color: Colors.teal,
                fontSize: 16,
                fontFamily: "Source Sans Pro",
              ),
            ),
            Text(
              user.company.bs,
              style: TextStyle(
                color: Colors.teal,
                fontSize: 16,
                fontFamily: "Source Sans Pro",
              ),
            ),
          ],
        ),
        ),
      ),
    );
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[800],
      body: SafeArea(
          // minimum: const EdgeInsets.only(top: 100),
          child: Column(
            children: <Widget>[
              const Align(
                  alignment: Alignment.center,
              ),
              CircleAvatar(
                radius: 50,
                child: Icon(
                  Icons.person,  
                  size: 50,      
                  color: Colors.white,  
                ),
              ),
              Text(
                user.name,
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Pacifico",
                ),
              ),
              Text(
                user.username,
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.blueGrey[200],
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Source Sans Pro"),
              ),
              SizedBox(
                height: 20,
                width: 300,
                child: Divider(
                  color: Colors.white,
                ),
              ),

              phone(),
              mail(),
              web(),
              company(),
              address(),


            ],
          ),
        )
      );
  }
}

//