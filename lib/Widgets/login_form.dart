import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../responsive.dart';
import '../Animations/slide_route.dart';
import '../main.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: ResponsiveScreen.isDekstop(context) ? 128 : 64,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        
         
         
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              label: const Text("User Name"),
              suffixIcon: const Icon(CupertinoIcons.mail),
            ),
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 16),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              label: const Text("Passoword"),
              suffixIcon: const Icon(CupertinoIcons.lock),
            ),
            obscureText: true,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        
          const SizedBox(height: 32),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 48,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: const Text("Login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
            ),
          ),
          const SizedBox(height: 16),
      
          // Add "Don't have an account? Sign up" button
       TextButton(
  onPressed: () {
    Navigator.pushReplacement(
      context,
      SlideLeftRoute(page: const RegisterScreen(), duration: 1000), // Pass your page
    );
  },
  child: const Text(
    "Don't have an account? Sign Up",
    style: TextStyle(color: Colors.blue, fontSize: 16, fontWeight: FontWeight.bold),
  ),
),

        ],
      ),
    );
  }
}
