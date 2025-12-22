import 'package:batch14/module11/home_screen.dart';
import 'package:flutter/material.dart';

class Module11class2 extends StatefulWidget {
  const Module11class2({super.key});

  @override
  State<Module11class2> createState() => _Module11class2State();
}

class _Module11class2State extends State<Module11class2> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 70,
                      child: Image(
                        image: NetworkImage(
                          'https://ih1.redbubble.net/image.4598476168.2173/st,small,507x507-pad,600x600,f8f8f8.jpg',
                        ),
                      ),
                    ),
                    const SizedBox(height: 32),
                    Text(
                      "Login with email & password",
                      style: Theme.of(
                        context,
                      ).textTheme.headlineLarge!.copyWith(color: Colors.teal),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: emailController,
                      decoration: _buildInputDecoration(
                        labelText: "Email",
                        hintText: "example@mail.com",
                      ),
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return "Enter your email";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: passwordController,
                      decoration: _buildInputDecoration(
                        labelText: "Password",
                        hintText: "Password",
                      ),
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return "Enter your password";
                        }else if(value.length < 6){
                          return 'Password must be at least 6 character';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 24),
                    SizedBox(
                      height: 45,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.teal,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(8),
                          ),
                        ),
                        onPressed: _moveToHomeScreen,
                        child: Text("Login"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _moveToHomeScreen(){
    if(_formKey.currentState!.validate()){
      if(mounted){
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> HomeScreen()), (route)=> false);
      }
    }



  }

  InputDecoration _buildInputDecoration({
    required String labelText,
    required String hintText,
  }) {
    return InputDecoration(
      labelText: labelText,
      hintText: hintText,
      hintStyle: TextStyle(color: Colors.grey),
      labelStyle: TextStyle(color: Colors.teal),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 2, color: Colors.teal),
        borderRadius: BorderRadius.circular(8),
      ),
      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
    );
  }
}
