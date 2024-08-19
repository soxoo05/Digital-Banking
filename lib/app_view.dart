import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:digital/screen/auth/Welcome_screen.dart';
import 'package:digital/screen/home/home_screen.dart';
import 'blocs/Connexion/sign_in_bloc.dart';
import 'blocs/authentication_bloc/authentication_bloc.dart';
import 'blocs/transaction/transaction_bloc.dart';
import 'blocs/transaction/transaction_event.dart';

class DigitalBankingView extends StatelessWidget {
  const DigitalBankingView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase Auth',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          surface: Colors.white,
          onSurface: Colors.black,
          primary: Color.fromRGBO(206, 147, 216, 1),
          onPrimary: Colors.black,
          secondary: Color.fromRGBO(244, 143, 177, 1),
          onSecondary: Colors.white,
          tertiary: Color.fromRGBO(255, 204, 128, 1),
          error: Colors.red,
          outline: Color(0xFF424242),
        ),
      ),
      home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
          if (state.status == AuthenticationStatus.authenticated) {
            return MultiBlocProvider(
              providers: [
                BlocProvider<SignInBloc>(
                  create: (context) => SignInBloc(
                    userRepository: context.read<AuthenticationBloc>().userRepository,
                  ),
                ),
                BlocProvider<TransactionBloc>(
                  create: (context) => TransactionBloc()..add(LoadTransactions()),
                ),
              ],
              child: const WelcomeScreen(),
            );
          } else {
            return const HomeScreen();
          }
        },
      ),
    );
  }
}
