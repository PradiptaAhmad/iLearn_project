import 'dart:ffi';
import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RegisterC extends GetxController {
  var isObsecure = true.obs;

  // data pengguna
  var first_name = ''.obs;
  var last_name = ''.obs;
  var email = ''.obs;
  var password = ''.obs;


  // form validator
  var isFirstNameValid = false.obs;
  var isEmailValid = false.obs;
  var isPasswordValid = false.obs;
  var isChecked = false.obs;
  var isEmailUnique = true.obs;
  
  bool isAllValid() {
    if (isFirstNameValid.value == true &&
        isEmailValid.value == true &&
        isPasswordValid.value == true &&
        isChecked.value == true) {
      return true;
    } else {
      return false;
    }
  }
  void setObsecure() {
    isObsecure.value = !isObsecure.value;
  }

  Future<void> createUserLogin() async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email.value,
        password: password.value,
      );
      addDataToFirestore();
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        
      } else if (e.code == 'email-already-in-use') {
        isEmailUnique.value = false;
        isEmailValid.value = false;
        exit(1);
      }
    } catch (e) {
      print(e);
    }

  }

  Future<void> addDataToFirestore() async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    try {
      await firestore.collection('users').add({
        'first_name': first_name.value,
        'last_name': last_name.value,
        'email': email.value,
        // Add more fields as needed
      });
    } catch (e) {
      print('Error adding data to Firestore: $e');
    }
  }
}
