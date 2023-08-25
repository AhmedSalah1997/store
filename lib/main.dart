import 'package:flutter/material.dart';
import 'package:note_app/mobile.dart';
import 'package:note_app/web.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

// contactus@elarabygroup.com
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Builder(
          builder: (context) {
            if (MediaQuery.of(context).size.width.toInt() <= 560)
              return const MobileScreen();
            return const WebScreen();
          },
        )

        // LayoutBuilder(
        //   builder: (context, constraints) {
        //     debugPrint(constraints.minWidth.toInt().toString());
        //     if (constraints.minWidth.toInt() <= 560) return const MobileScreen();
        //     return const WebScreen();
        //   },
        // ),
        );
  }
}
