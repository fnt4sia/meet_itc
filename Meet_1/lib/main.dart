import 'package:flutter/material.dart';
import 'hi.dart';

void main() {
  runApp(const MyApp());
}

List<String> divisi = ["Choose Your Division", "mobile", "web", "pm", "ui/ux"];
String? divisiValue = divisi.first;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const registerPage(),
    );
  }
}

class registerPage extends StatefulWidget {
  const registerPage({super.key});

  @override
  State<registerPage> createState() => _registerPageState();
}

class _registerPageState extends State<registerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 40,
          ),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Text(
                'Create Account',
                style: TextStyle(
                  color: Color.fromARGB(255, 3, 81, 96),
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Please enter the details below to continue.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Full Name',
                style: TextStyle(
                    color: Color.fromARGB(255, 3, 81, 96),
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
              TextField(
                style: TextStyle(
                  fontSize: 18,
                ),
                decoration: InputDecoration(
                  hintText: 'Enter Your Name',
                  filled: true,
                  fillColor: Color.fromARGB(255, 239, 238, 236),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Email Address',
                style: TextStyle(
                  color: Color.fromARGB(255, 3, 81, 96),
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Your E-mail Address',
                  filled: true,
                  fillColor: Color.fromARGB(255, 239, 238, 236),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Password',
                style: TextStyle(
                    color: Color.fromARGB(255, 3, 81, 96),
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
              TextField(
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  hintText: 'Type Your Password',
                  filled: true,
                  fillColor: Color.fromARGB(255, 239, 238, 236),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  suffixIcon: Icon(
                    Icons.remove_red_eye_sharp,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Confirm Password',
                style: TextStyle(
                    color: Color.fromARGB(255, 3, 81, 96),
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
              TextField(
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  hintText: 'Re-type Your Password',
                  filled: true,
                  fillColor: Color.fromARGB(255, 239, 238, 236),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  suffixIcon: Icon(
                    Icons.remove_red_eye_sharp,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Division',
                style: TextStyle(
                    color: Color.fromARGB(255, 3, 81, 96),
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 3, 81, 96),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: DropdownButton<String>(
                  isExpanded: true,
                  hint: Text(
                    "Choose Your Division",
                    style: TextStyle(
                      fontSize: 26,
                      color: Colors.white,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 8,
                  ),
                  borderRadius: BorderRadius.circular(10),
                  underline: SizedBox(),
                  icon: Icon(
                    Icons.arrow_downward_sharp,
                    color: Colors.white,
                    size: 32,
                  ),
                  dropdownColor: Color.fromARGB(255, 3, 81, 96),
                  value: divisiValue,
                  items: divisi.map((divisi) {
                    return DropdownMenuItem(
                      value: divisi,
                      child: Text(
                        divisi,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? divisi) {
                    setState(() {
                      divisiValue = divisi;
                    });
                  },
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => hiApp(),
                      ));
                },
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: Color.fromARGB(255, 3, 81, 96),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account? ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "Sign In",
                      style: TextStyle(
                        color: Color.fromARGB(255, 3, 81, 96),
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
