import 'dart:convert';

import 'package:animated_search_bar/animated_search_bar.dart';
import 'package:dota_statz/components/medal.dart';
import 'package:dota_statz/components/widgets.dart';
import 'package:dota_statz/pages/homepage_pages/search_user.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Text('Tes'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                        width: 120,
                        height: 120,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (builder) =>
                                      const SearchUserPage()));
                            },
                            child: Text('User Search'))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                        width: 120,
                        height: 120,
                        child: ElevatedButton(
                            onPressed: () {}, child: Text('User Search'))),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                        width: 120,
                        height: 120,
                        child: ElevatedButton(
                            onPressed: () {}, child: Text('User Search'))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                        width: 120,
                        height: 120,
                        child: ElevatedButton(
                            onPressed: () {}, child: Text('User Search'))),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
