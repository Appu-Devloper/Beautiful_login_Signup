import 'package:flutter/material.dart';
import 'package:login_signup_screens/main.dart';
import 'package:lottie/lottie.dart';
import '../../responsive.dart';
import '../Animations/slide_route.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
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
              suffixIcon: const Icon(Icons.person),
            ),
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 16),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              label: const Text("Email"),
              suffixIcon: const Icon(Icons.email),
            ),
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 16),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              label: const Text("Password"),
              suffixIcon: const Icon(Icons.lock),
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
              child: const Text("Register",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
            ),
          ),
          const SizedBox(height: 16),
           TextButton(
  onPressed: () {
    Navigator.pushReplacement(
      context,
      SlideLeftRoute(page: const LoginScreen(), duration: 1000),
    );
  },
  child: const Text(
    "Already have an account? Login",
    style: TextStyle(color: Colors.blue, fontSize: 16, fontWeight: FontWeight.bold),
  ),
),

        ],
      ),
    );
  }
}
