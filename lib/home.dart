import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:verzeo/details.dart' as dt;

class Appbars extends StatefulWidget {
  @override
  _AppbarsState createState() => _AppbarsState();
}

class _AppbarsState extends State<Appbars> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Verzeo"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("${dt.name}"),
              accountEmail: Text("${dt.name}@gmail.com"),
              currentAccountPicture: CircleAvatar(),
            ),
            ListTile(
              title: Text("Project"),
              leading: Icon(Icons.home_work),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Classroom"),
              leading: Icon(Icons.school),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Workspace"),
              leading: Icon(Icons.workspaces),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
              child: Text(
                "Thank You ${dt.name} for Submitting",
                style: GoogleFonts.lato(fontSize: 12),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                onChanged: (value) {
                  setState(() {
                    dt.name = value;
                  });
                },
                decoration: InputDecoration(
                    labelText: "Username",
                    hintText: "Enter your Username",
                    labelStyle: GoogleFonts.oswald(),
                    icon: Icon(Icons.person)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Image.network(
                    "data:image/png;base64,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",
                    fit: BoxFit.fill),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              // ignore: deprecated_member_use
              child: ElevatedButton(
                child: Text("Your Session is Great , Sir",
                    style: GoogleFonts.oswald(fontSize: 15)),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
