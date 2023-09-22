import 'package:flutter/material.dart';

Widget medalImage(String rankTier) {
  String folder = 'assets/images/seasonal-rank-';
  switch (rankTier) {
    case '11':
      return Image.asset('${folder}herald-1.png');
    case '12':
      return Image.asset('${folder}herald-2.png');
    case '13':
      return Image.asset('${folder}herald-3.png');
    case '14':
      return Image.asset('${folder}herald-4.png');
    case '15':
      return Image.asset('${folder}herald-5.png');
    case '21':
      return Image.asset('${folder}guardian-1.png');
    case '22':
      return Image.asset('${folder}guardian-2.png');
    case '23':
      return Image.asset('${folder}guardian-3.png');
    case '24':
      return Image.asset('${folder}guardian-4.png');
    case '25':
      return Image.asset('${folder}guardian-5.png');
    case '31':
      return Image.asset('${folder}crusader-1.png');
    case '32':
      return Image.asset('${folder}crusader-2.png');
    case '33':
      return Image.asset('${folder}crusader-3.png');
    case '34':
      return Image.asset('${folder}crusader-4.png');
    case '35':
      return Image.asset('${folder}crusader-5.png');
    case '41':
      return Image.asset('${folder}archon-1.png');
    case '42':
      return Image.asset('${folder}archon-2.png');
    case '43':
      return Image.asset('${folder}archon-3.png');
    case '44':
      return Image.asset('${folder}archon-4.png');
    case '45':
      return Image.asset('${folder}archon-5.png');
    case '51':
      return Image.asset('${folder}legend-1.png');
    case '52':
      return Image.asset('${folder}legend-2.png');
    case '53':
      return Image.asset('${folder}legend-3.png');
    case '54':
      return Image.asset('${folder}legend-4.png');
    case '55':
      return Image.asset('${folder}legend-5.png');
    case '61':
      return Image.asset('${folder}ancient-1.png');
    case '62':
      return Image.asset('${folder}ancient-2.png');
    case '63':
      return Image.asset('${folder}ancient-3.png');
    case '64':
      return Image.asset('${folder}ancient-4.png');
    case '65':
      return Image.asset('${folder}ancient-5.png');
    case '71':
      return Image.asset('${folder}divine-1.png');
    case '72':
      return Image.asset('${folder}divine-2.png');
    case '73':
      return Image.asset('${folder}divine-3.png');
    case '74':
      return Image.asset('${folder}divine-4.png');
    case '75':
      return Image.asset('${folder}divine-5.png');
    case '80':
      return Image.asset('${folder}immortal.png');
    default:
      return Container();
  }
}

String medalText(String rankTier) {
  switch (rankTier) {
    case '11':
      return 'Herald 1';
    case '12':
      return 'Herald 2';
    case '13':
      return 'Herald 3';
    case '14':
      return 'Herald 4';
    case '15':
      return 'Herald 5';
    case '21':
      return 'Guardian 1';
    case '22':
      return 'Guardian 2';
    case '23':
      return 'Guardian 3';
    case '24':
      return 'Guardian 4';
    case '25':
      return 'Guardian 5';
    case '31':
      return 'Crusader 1';
    case '32':
      return 'Crusader 2';
    case '33':
      return 'Crusader 3';
    case '34':
      return 'Crusader 4';
    case '35':
      return 'Crusader 5';
    case '41':
      return 'Archon 1';
    case '42':
      return 'Archon 2';
    case '43':
      return 'Archon 3';
    case '44':
      return 'Archon 4';
    case '45':
      return 'Archon 5';
    case '51':
      return 'Legend 1';
    case '52':
      return 'Legend 2';
    case '53':
      return 'Legend 3';
    case '54':
      return 'Legend 4';
    case '55':
      return 'Legend 5';
    case '61':
      return 'Ancient 1';
    case '62':
      return 'Ancient 2';
    case '63':
      return 'Ancient 3';
    case '64':
      return 'Ancient 4';
    case '65':
      return 'Ancient 5';
    case '71':
      return 'Divine 1';
    case '72':
      return 'Divine 2';
    case '73':
      return 'Divine 3';
    case '74':
      return 'Divine 4';
    case '75':
      return 'Divine 5';
    case '80':
      return 'Immortal';
    default:
      return '';
  }
}
