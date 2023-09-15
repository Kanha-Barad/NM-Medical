import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'AuthProvider.dart';
import 'screens/NM_Login.dart';
import 'screens/nm_home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final authProvider = AuthProvider();
  await authProvider.loadLoginStatus();
  await authProvider.loadLoginResponse();

  runApp(
    ChangeNotifierProvider(
      create: (_) => authProvider,
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AuthProvider()..loadLoginStatus(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
        theme: ThemeData(
          primaryColor: Color.fromARGB(255, 186, 43, 35),
          accentColor: Color.fromARGB(255, 186, 43, 35),
          textSelectionTheme: TextSelectionThemeData(
            cursorColor: Color.fromARGB(255, 222, 222, 222),
          ),
          inputDecorationTheme: InputDecorationTheme(
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(255, 191, 189, 189)),
            ),
          ),
        ),
      ),
    );
  }
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
      duration: Duration(seconds: 2),
    );

    _colorAnimation = ColorTween(
      begin: Color.fromARGB(255, 186, 43, 35),
      end: Colors.white,
    ).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );

    _animationController.forward();

    // Navigate to NMHome directly
    _navigateToMain(context);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Future<void> _navigateToMain(BuildContext context) async {
    // Check the user's login state
    AuthProvider authProvider =
        Provider.of<AuthProvider>(context, listen: false);

    await Future.delayed(Duration(seconds: 2)); // Adjust the delay as needed

    if (authProvider.isLoggedIn) {
      // If the user is logged in, navigate to NMHome directly
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => NMHome(),
      ));
    } else {
      // If the user is not logged in, navigate to the login screen
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => MobileNumberPage(),
      ));
    }
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
