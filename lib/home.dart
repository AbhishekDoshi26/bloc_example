import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_project/bloc/home_bloc.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: (value) {
                  context.read<HomeBloc>().add(
                        InputChangedEvent(input: value),
                      );
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              BlocBuilder<HomeBloc, HomeState>(
                builder: (context, state) {
                  return ElevatedButton(
                    onPressed: state.output.isEmpty
                        ? null
                        : () {
                            print(state.output);
                          },
                    child: const Text('Click'),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
