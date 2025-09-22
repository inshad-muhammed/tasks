import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:login_page/features/auth/presentation/widgets/bottom_icon.dart';
import 'package:login_page/features/auth/presentation/widgets/button.dart';
import 'package:login_page/features/auth/presentation/widgets/text_field.dart';
import 'package:login_page/features/auth/presentation/widgets/toggle_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              const Color.fromARGB(255, 10, 64, 109),
              const Color.fromARGB(255, 9, 121, 111),
              const Color.fromARGB(255, 33, 190, 211),
            ],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/icons/dukhan.png"),
                    LanguageToggle(),
                  ],
                ),
                SizedBox(height: 10),
                Icon(Icons.sunny_snowing, color: Colors.white, size: 40),
                Text(
                  "Next Prayer Time",
                  style: TextStyle(color: Colors.white70),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Dhuhr • 11:40 am ",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
                SizedBox(height: 12),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Container(
                      alignment: Alignment.center,
                      color: Colors.white.withOpacity(0.1),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 15,
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Welcome Back,",
                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Text(
                                      "Sarahahmed",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Switch Profile",
                                    style: TextStyle(
                                      color: Colors.white,
                                      decoration: TextDecoration.underline,
                                      decorationColor: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 30),
                            TextFieldWidget(
                              labelText: "Enter your password",
                              obsecureText: true,
                              controller: passwordController,
                            ),
                            SizedBox(height: 20),
                            Button(text: "Login", onPressed: () {}),
                            SizedBox(height: 26),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "Forgot Username/password?",

                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  decoration: TextDecoration.underline,
                                  decorationColor: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Button(
                  text: "View Account Balance",
                  onPressed: () {},
                  icon: Icons.remove_red_eye_outlined,
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [Image.asset("assets/icons/ai.png")],
                ),
                SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BottomIcon(
                      function: () {},
                      label: "Emergency\nBlock",
                      imageAddress: "assets/icons/Emergencyblock.png",
                    ),
                    BottomIcon(
                      function: () {},
                      label: "Rates",
                      imageAddress: "assets/icons/Exchange.png",
                    ),
                    BottomIcon(
                      function: () {},
                      label: "Products",
                      imageAddress: "assets/icons/Products.png",
                    ),
                    BottomIcon(
                      function: () {},
                      label: "More",
                      imageAddress: "assets/icons/More.png",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Widget blurredContainer(passwordController) {
//   return ClipRRect(
//     borderRadius: BorderRadius.circular(20),
//     child: BackdropFilter(
//       filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
//       child: Container(
//         alignment: Alignment.center,
//         color: Colors.white.withOpacity(0.1),
//         child: Padding(
//           padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
//           child: Column(
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "Welcome Back,",
//                         style: TextStyle(color: Colors.white70, fontSize: 16),
//                       ),
//                       Text(
//                         "Sarahahmed",
//                         style: TextStyle(color: Colors.white, fontSize: 22),
//                       ),
//                     ],
//                   ),
//                   TextButton(
//                     onPressed: () {},
//                     child: Text(
//                       "Switch Profile",
//                       style: TextStyle(
//                         color: Colors.white,
//                         decoration: TextDecoration.underline,
//                         decorationColor: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 30),
//               TextFieldWidget(
//                 labelText: "Enter your password",
//                 obsecureText: true,
//                 controller: passwordController,
//               ),
//               SizedBox(height: 20),
//               Button(text: "Login", onPreseed: () {}, icon: Icons.abc),
//               SizedBox(height: 26),
//               TextButton(
//                 onPressed: () {},
//                 child: Text(
//                   "Forgot Username/password?",

//                   style: TextStyle(
//                     fontSize: 16,
//                     color: Colors.white,
//                     decoration: TextDecoration.underline,
//                     decorationColor: Colors.white,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     ),
//   );
// }
