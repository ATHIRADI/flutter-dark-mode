import 'package:backgrounds/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, ThemeProvider themeProvider, child) {
        return Scaffold(
          body: SafeArea(
            bottom: false,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Switch(
                        activeColor: Colors.black,
                        inactiveThumbColor: Colors.white,
                        value: themeProvider.isDark,
                        onChanged: (bool values) {
                          themeProvider.isDarkSetter = values;
                        },
                      ),
                    ),
                  ],
                ),
                Flexible(
                  flex: 1,
                  child: Container(),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        "Welcome, this is  gateway to a world of possibilities!",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    )
                  ],
                ),
                Flexible(
                  flex: 2,
                  child: Container(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
