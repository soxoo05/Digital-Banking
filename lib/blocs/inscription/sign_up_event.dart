part of 'sign_up_bloc.dart';

sealed class SignUpEvent extends Equatable {
  const SignUpEvent();

  @override
  List<Object> get props => [];
}

class SignUpRequired extends SignUpEvent{
  final LocalUser user;
  final String password;

  const SignUpRequired(this.user, this.password);
}