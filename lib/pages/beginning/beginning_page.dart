import 'package:elusive_application/components/elusive_button.dart';
import 'package:elusive_application/components/elusive_types.dart';
import 'package:flutter/material.dart';

class BeginningPage extends StatefulWidget {
  const BeginningPage({super.key});

  @override
  State<BeginningPage> createState() => _BeginningPageState();
}

class _BeginningPageState extends State<BeginningPage> {
  @override
  Widget build(BuildContext context) {
    ElusiveGrid grid = ElusiveGrid(context);

    Size screenSize = grid.screenSize;

    ThemeData theme = Theme.of(context);
    TextTheme style = theme.textTheme;
    ColorScheme color = theme.colorScheme;

    return Scaffold(
      backgroundColor: color.primary,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              color: Colors.amber.withOpacity(0.2),
                            ),
                          ),
                          Container(
                            height: 16.0,
                            color: Colors.green.withOpacity(0.2),
                          ),
                        ],
                      )),
                  Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              color: Colors.amber.withOpacity(0.2),
                            ),
                          ),
                          Container(
                            height: 16.0,
                            color: Colors.green.withOpacity(0.2),
                          ),
                        ],
                      )),
                  Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Height ${screenSize.height}",
                                  style: style.titleMedium!.copyWith(
                                      color: color.secondaryContainer),
                                ),
                                Text(
                                  "Width ${screenSize.width}",
                                  style: style.titleMedium!.copyWith(
                                      color: color.secondaryContainer),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 16.0,
                            color: Colors.green.withOpacity(0.2),
                          ),
                        ],
                      )),
                  Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Expanded(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElusiveFilledButton(
                                    style: ElusiveFilledButton.styleFrom(
                                        minimumSize:
                                            const Size(double.infinity, 56)),
                                    onPressed: () {},
                                    type: ElusiveType.primary,
                                    child: const Text('Get Size'),
                                  ),
                                ]),
                          ),
                          Container(
                            height: 16.0,
                            color: Colors.green.withOpacity(0.2),
                          ),
                        ],
                      )),
                  Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              color: Colors.amber.withOpacity(0.2),
                            ),
                          ),
                          Container(
                            height: 16.0,
                            color: Colors.green.withOpacity(0.2),
                          ),
                        ],
                      )),
                  Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              color: Colors.amber.withOpacity(0.2),
                            ),
                          ),
                          Container(
                            height: 16.0,
                            color: Colors.green.withOpacity(0.2),
                          ),
                        ],
                      )),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  "Elusive Pro.",
                  style: theme.primaryTextTheme.bodyLarge!.copyWith(
                    color: color.secondary,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
