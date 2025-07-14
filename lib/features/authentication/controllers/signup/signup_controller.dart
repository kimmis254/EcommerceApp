import 'package:ecommerceapp/data/models/user_model.dart';
import 'package:ecommerceapp/data/repositories/authentication/authentication_repository.dart';
import 'package:ecommerceapp/data/repositories/user/user_repository.dart';
import 'package:ecommerceapp/features/authentication/screens/signup/verify_email.dart';
import 'package:ecommerceapp/utils/constants/image_strings.dart';
import 'package:ecommerceapp/utils/loaders/loaders.dart';
import 'package:ecommerceapp/utils/popups/full_screen_loader.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../../../utils/http/network_manager.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  final hidePassword = true.obs;
  final privacyPolicy = true.obs;
  final email = TextEditingController();
  final lastName = TextEditingController();
  final userName = TextEditingController();
  final password = TextEditingController();
  final firstName = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  void signup() async{
    try {

      EFullScreenLoader.openLoadingDialogue(
          'We are processing your information...',
          EImages.darkAppLogo
      );

      final isConnected = await NetworkManager.instance.isConnected();
      if (isConnected) {
        EFullScreenLoader.stopLoading();
        return;
      }

      if(!signupFormKey.currentState!.validate()) {
        EFullScreenLoader.stopLoading();
        return;

      }

      if(!privacyPolicy.value) {
        ELoaders.warningSnackBar(
            title: 'Accept Privacy Policy',
          message: 'In order to create an account, you must have to read and accept our Privacy Policy and Terms of Use.',
        );
        return;
      }

      final userCredential = await AuthenticationRepository.instance.registerWithEmailAndPassword(email.text.trim(), password.text.trim());

      final newUser = UserModel(
          id: userCredential.user!.uid,
          firstName: firstName.text.trim(),
          lastName: lastName.text.trim(),
          username: userName.text.trim(),
          email: email.text.trim(),
          phoneNumber: phoneNumber.text.trim(),
          profilePicture: ''
      );

      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newUser);

      EFullScreenLoader.stopLoading();

      ELoaders.successSnackBar(title: 'Congratulations', message: 'Your account has been created successfully. Verify email to continue');

      Get.to(() => const VerifyEmailScreen());


    } catch (e) {
      EFullScreenLoader.stopLoading();

      ELoaders.errorSnackBar(title: 'Oh Snap! Something Went Wrong', message: e.toString());

    }
  }
}