import 'package:flutter/material.dart';
import 'package:osscam_app/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isvisible = true;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: const Color.fromRGBO(10, 50, 77, 1),
          child: Stack(
            children: [
              Positioned(
                top: 189.0,
                left: 36.0,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 450.0,
                      width: 300,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(217, 217, 217, 1),
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.circular(12)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            margin:
                                const EdgeInsets.only(top: 67, right: 150.0),
                            child: const Text(
                              "First name",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w400),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            color: Colors.transparent,
                            width: 226,
                            height: 43,
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: 'Your firstname',
                                  hintStyle: const TextStyle(
                                      color: Color.fromRGBO(27, 47, 108, 1),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400),
                                  filled: true,
                                  fillColor:
                                      const Color.fromRGBO(119, 193, 193, 0.75),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          width: 1.0,
                                          color: Color.fromRGBO(10, 50, 77, 1)),
                                      borderRadius: BorderRadius.circular(10))),
                            ),
                          ),
                          Container(
                            margin:
                                const EdgeInsets.only(top: 10, right: 170.0),
                            child: const Text(
                              "Email",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w400),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            color: Colors.transparent,
                            width: 226,
                            height: 43,
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: 'Your Email',
                                  hintStyle: const TextStyle(
                                      color: Color.fromRGBO(27, 47, 108, 1),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400),
                                  filled: true,
                                  fillColor:
                                      const Color.fromRGBO(119, 193, 193, 0.75),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          width: 1.0,
                                          color: Color.fromRGBO(10, 50, 77, 1)),
                                      borderRadius: BorderRadius.circular(10))),
                            ),
                          ),
                          Container(
                            margin:
                                const EdgeInsets.only(top: 10, right: 150.0),
                            child: const Text(
                              "Password",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w400),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            color: Colors.transparent,
                            width: 226,
                            height: 43,
                            child: TextField(
                              obscureText: _isvisible,
                              decoration: InputDecoration(
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      _isvisible
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        if (_isvisible)
                                          _isvisible = false;
                                        else
                                          _isvisible = true;
                                        print(_isvisible);
                                      });
                                    },
                                  ),
                                  hintText: 'Your Password',
                                  hintStyle: const TextStyle(
                                      color: Color.fromRGBO(27, 47, 108, 1),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400),
                                  filled: true,
                                  fillColor:
                                      const Color.fromRGBO(119, 193, 193, 0.75),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          width: 1.0,
                                          color: Color.fromRGBO(10, 50, 77, 1)),
                                      borderRadius: BorderRadius.circular(10))),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 115,
                left: 120.0,
                child: Container(
                  width: 120.0,
                  height: 120.0,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 6),
                      shape: BoxShape.circle,
                      color: Colors.blue.shade200),
                ),
              ),
              Positioned(
                top: 135,
                left: 130.0,
                child: Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(ConstVariebles().bear_img_url),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
