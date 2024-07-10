import 'package:flutter/material.dart';
import 'package:untitled/UI/auth/sing_in/singin_screen.dart';
import 'package:untitled/UI/components/custom_text_form_field.dart';
import 'package:untitled/uites/email_valid.dart';

class SingUpScreen extends StatelessWidget {
  static const String routeName = 'SingUp';
  TextEditingController nameController = TextEditingController(text: 'ewrwerwer');
  TextEditingController dateOfBirthController = TextEditingController(text: '2005');
  TextEditingController placeController = TextEditingController(text: 'adwedeceef');
  TextEditingController phoneController = TextEditingController(text: '01208106259');
  TextEditingController emailController = TextEditingController(text: 'you@ret.uuy');
  TextEditingController passwordController = TextEditingController(text: '123456789');
  TextEditingController passwordConfirmController = TextEditingController(text: '123456789');
  var formKey = GlobalKey<FormState>();

  SingUpScreen({super.key});

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
                height: 40,
              ),
              CustomTextFormField(
                controller: nameController,
                keyboardType: TextInputType.text,
                validator: (input) {
                  if (input == null || input.trim().isEmpty) {
                    return 'Please enter full name';
                  }
                  if (input.length <= 8) {
                    return 'Error, full name must be at least 8 chars';
                  }
                },
                hintText: 'Name',
                icon: Icons.person,
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextFormField(
                controller: dateOfBirthController,
                keyboardType: TextInputType.datetime,
                validator: (input) {
                  if (input == null || input.trim().isEmpty) {
                    return 'Please enter date of brith';
                  }
                  if (input.length >= 8) {
                    return 'Error, full name must be at least 8 chars';
                  }
                },
                hintText: 'date of Birth',
                icon: Icons.date_range_rounded,
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextFormField(
                controller: placeController,
                keyboardType: TextInputType.streetAddress,
                validator: (input) {
                  if (input == null || input.trim().isEmpty) {
                    return 'Please enter place';
                  }
                  if (input.length <= 8) {
                    return 'Error, place must be at least 8 chars';
                  }
                },
                hintText: 'Place',
                icon: Icons.location_on_sharp,
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextFormField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                validator: (input) {
                  if (input == null || input.trim().isEmpty) {
                    return 'Please enter phone';
                  }
                  if (input.length != 11) {
                    return 'Error, the number phone';
                  }
                },
                hintText: 'Phone',
                icon: Icons.phone,
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                validator: (input) {
                  if (input == null || input.trim().isEmpty) {
                    return 'Please enter email';
                  }
                  if (!isValidEmail(input)) {
                    return 'Email bad format';
                  }
                },
                hintText: 'Email',
                icon: Icons.email,
              ),
              const SizedBox(
                height: 18,
              ),
              CustomTextFormField(
                controller: passwordController,
                keyboardType: TextInputType.visiblePassword,
                isObscureText: true,
                validator: (input) {
                  if (input == null || input.trim().isEmpty) {
                    return 'Please enter password ';
                  }
                  if (input.length <= 8) {
                    return 'Error, password must be at least 8 chars';
                  }
                },
                hintText: 'Password',
                icon: Icons.lock,
              ),
              const SizedBox(
                height: 18,
              ),
              CustomTextFormField(
                controller: passwordConfirmController,
                keyboardType: TextInputType.visiblePassword,
                isObscureText: true,
                validator: (input) {
                  if (input == null || input.trim().isEmpty) {
                    return 'Please enter password ';
                  }
                  if (input.length <= 8) {
                    return 'Error, password must be at least 8 chars';
                  }
                  if (passwordController.text != input) {
                    return 'password not match';
                  }
                },
                hintText: 'Confirm Password',
                icon: Icons.lock,
              ),
              const SizedBox(
                height: 70,
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    singUp();
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 65,
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(0xff552F22),
                    ),
                    child: const Text(
                      'Sign up',
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              // ElevatedButton(
              //     onPressed: () {
              //       singUp();
              //     },
              //     child: Text('sing up')),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an Account? ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                          context, SingInScreen.routeName);
                    },
                    child: const Text(
                      'Sign in',
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

  void singUp() async {
    if (!(formKey.currentState!.validate())) {
      return;
    }
    // try {
    //   final credential =
    //       await FirebaseAuth.instance.createUserWithEmailAndPassword(
    //     email: emailController.text,
    //     password: passwordController.text,
    //   );
    //   print(credential.user?.uid);
    // } on FirebaseAuthException catch (e) {
    //   if (e.code == 'weak-password') {
    //     print('The password provided is too weak.');
    //   } else if (e.code == 'email-already-in-use') {
    //     print('The account already exists for that email.');
    //   }
    // } catch (e) {
    //   print(e);
    // }
    // try {
    //   // DialogUtils.showLoadingDialog(context, 'Loading...!');
    //   UserCredential result =
    //   await FirebaseAuth.instance.createUserWithEmailAndPassword(
    //     email: emailController.text,
    //     password: passwordController.text,
    //   );
    //   // DialogUtils.hideDialog(context);
    //   // DialogUtils.showMessage(
    //   //   context,
    //   //   'User registered Successfully',
    //   //   posActionTitle: 'Ok',
    //   //   negActionTitel: 'Cancle',
    //   //   posAction: () {
    //   //     Navigator.pushReplacementNamed(context, LoginScreenWidget.routeName);
    //   //   },
    //   // );
    // } on FirebaseAuthException catch (e) {
    // DialogUtils.hideDialog(context);
    // if (e.code == FirebaseErrorCodes.weakPassword) {
    // DialogUtils.showMessage(
    //   context,
    //   'The password provided is too weak.',
    //   posActionTitle: 'try agin',
    // );
    // } else if (e.code == FirebaseErrorCodes.emailInUse) {
    // DialogUtils.showMessage(
    //   context,
    //   'The account already exists for that email.',
    //   posActionTitle: 'try agin',
    // );
    // }
    // } catch (e) {
    // DialogUtils.showMessage(context, '${e.toString()}');
    // }
    // }
  }
}
