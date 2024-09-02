import 'package:firebase_auth/firebase_auth.dart';
import 'package:todo_app_flutter/models/user.dart';

abstract class AuthBase {
  User? get currentUser;
  Stream<User?> authStateChanges();
  Future<User?> signInAnonymously();
  Future<void> signOut();
}

class Auth implements AuthBase{
  final _firebaseAuth = FirebaseAuth.instance;
  @override
  Stream<User?> authStateChanges() => _firebaseAuth.authStateChanges();


  @override
  User? get currentUser => _firebaseAuth.currentUser;

   @override
  Future<User?> signInAnonymously() async {
    final userCredential = await _firebaseAuth.signInAnonymously();
    return userCredential.user;
  }
  
  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
  // UserModel? _userFromFireaseUser(User user){
  //   return user != null ? UserModel(uid: user.uid) : null; 
  // }

  // Stream<User?> get user{
  //   return _auth.authStateChanges()
  //   .map((User? user) => _userFromFireaseUser(user!));
  // }

  //signin anonymous
  // Future signInAnon() async {
  //   try {
  //     UserCredential result = await _auth.signInAnonymously();
  //     User? user = result.user;
  //     return _userFromFireaseUser(user!);
  //   } catch (e) {
  //     print(e.toString);
  //     return null;
  //   }
  // }


}