import 'package:flutter/material.dart';
import 'package:news_app/Config/Colors.dart';

// //........ lightTheme .........
// var lightTheme = ThemeData(
//   useMaterial3:true,
//   inputDecorationTheme:const InputDecorationTheme(
//     fillColor:lightBgColor,
//     filled:true,
//     enabledBorder:InputBorder.none,
//     prefixIconColor:lightLabelColor,
//     labelStyle:TextStyle(
//       fontFamily:'Poppins',
//       fontSize:15,
//       color:lightFontColor,
//       fontWeight:FontWeight.w500
//     ),
//     hintStyle:TextStyle(
//         fontFamily:'Poppins',
//         fontSize:15,
//         color:lightFontColor,
//         fontWeight:FontWeight.w500
//     ),
//   ),
//   colorScheme: const ColorScheme.light(
//     brightness:Brightness.light,
//     surface: lightBgColor,
//     onSurface:lightFontColor,
//     primaryContainer:lightDivColor,
//     onPrimaryContainer: lightFontColor,
//     secondaryContainer: lightLabelColor,
//     primary:lightPrimaryColor
//   ),
//   textTheme:const TextTheme(
//
//     // headline
//     headlineLarge: TextStyle(
//         fontFamily:'Poppins',
//         fontSize:24,
//         color:lightFontColor,
//         fontWeight:FontWeight.w700
//     ),
//     headlineMedium: TextStyle(
//         fontFamily:'Poppins',
//         fontSize:20,
//         color:lightFontColor,
//         fontWeight:FontWeight.w600
//     ),
//     headlineSmall: TextStyle(
//         fontFamily:'Poppins',
//         fontSize:15,
//         color:lightFontColor,
//         fontWeight:FontWeight.w600
//     ),
//
//     // body
//     bodyLarge: TextStyle(
//         fontFamily:'Poppins',
//         fontSize:16,
//         color:lightFontColor,
//         fontWeight:FontWeight.w500
//     ),
//     bodyMedium: TextStyle(
//         fontFamily:'Poppins',
//         fontSize:15,
//         color:lightFontColor,
//         fontWeight:FontWeight.w400
//     ),
//     bodySmall: TextStyle(
//         fontFamily:'Poppins',
//         fontSize:13,
//         color:lightFontColor,
//         fontWeight:FontWeight.w300
//     ),
//
//     // label
//     labelLarge: TextStyle(
//         fontFamily:'Poppins',
//         fontSize:13,
//         color:lightFontColor,
//         fontWeight:FontWeight.w600
//     ),
//     labelMedium: TextStyle(
//         fontFamily:'Poppins',
//         fontSize:12,
//         color:lightFontColor,
//         fontWeight:FontWeight.w500
//     ),
//     labelSmall: TextStyle(
//         fontFamily:'Poppins',
//         fontSize:10,
//         color:lightFontColor,
//         fontWeight:FontWeight.w400
//     ),
//   ),
// );
// //........ darkTheme .........
// var darkTheme = ThemeData(
//   useMaterial3:true,
//   inputDecorationTheme:const InputDecorationTheme(
//     fillColor:lightPrimaryColor,
//     filled:true,
//     enabledBorder:InputBorder.none,
//     prefixIconColor:lightLabelColor,
//     labelStyle:TextStyle(
//         fontFamily:'Poppins',
//         fontSize:15,
//         color:lightFontColor,
//         fontWeight:FontWeight.w500
//     ),
//     hintStyle:TextStyle(
//         fontFamily:'Poppins',
//         fontSize:15,
//         color:lightFontColor,
//         fontWeight:FontWeight.w500
//     ),
//   ),
//   colorScheme: const ColorScheme.dark(
//       brightness:Brightness.dark,
//       surface: lightPrimaryColor,
//       onSurface:lightFontColor,
//       primaryContainer:lightDivColor,
//       onPrimaryContainer: lightFontColor,
//       secondaryContainer: lightLabelColor,
//       primary:lightPrimaryColor
//   ),
//   textTheme:const TextTheme(
//
//     // headline
//     headlineLarge: TextStyle(
//         fontFamily:'Poppins',
//         fontSize:24,
//         color:lightFontColor,
//         fontWeight:FontWeight.w700
//     ),
//     headlineMedium: TextStyle(
//         fontFamily:'Poppins',
//         fontSize:20,
//         color:lightFontColor,
//         fontWeight:FontWeight.w600
//     ),
//     headlineSmall: TextStyle(
//         fontFamily:'Poppins',
//         fontSize:15,
//         color:lightFontColor,
//         fontWeight:FontWeight.w600
//     ),
//
//     // body
//     bodyLarge: TextStyle(
//         fontFamily:'Poppins',
//         fontSize:16,
//         color:lightFontColor,
//         fontWeight:FontWeight.w500
//     ),
//     bodyMedium: TextStyle(
//         fontFamily:'Poppins',
//         fontSize:15,
//         color:lightFontColor,
//         fontWeight:FontWeight.w400
//     ),
//     bodySmall: TextStyle(
//         fontFamily:'Poppins',
//         fontSize:13,
//         color:lightFontColor,
//         fontWeight:FontWeight.w300
//     ),
//
//     // label
//     labelLarge: TextStyle(
//         fontFamily:'Poppins',
//         fontSize:13,
//         color:lightFontColor,
//         fontWeight:FontWeight.w600
//     ),
//     labelMedium: TextStyle(
//         fontFamily:'Poppins',
//         fontSize:12,
//         color:lightFontColor,
//         fontWeight:FontWeight.w500
//     ),
//     labelSmall: TextStyle(
//         fontFamily:'Poppins',
//         fontSize:10,
//         color:lightFontColor,
//         fontWeight:FontWeight.w400
//     ),
//   ),
// );







var darkTheme = ThemeData(
  brightness:Brightness.dark,
  useMaterial3:true,
  appBarTheme:const AppBarTheme(
    backgroundColor:dContainerColor,
  ),
  inputDecorationTheme:InputDecorationTheme(
    fillColor:dBackgroundColor,
    filled:true,
    border:UnderlineInputBorder(
      borderSide:BorderSide.none,
      borderRadius:BorderRadius.circular(10),
    ),
  ),
  colorScheme:const ColorScheme.dark(
    primary:dPrimaryColor,
    onPrimary:dOnBackgroundColor,
    surface:dBackgroundColor,
    onSurface:dOnBackgroundColor,
    primaryContainer:dContainerColor,
    onPrimaryContainer:dOnContainerColor,
  ),

  textTheme:const TextTheme(
    headlineLarge:TextStyle(
        fontSize:32,
        color:dPrimaryColor,
        fontFamily:"Poppins",
        fontWeight:FontWeight.w800
    ),
    headlineMedium:TextStyle(
        fontSize:30,
        color:dOnBackgroundColor,
        fontFamily:"Poppins",
        fontWeight:FontWeight.w600
    ),
    headlineSmall:TextStyle(
        fontSize:20,
        color:dOnBackgroundColor,
        fontFamily:"Poppins",
        fontWeight:FontWeight.w600
    ),
    labelLarge:TextStyle(
        fontSize:15,
        color:dOnContainerColor,
        fontFamily:"Poppins",
        fontWeight:FontWeight.w400
    ),
    labelMedium:TextStyle(
        fontSize:12,
        color:dOnContainerColor,
        fontFamily:"Poppins",
        fontWeight:FontWeight.w400
    ),
    labelSmall:TextStyle(
        fontSize:10,
        color:dOnContainerColor,
        fontFamily:"Poppins",
        fontWeight:FontWeight.w300
    ),
    bodyLarge:TextStyle(
        fontSize:15,
        color:dOnBackgroundColor,
        fontFamily:"Poppins",
        fontWeight:FontWeight.w500
    ),
    bodyMedium:TextStyle(
        fontSize:12,
        color:dContainerColor,
        // color:dOnBackgroundColor,
        fontFamily:"Poppins",
        fontWeight:FontWeight.w400
    ),
  ),
);