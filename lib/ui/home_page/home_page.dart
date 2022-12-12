import 'package:flashcards_app/config/di/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/home_page_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomePageCubit>(
      create: (context) => getIt.get<HomePageCubit>(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "tytul",
          ),
        ),
        body: BlocBuilder<HomePageCubit, HomePageState>(
          builder: (context, state) {
            return Center(
              child: Column(
                children: [
                  const Text("home Page"),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
