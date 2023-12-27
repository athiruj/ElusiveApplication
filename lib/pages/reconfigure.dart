import 'package:elusive_application/components/elusive_button.dart';
import 'package:flutter/material.dart';

import '../assets/e_icons.dart';
import '../components/elusive_input_decoration.dart';
import '../components/elusive_types.dart';

class Reconfigure extends StatefulWidget {
  const Reconfigure({super.key});

  @override
  State<Reconfigure> createState() => _PairingState();
}

class _PairingState extends State<Reconfigure> with TickerProviderStateMixin {
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
      backgroundColor: color.tertiary,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            children: [
              Positioned(
                bottom: endColumn[1],
                child: Icon(
                  EIcons.reconfig,
                  size: 150,
                  color: color.onTertiary,
                ),
              ),
              Positioned(
                top: startColumn[2],
                child: SizedBox(
                  width: width,
                  child: Form(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: TextFormField(
                            decoration: EInputDecoration.decotation(
                              context,
                              type: ElusiveType.green,
                              suffixText: "SSID",
                              hintText: "Enter SSID",
                            ),
                          ),
                        ),
                        TextFormField(
                          decoration: EInputDecoration.decotation(
                            context,
                            type: ElusiveType.green,
                            suffixText: "Password",
                            hintText: "Enter Password",
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: startColumn[4],
                child: SizedBox(
                  height: boxHeight,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Start reconfiguration",
                          style: style.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w400,
                            color: color.onSurface,
                          ),
                        ),
                        Text(
                          "Enter WiFi Name & Password",
                          style: style.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w400,
                            color: color.onSurface,
                          ),
                        ),
                        Text(
                          "V",
                          style: style.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w400,
                            color: color.onSurface,
                          ),
                        ),
                      ]),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: ElusiveFilledButton.green(
                    style: ElusiveFilledButton.styleFrom(
                        fixedSize: Size(width, 0)),
                    onPressed: () {},
                    child: const Text("Reconfigure")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
