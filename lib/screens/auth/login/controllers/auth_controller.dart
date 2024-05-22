import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../services/Firebase/auth_service.dart';

class AuthController extends GetxController {
  final AuthService _authService = AuthService.instance;

  var isUserLoggedIn = false.obs;
  var isLoading = false.obs;
  var user = Rxn<User>();
  var verificationID = ''.obs;

  @override
  void onInit() {
    super.onInit();
    // Attach a listener to FirebaseAuth instance to handle real-time auth changes
    _authService.auth.authStateChanges().listen((User? user) {
      if (user != null) {
        this.user.value = user;
        isUserLoggedIn(true);
      } else {
        isUserLoggedIn(false);
      }
    });
  }

  void signInWithGoogle(
      {required VoidCallback onSuccess, required VoidCallback onError}) async {
    isLoading(true);
    try {
      user.value = await _authService.signInWithGoogle();
      if (user.value != null) {
        onSuccess(); // Call onSuccess if the user is successfully retrieved
      } else {
        onError(); // Call onError if no user is returned
      }
    } catch (e) {
      onError(); // Call onError if an exception occurs
      Get.snackbar(
        'Error',
        'Something went wrong, please try again',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    } finally {
      isLoading(false);
    }
  }

  void signUpWithEmailAndPassword(String email, String password) async {
    isLoading(true);
    user.value = await _authService.signUpWithEmailAndPassword(email, password);
    isLoading(false);
  }

  void signInWithEmailAndPassword(String email, String password) async {
    isLoading(true);
    user.value = await _authService.signInWithEmailAndPassword(email, password);
    isLoading(false);
  }

  void signInWithPhoneNumber(String phoneNumber) async {
    isLoading(true);
    await _authService.signInWithPhoneNumber(phoneNumber);
    isLoading(false);
  }

  void verifyOTP(String otp) async {
    isLoading(true);
    if (await _authService.verifyOTP(otp)) {
      Get.snackbar("Success", "You are successfully logged in!");
    } else {
      Get.snackbar("Verification Failed", "Invalid OTP entered, please try again.");
    }
    isLoading(false);
  }

  void logout() async {
    isLoading(true);
    await _authService.auth.signOut();
    user.value = null;
    isLoading(false);
  }
}
