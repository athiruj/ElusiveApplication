import 'package:flutter/material.dart';

import 'pages/beginning/beginning.dart';

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

            /// TextInputField Style
            titleMedium: TextStyle(
              fontSize: 20,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500,
              color: Color(0xFFE9E9E9),
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

          iconButtonTheme: const IconButtonThemeData(),
          iconTheme: const IconThemeData(size: 36.0),
        ),
        home: LayoutBuilder(
          builder: (context, constraints) {
            // if (constraints.maxWidth < 600.0) {
            //   return BeginningPage();
            // }
            // if (600.0 <= constraints.maxWidth && constraints.maxWidth < 840.0) {
            //   return BeginningPage();
            // }

            // if (840.0 <= constraints.maxWidth) {
            //   return BeginningPage();
            // }

            if (constraints.maxHeight / 3 < constraints.maxWidth) {
              // not support Size
            }
            if (constraints.maxHeight / 2 >= constraints.maxWidth) {
              // Tablet Size
            }
            // Mobile Size
            return const BeginningPage();
          },
        ));
  }
}
