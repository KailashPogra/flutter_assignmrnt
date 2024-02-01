import 'package:assignment/view/passanger_info_screen.dart';
import 'package:assignment/view_model/passanger_info_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PassangerInfoModel()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          useMaterial3: false,
          radioTheme: RadioThemeData(
            fillColor: MaterialStateColor.resolveWith(
              (states) {
                if (states.contains(MaterialState.selected)) {
                  return Colors.green; // Active color
                }
                return Colors.grey; // Inactive color
              },
            ),
          ),
          checkboxTheme: CheckboxThemeData(
            fillColor: MaterialStateColor.resolveWith(
              (states) {
                if (states.contains(MaterialState.selected)) {
                  return Colors.green; // Color when checkbox is selected
                } else {
                  return Colors.white; // Color when checkbox is not selected
                }
              },
            ),
            side: BorderSide(
                color: Colors.transparent), // Set border color to transparent
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: PassangerInfoScreen(),
      ),
    );
  }
}
