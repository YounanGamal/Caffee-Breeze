import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Core/firebase_error_codes.dart';
import 'package:untitled/UI/auth/sing_up/singup_screen.dart';
import 'package:untitled/UI/components/custom_text_form_field.dart';
import 'package:untitled/UI/home/home_screen.dart';
import 'package:untitled/Utils/dialog_utils.dart';
import 'package:untitled/Utils/email_valid.dart';

class SingInScreen extends StatefulWidget {
  const SingInScreen({super.key});

  static const String routeName = 'Sing_In';

  @override
  State<SingInScreen> createState() => _SingInScreenState();
}

class _SingInScreenState extends State<SingInScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffC29377),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/image/Rectangle 2.png',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              const SizedBox(
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
              const SizedBox(
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
                  return null;
                },
                keyboardType: TextInputType.visiblePassword,
                hintText: 'Password',
                icon: Icons.lock,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
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
                      color: const Color(0xff552F22),
                    ),
                    child: const Text(
                      'Sign in',
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
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
                    child: const Text(
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
    try {
      DialogUtils.showLoadingDialog(
        context,
        'Loading...!',
      );
      UserCredential credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: emailController.text, password: passwordController.text);
      DialogUtils.hideDialog(context);
      DialogUtils.showMessage(
        context,
        'Login Successfully !',
        posActionTitle: 'Ok',
        negActionTitel: 'Cancle',
        posAction: () {
          Navigator.pushReplacementNamed(context, HomeScreen.routeName);
        },
      );
    } on FirebaseAuthException catch (e) {
      DialogUtils.hideDialog(context);
      if (e.code == FirebaseErrorCodes.userNotFound ||
          e.code == FirebaseErrorCodes.wrongPassword) {
        DialogUtils.showMessage(context, 'Error email or password!',
            posActionTitle: 'try agin');
      }
    } catch (e) {
      DialogUtils.showMessage(context, e.toString());
    }
  }
}
