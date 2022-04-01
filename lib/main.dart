import 'package:expedier/app/app.dart';
import 'package:expedier/color_scheme.dart';
import 'package:expedier/onboarding/login/login.dart';
import 'package:expedier/onboarding/login/login_user.dart';
import 'package:expedier/onboarding/login/reset_link.dart';
import 'package:expedier/onboarding/login/reset_password.dart';
import 'package:expedier/onboarding/signup/create_style.dart';
import 'package:expedier/onboarding/signup/otp.dart';
import 'package:expedier/onboarding/signup/password.dart';
import 'package:expedier/onboarding/signup/privacy.dart';
import 'package:expedier/onboarding/signup/resend_code.dart';
import 'package:expedier/onboarding/signup/security_face_id.dart';
import 'package:expedier/onboarding/signup/security_fingerprint.dart';
import 'package:expedier/onboarding/signup/signup.dart';
import 'package:expedier/onboarding/signup/successful.dart';
import 'package:expedier/onboarding/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: cMainBg,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: cMainBg,
  ));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expedier',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "SFProRounded", primaryColor: cMain),
      initialRoute: Welcome.route,
      routes: {
        Welcome.route: (context) => const Welcome(),
        Login.route: (context) => const Login(),
        ResetPassword.route: (context) => const ResetPassword(),
        ResetLink.route: (context) => const ResetLink(),
        Signup.route: (context) => const Signup(),
        PrivacyPolicy.route: (context) => const PrivacyPolicy(),
        OTP.route: (context) => const OTP(),
        ResendCode.route: (context) => const ResendCode(),
        Password.route: (context) => const Password(),
        SecurityFaceId.route: (context) => const SecurityFaceId(),
        SecurityFingerprint.route: (context) => const SecurityFingerprint(),
        CreateStyle.route: (context) => const CreateStyle(),
        SuccessfulSignup.route: (context) => const SuccessfulSignup(),
        LoginUser.route: (context) => const LoginUser(),
        App.route: (context) => const App()
      },
    );
  }
}
