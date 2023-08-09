import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        //color: const Color(0xFF5D5FEF),
        decoration: const BoxDecoration(
            //color: Colors.blue,
            image: DecorationImage(
                image: AssetImage(
          'assets/mountains.jpg',
        ))),
        child: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          color: const Color(0xFF5D5FEF).withOpacity(0.8),
          child: Column(
            children: [
              const Spacer(
                flex: 8,
              ),
              const Text('Sign In',
                  style: TextStyle(
                      letterSpacing: 1,
                      wordSpacing: 4,
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                      color: Colors.white)),
              const Spacer(),
              const Text(
                'Please sign in to continue',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  letterSpacing: 0.5,
                  wordSpacing: 2,
                ),
              ),
              const Spacer(
                flex: 2,
              ),
              SizedBox(
                width: 220,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 66,
                      height: 66,
                      decoration: BoxDecoration(
                          color: const Color(0xFFFFC727),
                          borderRadius: BorderRadius.circular(100)),
                      child: const Icon(
                        Icons.wechat,
                        size: 30,
                      ),
                    ),
                    Container(
                      width: 66,
                      height: 66,
                      decoration: BoxDecoration(
                          color: const Color(0xFFFFC727),
                          borderRadius: BorderRadius.circular(100)),
                      child: const Icon(
                        Icons.facebook,
                        size: 30,
                      ),
                    ),
                    Container(
                      width: 66,
                      height: 66,
                      decoration: BoxDecoration(
                          color: const Color(0xFFFFC727),
                          borderRadius: BorderRadius.circular(100)),
                      child: const Icon(
                        Icons.apple,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(
                flex: 8,
              ),
              const SizedBox(
                width: 350,
                height: 68,
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      labelText: 'Email Address',
                      filled: true,
                      fillColor: Colors.white),
                ),
              ),
              const SizedBox(
                width: 350,
                height: 68,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.visibility_off),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      labelText: 'Password',
                      filled: true,
                      fillColor: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 25),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      )),
                ),
              ),
              const Spacer(
                flex: 4,
              ),
              SizedBox(
                width: 350,
                height: 68,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        elevation: 5,
                        backgroundColor: const Color(0xFFFFC727),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18))),
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    )),
              ),
              const Spacer(
                flex: 2,
              ),
              RichText(
                  text: const TextSpan(children: <TextSpan>[
                TextSpan(
                  text: 'Don\'t have an account? ',
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                TextSpan(
                  text: 'Sign up',
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w900,
                      color: Colors.white),
                )
              ])),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
