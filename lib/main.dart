import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'AuthProvider.dart';
import 'screens/OTP_Validation.dart';
import 'screens/NM_Login.dart';
import 'screens/nm_home.dart';
// Your login screen

void main() {
  runApp(MyApp());
}

class SplashApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FutureBuilder(
        future: _navigateToMain(context),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // Show the splash screen while waiting
            return SplashScreen();
          } else {
            // Navigate to the main app
            return MyApp();
          }
        },
      ),
    );
  }
}

Future<void> _navigateToMain(BuildContext context) async {
  await Future.delayed(Duration(seconds: 2)); // Adjust the delay as needed
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2), // Adjust the animation duration
    );

    _colorAnimation = ColorTween(
      begin: Color.fromARGB(255, 186, 43, 35), // Red color
      end: Colors.white,
    ).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );

    _animationController.forward();

    _navigateToMain(context); // Start navigation after animation
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _colorAnimation,
      builder: (context, child) {
        return Scaffold(
          backgroundColor: _colorAnimation.value ?? Colors.white,
          body: Center(
            child: SizedBox(
              width: 95,
              height: 123,
              child: SvgPicture.asset('assets/images/nm-logo.svg'),
            ),
          ),
        );
      },
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AuthProvider()..loadLoginStatus(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        //title: 'My App',
        home: NMHome(),
        // Consumer<AuthProvider>(
        //   builder: (context, authProvider, _) {
        //     // Based on the login status, navigate to the appropriate screen
        //     if (authProvider.isLoggedIn) {
        //       return NMHome();
        //     } else {
        //       return MobileNumberPage();
        //     }
        //   },
        // ),
        theme: ThemeData(
          primaryColor: Color.fromARGB(255, 186, 43, 35), // Your custom color
          accentColor:
              Color.fromARGB(255, 186, 43, 35), // Optional accent color
          textSelectionTheme: TextSelectionThemeData(
            cursorColor:
                Color.fromARGB(255, 222, 222, 222), // Your custom cursor color
            // Customize other text selection properties as needed
          ),
          inputDecorationTheme: InputDecorationTheme(
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(255, 191, 189, 189)),
            ),
            // Customize other input decoration properties as needed
          ),
          // Add more theme properties as needed
        ),
      ),
    );
  }
}
