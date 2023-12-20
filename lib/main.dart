import 'package:elusive_application/components/elusive_button.dart';
import 'package:elusive_application/components/elusive_text_form_field.dart';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: false,

        ///
        //? Look for ColorScheme in `https://figma.fun/Ed3oB5`
        ///
        colorScheme: const ColorScheme.light(
            primary: Color(0xFF951519),
            primaryContainer: Color(0xFF851114),
            onPrimary: Color(0xFF5A0D0F),
            onPrimaryContainer: Color(0xFF370809),
            secondary: Color(0xFFF1B326),
            secondaryContainer: Color(0xFFE6A50F),
            onSecondary: Color(0xFFC38B0D),
            onSecondaryContainer: Color(0xFF9F720A),
            tertiary: Color(0xFF76B100),
            tertiaryContainer: Color(0xFF6DA300),
            onTertiary: Color(0xFF5B8900),
            onTertiaryContainer: Color(0xFF486B00),
            onSurface: Color(0xFFE9E9E9)),

        ///
        //? Look for TextTheme design in `https://figma.fun/B4g5b5`
        ///
        fontFamily: "Poppins",
        //* "NotoSerif"
        ///
        primaryTextTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 32,
            fontFamily: "NotoSerif",
            fontWeight: FontWeight.w500,
            letterSpacing: 0.36,
          ),
          titleMedium: TextStyle(
            fontSize: 24,
            fontFamily: "NotoSerif",
            fontWeight: FontWeight.w500,
            letterSpacing: 0.36,
          ),
          titleSmall: TextStyle(
            fontSize: 20,
            fontFamily: "NotoSerif",
            fontWeight: FontWeight.w500,
            letterSpacing: 0.36,
          ),
          bodyLarge: TextStyle(
            fontSize: 18,
            fontFamily: "NotoSerif",
            fontWeight: FontWeight.w500,
            letterSpacing: 0.36,
          ),
          bodyMedium: TextStyle(
            fontSize: 16,
            fontFamily: "NotoSerif",
            fontWeight: FontWeight.w500,
            letterSpacing: 0.36,
          ),
          bodySmall: TextStyle(
            fontSize: 14,
            fontFamily: "NotoSerif",
            fontWeight: FontWeight.w500,
            letterSpacing: 0.36,
          ),
        ),
        //* "Poppins"
        ///
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 32,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w500,
          ),
          titleMedium: TextStyle(
            fontSize: 20,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w400,
          ),
          titleSmall: TextStyle(
            fontSize: 20,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w500,
          ),
          bodyLarge: TextStyle(
            fontSize: 18,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w500,
          ),
          bodyMedium: TextStyle(
            fontSize: 16,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w500,
          ),
          bodySmall: TextStyle(
            fontSize: 14,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w500,
          ),
        ),

        textSelectionTheme:
            const TextSelectionThemeData(cursorColor: Colors.white),

        ///
        //? Look for InputDecorationTheme in `https://figma.fun/Xanh8e`
        ///
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          fillColor: Color(0xFF851114),
          contentPadding: EdgeInsets.all(16.0),
          suffixStyle: TextStyle(
            fontSize: 20,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w400,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(12.0),
            ),
          ),
        ),

        iconButtonTheme: const IconButtonThemeData(),
        iconTheme: const IconThemeData(size: 36.0),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool focus = true;

  void focuser() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
//
