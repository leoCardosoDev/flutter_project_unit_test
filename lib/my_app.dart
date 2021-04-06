import 'package:flutter/material.dart';

import 'utils/theme_version_fonts.dart';
import 'routes/pages.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: ThemeVersionFonts.textTheme,
      ),
      initialRoute: Pages.INITIAL,
      routes: Pages.routes,
    );
  }
}
