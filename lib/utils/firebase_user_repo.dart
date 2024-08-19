import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:digital/core/model/user.dart';
import 'package:digital/utils/user_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseUserRepo implements UserRepository{
  final FirebaseAuth _firebaseAuth;
  final usersCollection = FirebaseFirestore.instance.collection('users');
  FirebaseUserRepo({
    FirebaseAuth? firebaseAuth,
}) : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance;

  @override
  // TODO: implement user
  Stream<User?> get user{
    return _firebaseAuth.authStateChanges().map((firebaseUser){
      return firebaseUser;
    });
  }

  @override
  Future<void> signIn(String email, String password) async {
    // TODO: implement signIn
    try {
        await _firebaseAuth.signInWithEmailAndPassword(
            email: email,
            password: password
        );
    }
    catch(e){
      log(e.toString());
      rethrow;
    }
  }

  @override
  Future<LocalUser> signUp(LocalUser localUser, String password) async {
    // TODO: implement signUp
    try {
      UserCredential user =_firebaseAuth.createUserWithEmailAndPassword(
          email: localUser.email,
          password: password
      ) as UserCredential;
      localUser = localUser.copyWith(
        id: user.user!.uid
      );
      return localUser;
    }
    catch(e){
    log(e.toString());
    rethrow;
    }
  }

  @override
  Future<void> setUserData(LocalUser localUser) async {
    // TODO: implement setUserData
    try {
      await usersCollection
          .doc(localUser.id)
          .set(localUser.toEntity().toDocument());
    }
    catch(e){
    log(e.toString());
    rethrow;
    }
  }
  @override
  Future<void> logOut() async{
    await _firebaseAuth.signOut();
  }
}