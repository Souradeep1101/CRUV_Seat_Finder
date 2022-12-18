import 'package:cruv_seat_finder/models/seats.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController seat = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  int i = 0;
  bool check = false;
  double padding = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          children: [
            Text(
              'Seat Finder',
              style: GoogleFonts.rubikBubbles(color: Colors.blue, fontSize: 40),
            ),
            const SizedBox(
              height: 20,
            ),
            Form(
              key: _formKey,
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      controller: seat,
                      cursorColor: Colors.orange,
                      decoration: InputDecoration(
                        icon: const Icon(
                          Icons.email_outlined,
                        ),
                        labelText: 'Enter seat number',
                        labelStyle: const TextStyle(),
                        helperText: 'Example: 20',
                        suffixIcon: IconButton(
                          icon: const Icon(
                            Icons.cancel_outlined,
                            color: Colors.red,
                          ),
                          onPressed: () {
                            seat.clear();
                          },
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your Seat Number!';
                        }
                        return null;
                      },
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        for (i = 0; i < seatData.length; i++) {
                          if (seatData[i] is Seats) {
                            if (seatData[i].number.toString() == seat.text) {
                              check = true;
                              break;
                            } else {
                              check = false;
                            }
                          } else {
                            check = false;
                          }
                        }
                        if (check) {
                          setState(() {
                            seatData[i].seatColor = 0xFF1565C0;
                          });
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text('Sorry! Seat not found')),
                          );
                        }
                      }
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                    ),
                    child: const Text(
                      'Find',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 5,
                mainAxisSpacing: 20,
                crossAxisCount: 5,
              ),
              itemCount: seatData.length,
              itemBuilder: (BuildContext context, int index) {
                if (seatData[index] is Seats) {
                  return Container(
                    width: 20,
                    height: 28,
                    decoration: BoxDecoration(
                      color: Color(seatData[index].seatColor),
                      border: Border.all(width: 2),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Text(
                          seatData[index].number.toString(),
                          style: const TextStyle(
                              color: Colors.black, fontSize: 20),
                        ),
                        Text(seatData[index].type,
                            style: const TextStyle(
                                color: Colors.black, fontSize: 10)),
                      ],
                    ),
                  );
                } else {
                  return seatData[index];
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
