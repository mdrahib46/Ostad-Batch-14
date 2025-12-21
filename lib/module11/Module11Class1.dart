import 'package:flutter/material.dart';

class Module11class1 extends StatefulWidget {
  const Module11class1({super.key});

  @override
  State<Module11class1> createState() => _Module11class1State();
}

class _Module11class1State extends State<Module11class1> {
  bool isObSecure = true;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Module 11 Class 1")),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: .center,
            children: [
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: "Email",
                  labelStyle: TextStyle(color: Colors.green.shade600),
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    color: Colors.green.shade200,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.green),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Colors.green),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.teal),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                controller: passwordController,
                obscureText: isObSecure,
                decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: TextStyle(color: Colors.green.shade600),
                  prefixIcon: Icon(Icons.password),
                  suffixIcon: IconButton(
                    onPressed: () {
                      isObSecure ? isObSecure = false : isObSecure = true;
                      setState(() {});
                    },
                    icon: Icon(Icons.remove_red_eye_outlined),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.green),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Colors.green),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.green),
                  ),
                ),
              ),
              const SizedBox(height: 16),

              SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () {
                    print(
                      "Your given email : ${emailController.text.trim()} \nYour given password : ${passwordController.text}",
                    );
                  },
                  child: Text('Submit'),

                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              Container(
                alignment: Alignment(-0.20, -0.1),
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(100)
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
