import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/page/show_form.dart';
import 'package:counter_7/page/form.dart';
import 'package:counter_7/page/mywatchlist.dart';

enum ScreenName { Home, Form, ShowForm, MyWatchList }

class DrawerClass extends StatefulWidget {
  final ScreenName parentScreen;

  DrawerClass({required this.parentScreen});

  @override
  _DrawerClassState createState() => _DrawerClassState();
}

class _DrawerClassState extends State<DrawerClass> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          // Menambahkan clickable menu
          ListTile(
            title: const Text('Counter_7'),
            onTap: () {
              // Route menu ke halaman utama
              if (widget.parentScreen == ScreenName.Home)
                Navigator.pop(context);
              else
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                );
            },
          ),
          ListTile(
            title: const Text('Tambah Budget'),
            onTap: () {
              // Route menu ke halaman form
              if (widget.parentScreen == ScreenName.Form)
                Navigator.pop(context);
              else
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyFormPage()),
                );
            },
          ),
          ListTile(
            title: const Text('Data Budget'),
            onTap: () {
              // Route menu ke halaman form
              if (widget.parentScreen == ScreenName.ShowForm)
                Navigator.pop(context);
              else
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MyShowFormPage()),
                );
            },
          ),
          ListTile(
            title: const Text('My Watchlist'),
            onTap: () {
              // Route menu ke halaman form
              if (widget.parentScreen == ScreenName.MyWatchList)
                Navigator.pop(context);
              else
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MyWatchlistPage()),
                );
            },
          ),
        ],
      ),
    );
  }
}
