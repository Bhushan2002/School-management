import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
const String login = "/login" ;

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
            top: 120,
            left: MediaQuery.sizeOf(context).width / 3.4,
            child: Text("WELCOME",
                style: GoogleFonts.vollkorn(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                    color: Colors.blueAccent)),
          ),
          Container(
            child: Image.asset(
              height: MediaQuery.sizeOf(context).height,
              'assets/image/loginpage.png',
              opacity: AlwaysStoppedAnimation(.2),
              fit: BoxFit.cover,
            ),
          ),
          Card(
            color: Colors.blueGrey.withOpacity(0.3),
            margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 250),
            child: Form(
                child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Username",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                            borderSide: BorderSide.none),
                        fillColor: Colors.blueGrey.withOpacity(0.5),
                        filled: true,
                        prefixIcon: const Icon(
                          Icons.person,
                          color: Colors.blueGrey,
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                            borderSide: BorderSide.none),
                        fillColor: Colors.blueGrey.withOpacity(0.5),
                        filled: true,
                        prefixIcon: const Icon(Icons.password_rounded)),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 16),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Colors.blueGrey.shade700, // background color
                      foregroundColor: Colors.white, // text color
                      shadowColor: Colors.black, // shadow color
                      elevation: 5, // elevation of the button
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(5), // rounded corners
                      ),
                      padding: EdgeInsets.symmetric(
                          horizontal: 35, vertical: 14), // padding
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "create an account!",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/register');
                          },
                          child: Text("Sign up now"))
                    ],
                  )
                ],
              ),
            )),
          ),
        ],
      ),
    );
  }
}
