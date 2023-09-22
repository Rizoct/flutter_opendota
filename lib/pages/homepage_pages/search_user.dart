// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:animated_search_bar/animated_search_bar.dart';
import 'package:dota_statz/components/medal.dart';
import 'package:dota_statz/components/widgets.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SearchUserPage extends StatefulWidget {
  const SearchUserPage({super.key});

  @override
  State<SearchUserPage> createState() => _HomePageState();
}

class _HomePageState extends State<SearchUserPage> {
  final ctrlSearch = TextEditingController();
  Map<String, dynamic> data = {
    "solo_competitive_rank": 0,
    "competitive_rank": 0,
    "rank_tier": 0,
    "leaderboard_rank": 0,
    "mmr_estimate": {"estimate": 0},
    "profile": {
      "account_id": 0,
      "personaname": "-",
      "name": "-",
      "plus": true,
      "cheese": 0,
      "steamid": "-",
      "avatar": "-",
      "avatarmedium": "-",
      "avatarfull": "-",
      "profileurl": "-",
      "last_login": "-",
      "loccountrycode": "-",
      "is_contributor": false,
      "is_subscriber": false
    }
  };
  Future<void> fetchPlayerData(String id) async {
    final response =
        await http.get(Uri.parse('https://api.opendota.com/api/players/$id'));
    if (response.statusCode == 200) {
      setState(() {
        data = json.decode(response.body);
      });
      print(data);
    } else {
      print('Failed to load data: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text('Player Stats'),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size(10, 50), // Adjust the height as needed
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: ctrlSearch,
                    decoration: InputDecoration(
                      hintText: 'Player ID',
                      filled: true, //<-- SEE HERE
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        elevation: MaterialStateProperty.all(0),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.indigoAccent)),
                    onPressed: () {
                      fetchPlayerData(ctrlSearch.text);
                    },
                    child: Text('Search'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            UserProfileCardHeader(data: data),
          ],
        ),
      ),
    );
  }
}
