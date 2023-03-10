import 'package:flutter/material.dart';
import 'package:flutter_application1/route_manager/route_manager.dart';
// import 'package:flutter_application1/screens/set_phoneNumber.dart';
// import 'package:flutter_application1/route_manager/route_manager.dart';

// import 'home.dart';
// import 'package:flutter_application1/screens/first_screen.dart';
// import 'ListView/list_view_builder.dart';
// import 'input/form_validation.dart';
// import 'input/text_form_field.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      // home: const HomePage(),
      // home: const FirstScreen(),
      // home: const Home(),
      // home: const setPhoneNumber(),
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.setPhoneNumber,
      // initialRoute: Routes.setPhoneNumber,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        // backgroundColor: Colors.green,
        // appBar: AppBar(
        // title: const Text("Flutter 101"),
        // ),
        // body: ListViewBuilderClass(),
        // body: const TextFormFieldClass(),
        // body: const MyCustomForm(),
        // body: FirstScreen(),
        // body: const ListViewClass(),
        // body: const ImageHolder(
        //   img:
        //       "https://t4.ftcdn.net/jpg/01/43/23/83/360_F_143238306_lh0ap42wgot36y44WybfQpvsJB5A1CHc.jpg",
        //   title: "Image1",
        //   description:
        //       "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin et augue urna. Cras et rutrum ex, sit amet viverra eros. Donec ac libero sit amet.",
        //   ratings: "4.5",
        // ),
        );
  }
}
