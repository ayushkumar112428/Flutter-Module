import 'package:flutter/material.dart';
import 'package:model_3_49/part52/radiobutton_select.dart';
import 'package:model_3_49/part53/changeBackground.dart';
import 'package:model_3_49/part54/textSize.dart';
import 'package:model_3_49/part55/CheckBoxTextViewState.dart';
import 'package:model_3_49/part56/fourImage.dart';
import 'package:model_3_49/part57/selectColors.dart';
import 'package:model_3_49/part58/SeekBarColorChange.dart';
import 'package:model_3_49/part59/loginScreen.dart';
import 'package:model_3_49/part59/registerScreen.dart';
import 'package:model_3_49/part60/foodFirstScreen.dart';
import 'package:model_3_49/part60/foodSecondScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
      home: const FoodScreen(),
    );
  }
}

