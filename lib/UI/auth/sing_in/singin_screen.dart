import 'package:flutter/material.dart';
import 'package:untitled/UI/auth/sing_up/singup_screen.dart';
import 'package:untitled/UI/components/custom_text_form_field.dart';
import 'package:untitled/uites/email_valid.dart';

class SingInScreen extends StatelessWidget {
  SingInScreen({super.key});

  static const String routeName = 'Sing_In';
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffC29377),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/image/Rectangle 2.png',width: double.infinity,fit: BoxFit.cover,),
              SizedBox(
                height: 20,
              ),
              CustomTextFormField(
                keyboardType: TextInputType.emailAddress,
                validator: (input) {
                  if (input == null || input.trim().isEmpty) {
                    return 'Please enter email ';
                  }
                  if (!isValidEmail(input)) {
                    return 'Email bad format';
                  }

                  return null;
                },
                controller: emailController,
                hintText: 'Email',
                icon: Icons.email,
              ),
              SizedBox(
                height: 18,
              ),
              CustomTextFormField(
                isObscureText: true,
                controller: passwordController,
                validator: (input) {
                  if (input == null || input.trim().isEmpty) {
                    return 'Please enter password ';
                  }
                  if (input.length <= 8) {
                    return 'Error, password must be at least 8 chars';
                  }
                },
                keyboardType: TextInputType.visiblePassword,
                hintText: 'Password',
                icon: Icons.lock,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    logIn();
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 65,
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(0xff552F22),
                    ),
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an Account? ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                          context, SingUpScreen.routeName);
                    },
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                        fontSize: 24,
                        color: Color(0xff552F22),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  logIn() async {
    if (!(formKey.currentState!.validate())) {
      return;
    }
  }
}
