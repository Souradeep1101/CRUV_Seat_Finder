import 'package:flutter/material.dart';

class Seats {
  int number;
  String type;
  int seatColor;

  Seats(
      {required this.number, required this.type, this.seatColor = 0xFFE3F2FD});
}

List<dynamic> seatData = [
  Seats(number: 1, type: 'Lower'),
  Seats(number: 2, type: 'Middle'),
  Seats(number: 3, type: 'Upper'),
  const SizedBox(
    width: 20,
    height: 28,
  ),
  Seats(number: 7, type: 'Side Lower'),
  Seats(number: 4, type: 'Lower'),
  Seats(number: 5, type: 'Middle'),
  Seats(number: 6, type: 'Upper'),
  const SizedBox(
    width: 20,
    height: 28,
  ),
  Seats(number: 8, type: 'Side Upper'),
  Seats(number: 9, type: 'Lower'),
  Seats(number: 10, type: 'Middle'),
  Seats(number: 11, type: 'Upper'),
  const SizedBox(
    width: 20,
    height: 28,
  ),
  Seats(number: 15, type: 'Side Lower'),
  Seats(number: 12, type: 'Lower'),
  Seats(number: 13, type: 'Middle'),
  Seats(number: 14, type: 'Upper'),
  const SizedBox(
    width: 20,
    height: 28,
  ),
  Seats(number: 16, type: 'Side Upper'),
  Seats(number: 17, type: 'Lower'),
  Seats(number: 18, type: 'Middle'),
  Seats(number: 19, type: 'Upper'),
  const SizedBox(
    width: 20,
    height: 28,
  ),
  Seats(number: 23, type: 'Side Lower'),
  Seats(number: 20, type: 'Lower'),
  Seats(number: 21, type: 'Middle'),
  Seats(number: 22, type: 'Upper'),
  const SizedBox(
    width: 20,
    height: 28,
  ),
  Seats(number: 24, type: 'Side Upper'),
  Seats(number: 25, type: 'Lower'),
  Seats(number: 26, type: 'Middle'),
  Seats(number: 27, type: 'Upper'),
  const SizedBox(
    width: 20,
    height: 28,
  ),
  Seats(number: 31, type: 'Side Lower'),
  Seats(number: 28, type: 'Lower'),
  Seats(number: 29, type: 'Middle'),
  Seats(number: 30, type: 'Upper'),
  const SizedBox(
    width: 20,
    height: 28,
  ),
  Seats(number: 32, type: 'Side Upper'),
];
