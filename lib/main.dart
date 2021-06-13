import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:verzeo/home.dart';
import 'details.dart' as det;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(),
      routes: {
        "/homepage": (context) => Appbars(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final _formkey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Verzeo",
          style: GoogleFonts.lato(),
        ),
      ),
      body: Form(
        key: _formkey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login.png",
                width: 300,
                height: 300,
                fit: BoxFit.contain,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "Email",
                      hintText: "Enter your Email",
                      labelStyle: GoogleFonts.oswald(),
                      icon: Icon(Icons.email)),
                  validator: (input) {
                    if (input!.isEmpty) {
                      return "Please enter your Email";
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Passcode",
                    labelStyle: GoogleFonts.oswald(),
                    hintText: "Enter your 6 digit Passcode",
                    icon: Icon(Icons.lock),
                  ),
                  validator: (input) {
                    if (input!.length < 6) {
                      return "Password length should be atleast 6";
                    }
                  },
                ),
              ),
              SizedBox(
                height: 5,
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    Navigator.pushNamed(context, "/homepage");
                  }
                },
                child: Text(
                  "Login",
                  style: GoogleFonts.oswald(),
                ),
                style: ElevatedButton.styleFrom(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
