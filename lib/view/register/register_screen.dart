import 'package:flutter/material.dart';
import '../../controller/components/components.dart';
import '../home/home.dart';
import '../login/login_screen.dart';

import '../../res.dart';

// ignore: must_be_immutable
class RegisterScreen extends StatelessWidget {
  var formKey = GlobalKey<FormState>();
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var phoneController = TextEditingController();

  RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 85, bottom: 10, left: 20, right: 20),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 150,
                  width: 150,
                  margin: const EdgeInsets.only(bottom: 20),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(Res.login),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const Text(
                  'مرحبا بعودتك',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'أنشئ حساب جديد',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your E-mail';
                    }
                    return null;
                  },
                  textAlign: TextAlign.right,
                  autocorrect: true,
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    suffixIcon: Icon(
                      Icons.email,
                      color: Colors.black,
                    ),
                    hintText: 'البريد الاليكتروني',
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 2.0,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15.0),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your E-mail';
                    }
                    return null;
                  },
                  textAlign: TextAlign.right,
                  autocorrect: true,
                  controller: nameController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    suffixIcon: Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                    hintText: 'الاسم',
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 2.0,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15.0),
                TextFormField(
                  textAlign: TextAlign.right,
                  autocorrect: true,
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: const InputDecoration(
                    suffixIcon: Icon(
                      Icons.lock,
                      color: Colors.black,
                    ),
                    hintText: 'الرقم السري',
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 2.0,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.teal,
                      ),
                    ),
                  ),
                  onFieldSubmitted: (value) {
                    if (formKey.currentState!.validate()) {
                      // ignore: avoid_print
                      print('$emailController');
                      // ignore: avoid_print
                      print('$passwordController');
                    }
                  },
                ),
                const SizedBox(height: 15.0),
                TextFormField(
                  textAlign: TextAlign.right,
                  autocorrect: true,
                  controller: phoneController,
                  keyboardType: TextInputType.phone,
                  obscureText: true,
                  decoration: const InputDecoration(
                    suffixIcon: Icon(
                      Icons.phone,
                      color: Colors.black,
                    ),
                    hintText: 'رقم الهاتف',
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 2.0,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.teal,
                      ),
                    ),
                  ),
                  onFieldSubmitted: (value) {
                    if (formKey.currentState!.validate()) {
                      // ignore: avoid_print
                      print('$emailController');
                      // ignore: avoid_print
                      print('$passwordController');
                    }
                  },
                ),
                const SizedBox(height: 30.0),
                GestureDetector(
                  onTap: () {
                    navigateAndFinish(
                      context,
                      HomeScreen(),
                    );
                  },
                  child: Container(
                    height: 36,
                    width: 119,
                    color: Colors.black,
                    child: const Center(
                      child: Text(
                        'تسجيل الدخول',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'او سجل عن طريق',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      child: Container(
                        height: 36,
                        width: 119,
                        color: Colors.blue,
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'F',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                'فيس بوك',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      // onTap: () {
                      //   navigateAndFinish(
                      //     context,
                      //     const LayOutScreen(),
                      //   );
                      // },
                      child: Container(
                        height: 36,
                        width: 119,
                        color: Colors.red,
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'G',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                'جوجل',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15.0),
                TextButton(
                  onPressed: () {
                    navigateTo(
                      context,
                      LoginScreen(),
                    );
                  },
                  child: const Text(
                    'لديك حساب بالفعل؟ تسجيل الدخول',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
