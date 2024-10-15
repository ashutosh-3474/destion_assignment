import 'package:flutter/material.dart';
import 'product_list_screen.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    int width = MediaQuery.of(context).size.width.toInt();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Top image with logo and illustration
            Stack(
              children: [
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                    // color: Color(0xFF00BFA5), // Greenish background color
                    image: DecorationImage(
                        image: AssetImage('assets/wave.png'),
                        alignment: Alignment.topCenter,
                          fit: BoxFit.fitWidth,
                        ),
                  ),
                  //   color: Color(0xFF00BFA5), // Greenish background color
                ),
                Positioned(
                  top: width > 700 ? 120 : 90,
                  left: width > 700 ?30: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 42,
                        backgroundColor: Color(0xFF00BFA5),
                        child: CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.white,
                          child: Text(
                            "Grocery\nStore",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF00BFA5),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 20,
                  bottom: 10,
                  child: Image.asset(
                    'assets/cartoon.png', // Add your cartoon character image here
                    height: 180,
                  ),
                ),
              ],
            ),
            // Login form
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Login",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text("Please sign in to continue"),
                  SizedBox(height: 16),
                  // Email TextField
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      labelText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  // Password TextField
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      labelText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  // Remember me & Forgot Password
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(value: false, onChanged: (bool? value) {}),
                          Text("Remember me"),
                        ],
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(color: Color(0xFF00BFA5)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  // Sign in button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductGridScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(16),
                        backgroundColor: Color(0xFF00BFA5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        "Sign in",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  // Social login buttons
                  //   Row(
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     children: [
                  //       IconButton(
                  //         onPressed: () {},
                  //         icon: Image.asset('assets/google.png'),
                  //         iconSize: 40,
                  //       ),
                  //     ],
                  //   ),
                  SizedBox(height: 16),
                  // Sign up link
                  Center(
                    child: TextButton(
                      onPressed: () {},
                      child: RichText(
                        text: TextSpan(
                          text: "Don't have an account? ",
                          style: TextStyle(color: Colors.black),
                          children: <TextSpan>[
                            TextSpan(
                              text: "Sign up",
                              style: TextStyle(color: Color(0xFF00BFA5)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
