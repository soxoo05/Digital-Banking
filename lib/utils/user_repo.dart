import 'package:digital/core/model/model.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class UserRepository{
  Stream<User?>get user;

  Future<LocalUser>signUp(LocalUser localUser, String password);

  Future<void>setUserData(LocalUser user);

  Future<void>signIn(String email, String password);

  Future<void> logOut();
}