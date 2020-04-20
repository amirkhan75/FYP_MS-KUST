import '../exceptions/exceptions.dart';
import '../models/models.dart';

abstract class AuthenticationService {
  Future<User> getCurrentUser();
  Future<User> signInWithEmailAndPassword(String email, String password);
  Future<void> signOut();
}

class FakeAuthenticationService extends AuthenticationService {
  @override
  Future<User> getCurrentUser() async {
    return null; // return null for now
  }

  @override
  Future<User> signInWithEmailAndPassword(String email, String password) async {
    await Future.delayed(Duration(seconds: 1)); // simulate a network delay

    if (email.toLowerCase() != 'amirkhan@kust.com' || password != 'khan123') {
      throw AuthenticationException(message: 'Wrong username or password');
    }
    return User(name: 'Amir Khan', email: email);
  }

  @override
  Future<void> signOut() {
    return null;
  }
}
