import 'package:elusive_application/assets/e_icons.dart';
import 'package:elusive_application/components/elusive_types.dart';
import 'package:flutter/material.dart';

import '../pairing.dart';

class BeginningPage extends StatelessWidget {
  const BeginningPage({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    TextTheme style = theme.textTheme;
    ColorScheme color = theme.colorScheme;

    ColumnGrid grid = ColumnGrid(context,
        count: 6,
        gutter: 16.0,
        margin: const EdgeInsets.symmetric(vertical: 16.0),
        isSafeArea: true);

    List<double> startColumn = grid.atStartOrigin();
    List<double> endColumn = startColumn.reversed.toList();
    double boxHeight = grid.bodyHeight;

    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const Pairing(),
        ),
      ),
      child: Scaffold(
        backgroundColor: color.primary,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Stack(
              fit: StackFit.expand,
              alignment: Alignment.center,
              children: [
                Positioned(
                  bottom: endColumn[2],
                  child: Icon(
                    EIcons.geo,
                    size: 152,
                    color: color.onPrimary,
                  ),
                ),
                Positioned(
                  top: startColumn[3],
                  child: SizedBox(
                    height: boxHeight,
                    child: Center(
                      child: Text(
                        "Start with your first device",
                        style: style.titleSmall
                            ?.copyWith(color: color.secondaryContainer),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: startColumn[4],
                  child: SizedBox(
                    height: boxHeight,
                    child: Center(
                      child: Text(
                        "(Let's tap anywhere on screen)",
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
                  child: Text(
                    "Elusive Pro.",
                    style: theme.primaryTextTheme.bodyLarge?.copyWith(
                      color: color.secondary,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
