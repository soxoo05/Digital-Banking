import 'package:digital/app_view.dart';
import 'package:digital/utils/firebase_user_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'blocs/authentication_bloc/authentication_bloc.dart';

class DigitalBanking extends StatelessWidget {
  final FirebaseUserRepo userRepository;

  const DigitalBanking(this.userRepository, {super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Digital Banking',
      home: BlocProvider<AuthenticationBloc>(
        create: (context) => AuthenticationBloc(
          userRepository: userRepository,
        ),  
        child: const DigitalBankingView(),
      ),
    );
  }
}
