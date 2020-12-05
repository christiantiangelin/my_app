import 'package:firebase_auth/firebase_auth.dart';
import 'package:well_app/model/anonymous_user.dart';

class AuthService{
  final FirebaseAuth _auth = FirebaseAuth.instance;
  
  //create user obj on FirebaseUser
  AnonUser _userFromFirebase(FirebaseUser user){
    return user!=null ? AnonUser(uid: user.uid) : null;
  }
  //auth change user stream
  Stream<AnonUser> get user{
    return _auth.onAuthStateChanged.map((FirebaseUser user) => _userFromFirebase(user));
  }

  // sign in anon
  Future signInAnon() async{
    try{
      AuthResult result= await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return _userFromFirebase(user);
    }catch(e){
     print(e.toString());
     return null;
    }
  }
}