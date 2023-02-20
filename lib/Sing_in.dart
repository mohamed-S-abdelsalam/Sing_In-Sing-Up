import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);

  var TextC = const Color(0xff5F5A5A);
  bool visState = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.fromLTRB(20, 5, 10, 20),
              color: Colors.cyan,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(
                    height: 150,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 100),
                    child: Text(
                      " Login",
                      style: TextStyle(
                          color: Color(0xff04283b),
                          fontSize: 32,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  const Text(
                    "",
                    style: TextStyle(fontSize: 25),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 65),
                    child: Text(
                      "Welcome Back!",
                      style: TextStyle(
                          fontSize: 25,
                          color: Color(0xff04283b),
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  const Text(
                    "",
                    style: TextStyle(fontSize: 25),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 1, 1, 9),
                    margin: const EdgeInsets.all(0.0),
                    child: TextField(
                      decoration: const InputDecoration(
                          fillColor: Colors.cyan,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 2, color: (Color(0xff04283b))),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 5, color: (Colors.cyanAccent)),
                          ),
                          labelStyle: TextStyle(
                              fontSize: 15, color: (Colors.blueAccent)),
                          hintText: "Enter your Email",
                          hintStyle:
                              TextStyle(fontSize: 14, color: Colors.black),
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: Color(0xff04283b),
                          )),
                      style: TextStyle(fontSize: 18, color: TextC),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  Container(
                    // padding: EdgeInsets.fromLTRB(0, 1, 1, 5),
                    margin: const EdgeInsets.all(0.0),
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.cyan,
                        filled: true,
                        enabledBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 2, color: (Color(0xff04283b))),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 5,
                              color: (Color(
                                (0xff04283b),
                              ))),
                        ),
                        labelStyle: const TextStyle(
                            fontSize: 15, color: (Colors.white)),
                        hintText: "Confirm Password",
                        hintStyle:
                            const TextStyle(fontSize: 14, color: Colors.black),
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Color(0xff04283b),
                        ),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                visState = !visState;
                              });
                            },
                            icon: Icon(
                              visState
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: const Color(0xff04283b),
                            ),
                          ),
                        ),
                      ),
                      style: TextStyle(fontSize: 18, color: TextC),
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: visState,
                    ),
                    // borderRadius: BorderRadius.circular(4),
                  ),
                  Container(
                    height: 60,
                    // width: 200,
                    alignment: Alignment.bottomRight,
                    //padding: EdgeInsets.only(left: 120, right: 5,top: 20),
                    child: TextButton(
                        style: ElevatedButton.styleFrom(
                            textStyle: const TextStyle(color: Colors.white),
                            backgroundColor:
                                const Color.fromARGB(255, 4, 40, 60)),
                        onPressed: () {},
                        child: const Text("Create New Acawent  ")),
                  ),
                  Container(
                    height: 90,
                    width: 200,
                    alignment: Alignment.bottomRight,
                    //padding: EdgeInsets.only(left: 120, right: 5,top: 20),
                    child: TextButton(
                        style: ElevatedButton.styleFrom(
                            textStyle: const TextStyle(color: Colors.white),
                            backgroundColor:
                                const Color.fromARGB(255, 4, 40, 60)),
                        onPressed: () {},
                        child: const Text("Login ")),
                  ),
                ],
              ),
            ),
          ),
          //
        ));
  }

  void setState(Null Function() param0) {}
}
