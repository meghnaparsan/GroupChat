import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'screens/chat_screen.dart';
import 'screens/login_screen.dart';
import 'screens/registration_screen.dart';
import 'screens/welcome_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.screenName,
      routes: {
        ChatScreen.screenName: (context) => ChatScreen(),
        LoginScreen.screenName: (context) => LoginScreen(),
        RegistrationScreen.screenName: (context) => RegistrationScreen(),
        WelcomeScreen.screenName: (context) => WelcomeScreen(),
      },
    );
  }
}
