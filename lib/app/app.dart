import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:flutter_prueba_bloc_contadores/app/blocs/homepagebloc.dart';
import 'package:flutter_prueba_bloc_contadores/app/pages/homepage.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      blocs: [Bloc((i) => HomePageBLoC())],
      dependencies: [],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
