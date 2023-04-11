import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter ses 2',
        theme: ThemeData(
        ),
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Curriculum Vitae"),
              backgroundColor: Colors.grey,

            ),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  buildRow(),
                  Container(
                    margin: const EdgeInsets.all(16.0),
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200
                    ),
                    child: Text("Fresh graduate Teknik Informasi dari Universitas"
                        " Esa Unggul dan bekerja sebagai teknisi engginer di "
                        "bagian Manufactur",
                        style: TextStyle(
                          fontSize: 12,
                        ),),
                  ),
                  buildPadding("Skills"),
                  SizedBox(height: 10.0,),
                  buildSkillRow("Laravel",1),
                  buildSkillRow1("Flutter",1),
                  buildSkillRow2("Figma UI/UX",1),
                  buildSkillRow3("Database sql",1),
                  SizedBox(height: 10.0,),
                  buildPadding("Experience"),
                  buildExperienceRow("Denso",1),
                  SizedBox(height: 10.0,),
                  buildPadding("Education"),
                  buildEducationRow("Denso",1),
                  SizedBox(height: 10.0,),
                  buildPadding("Socials"),
                  SizedBox(height: 10.0,),
                  buildSocialsRow("Leadership",1),
                  buildSocialsRow1("Teamwork",1),
                  buildSocialsRow2("Comunikasi",1),
                  buildSocialsRow3("Berfikir Kritis",1),

                ]
              ),
            )
        ));
  }
  Row buildSocialsRow(String skill, double level) {
    return Row(
      children: const <Widget>[
        SizedBox(width:16.0),
        Text("Leadership"),
        SizedBox(width: 10.0,)
      ],
    );
  }
  Row buildSocialsRow1(String skill, double level) {
    return Row(
      children: const <Widget>[
        SizedBox(width:16.0),
        Text("Teamwork"),
        SizedBox(width:10.0),
      ],
    );
  }
  Row buildSocialsRow2(String skill, double level) {
    return Row(
      children: const <Widget>[
        SizedBox(width:16.0),
        Text("Komunikasi"),
        SizedBox(width:10.0),
      ],
    );
  }
  Row buildSocialsRow3(String skill, double level) {
    return Row(
      children: const <Widget>[
        SizedBox(width:16.0),
        Text("Berfikir Kritis"),
        SizedBox(width:10.0),
      ],
    );
  }

  Row buildEducationRow(String skill, double level) {
    return Row(
      children: const <Widget>[
        SizedBox(width:16.0),
        Text("Universitas Esa Unggul 2020 - 2024"),
        SizedBox(width:10.0),
        SizedBox(width: 16.0,)
      ],
    );
  }

  Row buildExperienceRow(String skill, double level) {
    return Row(
      children: const <Widget>[
        SizedBox(width:16.0),
        Text("PT.Denso Manufacturing  Bekasi  2019-2023"),
        SizedBox(width:10.0),
        SizedBox(width: 16.0,)
      ],
    );
  }

  Row buildSkillRow(String skill, double level) {
    return Row(
                  children: const <Widget>[
                    SizedBox(width:16.0),
                    Text("Laravel"),
                    SizedBox(width:10.0),
                    Expanded(
                      child: LinearProgressIndicator(
                      value: 0.50,
                    ),
                    ),
                    SizedBox(width: 16.0,)
                  ],
                );
  }
  Row buildSkillRow1(String skill, double level) {
    return Row(
      children: const <Widget>[
        SizedBox(width:16.0),
        Text("Flutter"),
        SizedBox(width:10.0),
        Expanded(child: LinearProgressIndicator(
          value: 0.70,
        ),
        ),
        SizedBox(width: 16.0,)
      ],
    );
  }
  Row buildSkillRow2(String skill, double level) {
    return Row(
      children: const <Widget>[
        SizedBox(width:16.0),
        Text("Figma UI/UX"),
        SizedBox(width:10.0),
        Expanded(child: LinearProgressIndicator(
          value: 0.90,
        ),
        ),
        SizedBox(width: 16.0,)
      ],
    );
  }
  Row buildSkillRow3(String skill, double level) {
    return Row(
      children: const <Widget>[
        SizedBox(width:16.0),
        Text("Database SQL"),
        SizedBox(width:10.0),
        Expanded(child: LinearProgressIndicator(
          value: 0.75,
        ),
        ),
        SizedBox(width: 16.0,)
      ],
    );
  }

  Padding buildPadding(String title) {
    return Padding(
                  padding: const EdgeInsets.only(left:16.0),
                  child: Text(title. toUpperCase(),style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),),
                );
  }

  Row buildRow() {
    return Row(children: <Widget>[
                  SizedBox(width: 20.0),
                  Container(
                    width: 80.0,
                    child: Image.asset('assets/1.jpg'),
                  ),
                  SizedBox(width: 20.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Moch Aldi Hardiansyah",style: TextStyle(
                          fontSize: 16,fontWeight:FontWeight.bold)),
                      Text("Programer"),
                      Row(
                        children: [
                          Icon(Icons.location_on, color: Colors.grey),
                          Text("Bekasi, Indonesia"),
                        ],
                      ),
                    ],
                  )
                ],);
  }
}

