import 'package:dinery_app/utils/routes/routes_name.dart';
import 'package:dinery_app/view/Filter_screen/filter_binding.dart';
import 'package:dinery_app/view/Filter_screen/filter_screen.dart';
import 'package:dinery_app/view/check_email/check_mail_binding.dart';
import 'package:dinery_app/view/check_email/check_mail_screen.dart';
import 'package:dinery_app/view/forget_password/forget_password_screen.dart';
import 'package:dinery_app/view/log_in/log_in_binding.dart';
import 'package:dinery_app/view/log_in/log_in_screen.dart';
import 'package:dinery_app/view/new_password/new_password_binding.dart';
import 'package:dinery_app/view/new_password/new_password_screen.dart';
import 'package:dinery_app/view/on_boarding/on_boarding_screen.dart';
import 'package:dinery_app/view/splash/splash_binding.dart';
import 'package:dinery_app/view/splash/splash_screen.dart';
import 'package:dinery_app/view/welcome/welcome_binding.dart';
import 'package:dinery_app/view/welcome/welcome_screen.dart';
import 'package:get/get.dart';

import '../../view/Home_Screen/Home_Screen_binding.dart';
import '../../view/Home_Screen/Home_screen.dart';
import '../../view/forget_password/forget_password_binding.dart';
import '../../view/on_boarding/on_boarding_binding.dart';
import '../../view/reset_screen/reset_binding.dart';
import '../../view/reset_screen/reset_screen.dart';
import '../../view/sign_up/sign_up_binding.dart';
import '../../view/sign_up/sign_up_screen.dart';

List<GetPage> page = [
  GetPage(name: splashRoutes, page: () => const SplashScreen(), binding: SplashBinding()),
  GetPage(name: onBoardingRoutes, page: () => const OnBoardingScreen(), binding: OnBoardingBinding()),
  GetPage(name: welcomeRoutes, page: () => const WelcomeScreen(), binding: WelcomeBinding()),
  GetPage(name: signUpRoutes, page: () => const SignUpScreen(), binding: SignUpBinding()),
  GetPage(name: logInRoutes, page: () => const LogInScreen(), binding: LogInBinding()),
  GetPage(name: forgetPasswordRoutes, page: () => const ForgetPasswordScreen(), binding: ForgetPasswordBinding()),
  GetPage(name: checkMailRoutes, page: () => const CheckMailScreen(), binding: CheckMailBinding()),
  GetPage(name: newPasswordRoutes, page: () => const NewPasswordScreen(), binding: NewPasswordBinding()),
  GetPage(name: resetScreenRoutes, page: () => const ResetScreen(), binding: ResetBinding()),
  GetPage(name: homeScreenRoutes, page: () => const HomeScreen(), binding: HomeScreenBinding()),
  GetPage(name: filterScreenRoutes, page: () => const FilterScreen(), binding: FilterScreenBinding()),
];
