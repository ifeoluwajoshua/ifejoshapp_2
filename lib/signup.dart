import 'package:flutter/material.dart';
import 'login_page.dart';

class Signup extends StatefulWidget {
  static String tag = 'sign-up' ;
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
   final logo = Hero(
    tag: 'hero' ,
child: CircleAvatar(
backgroundColor: Colors.transparent,
radius: 70.0,
child: Image.asset('assets/logo1.jpg',),
),
);
final username = TextFormField(
keyboardType: TextInputType.text,
autofocus:false,
decoration: InputDecoration(
hintText: 'Your Username here' ,
contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
border:OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
),);

 final email = TextFormField(
keyboardType: TextInputType.emailAddress,
autofocus:false,
decoration: InputDecoration(
hintText: 'Your Email here' ,
contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
border:OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
),);

final phoneNumber = TextFormField(
keyboardType: TextInputType.number,
autofocus:false,
decoration: InputDecoration(
hintText: 'Your Phone number here' ,
contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
border:OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
),);

final password = TextFormField(
autofocus:false,
obscureText: true,
decoration:InputDecoration(
hintText: 'Your Password here',
contentPadding:EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
),
);

      
final SignupButton = Padding(
  padding: EdgeInsets.symmetric(vertical: 16.0),
  child: RaisedButton(
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(24),
    ),
      onPressed: () {
        Navigator.of(context).pushNamed(LoginPage.tag);
      },
      padding: EdgeInsets.all(12),
      color: Colors.red,
      child: Text('Signup', style: TextStyle(color: Colors.white, fontSize: 17.0)),
      ),
      );

      final forgotLabel = FlatButton(
child: Text(
'Already have an account? Click here',
style: TextStyle(color: Colors.purple, fontSize: 20),
),
onPressed: () {
  Navigator.push 
  (
    context,
    MaterialPageRoute(builder: (context)
    {
      return new LoginPage();
    })
      );
  },
);

return Scaffold(
backgroundColor: Colors.white,
body: Center(
child: ListView(
shrinkWrap: true,
padding: EdgeInsets.only(left: 24.0, right: 24.0),
children: <Widget>[
logo,
SizedBox(height: 50.0),
username,
SizedBox(height: 15.0),
email,
SizedBox(height: 15.0),
phoneNumber,
SizedBox(height: 15.0),
password,
SizedBox(height: 24.0),
SignupButton,
forgotLabel
],
),
),
);


  }
}