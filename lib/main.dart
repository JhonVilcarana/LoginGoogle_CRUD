import 'package:flutter/material.dart';
import 'package:frontend_application/login.dart';
import 'package:frontend_application/sign_in.dart';
import 'package:provider/provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'MainPage';

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => GoogleSignIndProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: title,
          theme: ThemeData.dark().copyWith(accentColor: Colors.indigo),
          home: HomePage(),
        ),
      );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    "Welcome to UPeU",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Universidad Peruana Union",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 15,
                    ),
                  )
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage("assets/upeu.png"))),
              ),
              Column(
                children: <Widget>[
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    color: Color(0xFF880E4F),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(50)),
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                      final provider = Provider.of<GoogleSignIndProvider>(
                          context,
                          listen: false);
                      provider.googleLogin();
                    },
                    color: Color(0xFFFFFFFF),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.pink.shade900),
                        borderRadius: BorderRadius.circular(50)),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Image(
                              image: AssetImage('assets/google.png'),
                              width: 10,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 8,
                          child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "Sing Up with Google",
                                style: TextStyle(
                                  color: Colors.pink.shade900,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
                              )),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
