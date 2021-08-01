import 'package:flutter_app/services/database.dart';
//import 'package:ecommerceproject/utils/globalData.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthService {
  static FirebaseAuth _auth = FirebaseAuth.instance;
//log in with email and password
  Future logIn(String email, String password, BuildContext context) async {
    try {
      UserCredential userCredentials = await _auth.signInWithEmailAndPassword(email: email, password: password);
      User user = userCredentials.user;
      return user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print(e);
      } else if (e.code == 'wrong-password') {
        print(e);
      }
      return null;
    }
  }

//sign up with email and password
  Future signUp(String name, String email, String password, BuildContext context) async {
    try {
      UserCredential userCredentials = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      User user = userCredentials.user;

      user?.updateDisplayName(name);
      await DatabaseService(uid: user?.uid).updateUserDData(name, email);
      return user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print(e);
      } else if (e.code == 'email-already-in-use') {
        print(e);
      }
      return null;
    }
  }

//log out

  Future signOut() async {
    try{
      return await _auth.signOut();
    }catch(e){
      print(e.toString());
      return null;
    }
  }





//get user data
  /* getUserData() {
    final User user = _auth.currentUser;
    GlobalData.user = UserData(
        displayName: user?.displayName,
        email: user?.email,
        photoUrl: user?.photoURL,
        phoneNumber: user?.phoneNumber,
        uid: user?.uid);
  }

  updateProfilePic(String? photoUrl) async {
    final User user = _auth.currentUser;
    user?.updatePhotoURL(photoUrl);
    await DatabaseService(uid: user?.uid).updateUserPhoto(photoUrl);
    return user;
  }*/
}
