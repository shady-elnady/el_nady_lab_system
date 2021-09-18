// ignore_for_file: avoid_print

import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
  final FacebookAuth _facebookAuth = FacebookAuth.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  String? email, password, name;

  final Rxn<User> _user = Rxn<User>();

  String? get user => _user.value?.email;

  @override
  void onInit() {
    super.onInit();
    _user.bindStream(_auth.authStateChanges());
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');
      } else {
        print('User is signed in!');
      }
    });
  }

  @override
  // ignore: unnecessary_overrides
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  Future<void> signInWithGoogle() async {
    GoogleSignInAccount? gooleAcount = await _googleSignIn.signIn();
    print('gooleAcoount : $gooleAcount');
    GoogleSignInAuthentication googleSignInAuthentication =
        await gooleAcount!.authentication;
    AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleSignInAuthentication.accessToken,
      idToken: googleSignInAuthentication.idToken,
    );
    UserCredential userCredential =
        await _auth.signInWithCredential(credential);
    print('UserCredential : $userCredential');
  }

  Future<UserCredential?> signInWithFacebook() async {
    final LoginResult result = await _facebookAuth
        .login(); // by the fault we request the email and the public profile

    // loginBehavior is only supported for Android devices, for ios it will be ignored
    // final result = await FacebookAuth.instance.login(
    //   permissions: ['email', 'public_profile', 'user_birthday', 'user_friends', 'user_gender', 'user_link'],
    //   loginBehavior: LoginBehavior
    //       .DIALOG_ONLY, // (only android) show an authentication dialog instead of redirecting to facebook app
    // );

    if (result.status == LoginStatus.success) {
      AccessToken? accessToken = result.accessToken;
      print('faceBook accessToken : $accessToken');
      // ignore: unused_local_variable
      final userData = await FacebookAuth.instance.getUserData();
      // final userData = await FacebookAuth.instance.getUserData(fields: "email,birthday,friends,gender,link");

      // Create a credential from the access token
      final OAuthCredential credential =
          FacebookAuthProvider.credential(result.accessToken!.token);
      print("SHADY Credential : $credential");
      UserCredential user = await _auth.signInWithCredential(credential);
      print('facebook login : $user');
      return user;
    } else {
      return null;
    }
  }

  Future<void> logOut() async {
    try {
      await _googleSignIn.signOut();
    } on Exception catch (e) {
      print("Google not Sign In : $e");
    }
    try {
      await _facebookAuth.logOut();
    } on Exception catch (e) {
      print("FaceBook not Sign In : $e");
    }
    try {
      await _auth.signOut();
    } on FirebaseException catch (e) {
      print("FireBase not Sign In : $e");
    }
    // _accessToken = null;
    // _userData = null;
  }

  void signInWithEmailAndPassword() async {
    try {
      await _auth
          .signInWithEmailAndPassword(email: email!, password: password!)
          .then((value) => print(value));
      // Get.offAll(HomeView());
    } on FirebaseException catch (e) {
      snack(e.message);
    }
  }

  void signUpWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    }
  }
}

void snack(String? message) {}
