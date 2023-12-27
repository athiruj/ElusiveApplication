import 'package:elusive_application/components/elusive_button.dart';
import 'package:elusive_application/pages/reconfigure.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import '../assets/e_icons.dart';
import '../components/elusive_types.dart';

class Pairing extends StatefulWidget {
  const Pairing({super.key});

  @override
  State<Pairing> createState() => _PairingState();
}

class _PairingState extends State<Pairing> with TickerProviderStateMixin {
  late AnimationController iconContriller;
  late Animation<double> iconAnimation;

  @override
  void initState() {
    iconContriller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    );

    iconAnimation = Tween<double>(
      begin: 0.0,
      end: 2 * math.pi,
    ).animate(CurvedAnimation(parent: iconContriller, curve: Curves.bounceIn));

    iconContriller.repeat();
    super.initState();
  }

  @override
  void dispose() {
    iconContriller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextTheme style = theme.textTheme;
    final ColorScheme color = theme.colorScheme;

    ColumnGrid grid = ColumnGrid(context,
        count: 6,
        gutter: 16.0,
        margin: const EdgeInsets.symmetric(vertical: 16.0),
        isSafeArea: true);

    List<double> startColumn = grid.atStartOrigin();
    List<double> endColumn = startColumn.reversed.toList();
    Size size = MediaQuery.of(context).size;
    double boxHeight = grid.bodyHeight;

    double width =
        (size.height / 2 > size.width) ? size.width - 32 : size.height / 2;

    return Scaffold(
      backgroundColor: color.secondary,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            children: [
              Positioned(
                bottom: endColumn[1],
                child: AnimatedBuilder(
                    animation: iconAnimation,
                    builder: (context, child) {
                      return Transform.rotate(
                        angle: iconAnimation.value,
                        child: Icon(
                          EIcons.apConnrect,
                          size: 150,
                          color: color.onSecondary,
                        ),
                      );
                    }),
              ),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: width,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "1. Turn on WiFi Connection",
                        style: style.titleSmall
                            ?.copyWith(color: color.onSecondary),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        "2. Press & Hold the Button on Device 3 second",
                        textAlign: TextAlign.center,
                        style: style.titleSmall
                            ?.copyWith(color: color.onSecondary),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      RichText(
                        text: TextSpan(
                          text: "3. Connect to “",
                          style: style.titleSmall
                              ?.copyWith(color: color.onSecondary),
                          children: <TextSpan>[
                            TextSpan(
                                text: " ElusiveWiFi",
                                style: style.titleSmall?.copyWith(
                                    color: color.onSurface,
                                    fontWeight: FontWeight.w600)),
                            const TextSpan(text: " ”"),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: startColumn[4],
                child: SizedBox(
                  height: boxHeight,
                  child: Center(
                    child: Text(
                      "Turn on wiFi & Your Device",
                      style: style.bodyLarge?.copyWith(
                        fontWeight: FontWeight.w400,
                        color: color.onSurface,
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: ElusiveFilledButton.yellow(
                    style: ElusiveFilledButton.styleFrom(
                        fixedSize: Size(width, 0)),
                    onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const Reconfigure(),
                          ),
                        ),
                    child: const Text("Next")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
