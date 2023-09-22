// ignore_for_file: prefer_const_constructors

import 'package:dota_statz/components/medal.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
            onPressed: onPressed,
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.white.withOpacity(0)),
                padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(vertical: 15)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.blue, width: 3)))),
            child: const Text(
              'Get Started',
              style: TextStyle(
                  fontSize: 20, color: Colors.white, fontFamily: 'LEMONMILK'),
            )),
      ),
    );
  }
}

class UserProfileCardHeader extends StatelessWidget {
  const UserProfileCardHeader({super.key, required this.data});
  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    int max_length = 10;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Card(
            color: Colors.blueAccent,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(children: [
                Row(
                  children: [
                    SizedBox(
                      height: 115,
                      width: 115,
                      child: Stack(
                        clipBehavior: Clip.none,
                        fit: StackFit.expand,
                        children: [
                          CircleAvatar(
                            backgroundImage: data['profile']['avatarfull'] !=
                                    '-'
                                ? NetworkImage(data['profile']['avatarfull'])
                                : AssetImage('assets/images/avatar.jpg')
                                    as ImageProvider,
                          ),
                          Positioned(
                            bottom: 0,
                            right: -25,
                            child: SizedBox(
                                width: 80,
                                height: 80,
                                child:
                                    medalImage(data['rank_tier'].toString())),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          data['profile']['personaname'].length <= max_length
                              ? data['profile']['personaname']
                              : data['profile']['personaname']
                                      .substring(0, max_length) +
                                  '...',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          data['leaderboard_rank'] != null
                              ? 'Leaderboard : ${data['leaderboard_rank']}'
                              : '',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
