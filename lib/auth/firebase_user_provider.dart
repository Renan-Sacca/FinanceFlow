import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class FinanceFlowFirebaseUser {
  FinanceFlowFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

FinanceFlowFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<FinanceFlowFirebaseUser> financeFlowFirebaseUserStream() => FirebaseAuth
    .instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<FinanceFlowFirebaseUser>(
        (user) => currentUser = FinanceFlowFirebaseUser(user));
