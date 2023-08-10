import 'package:flutter/material.dart';
import 'package:good_fundi/Account/account.dart';
import 'package:good_fundi/Home/home.dart';
import 'package:good_fundi/Jobs/jobs.dart';
import 'package:good_fundi/Sell/sell.dart';
import 'package:good_fundi/Utils/good_fundi_text_styles.dart';

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
      title: 'Good Fundi',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home'),
    BottomNavigationBarItem(
      icon: Icon(Icons.add),
      label: 'Sell'),
    BottomNavigationBarItem(
      icon: Icon(Icons.work_history),
      label: 'Jobs'),
    BottomNavigationBarItem(
      icon: Icon(Icons.person_2),
      label: 'Account'),
  ];

  List<Widget> pages = [
    HomeScreen(),
    SellScreen(),
    JobsScreen(),
    AccountScreen(),
  ];

   int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title : Text(
          'Home',
          style: GoodFundiTextStyles
          .headingTitle
          .copyWith(
            color: Colors.white
          ), )
      ),
      body: pages.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.grey.shade700,
        selectedLabelStyle: GoodFundiTextStyles
        .navBarText
        .copyWith(
          color: Colors.black
        ),
        unselectedLabelStyle: GoodFundiTextStyles
        .navBarText
        .copyWith(
          color: Colors.grey.shade700
        ),
        items: items,
        onTap: (value){
          setState(() {
            selectedIndex = value;
          });
        },),
    );
  }
}

