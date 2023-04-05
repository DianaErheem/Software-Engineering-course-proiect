import 'package:dressmeup/screens/launch_screen.dart';
import 'package:dressmeup/screens/login_screen.dart';
import 'package:dressmeup/screens/sign_in_screen.dart';
import 'package:dressmeup/screens/out_boarding_screen.dart';
import 'package:dressmeup/screens/sign_up_screen.dart';
import 'package:dressmeup/screens/verifary_code.dart';
import 'package:dressmeup/screens/verify.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main (){runApp(const MyApp());}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          textTheme: TextTheme(bodyLarge: GoogleFonts.abhayaLibre(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold),
            bodyMedium: GoogleFonts.abhayaLibre(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.bold),
          ),
          appBarTheme: AppBarTheme( elevation: 0,
            color: Colors.transparent
            ,
            iconTheme: const IconThemeData(
              color: Colors.black,
            ),
            titleTextStyle: GoogleFonts.abhayaLibre(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold),
          )
      ),
      localizationsDelegates:  const [
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate
      ],
      supportedLocales: const [
        Locale('ar'),
        Locale('en')
      ],
      locale: const Locale('en'),
      initialRoute: "/launch_screen",
      routes: {
        "/launch_screen" : (context) => const LaunchScreen(),
        "/out_boarding_screen" : (context) => const OutBoardingScreen(),
        "/login_screen" : (context) => const LoginScreen(),
        "/sign_in_screen" : (context) => const SignInScreen(),
        "/sign_up_screen" : (context) => const SignUpScreen(),
        "/verify" : (context) =>  const Verification(),
        "/verify_code" : (context) =>  const VerificationCode(),

      },
    );
  }
}
