

import 'package:flutter/material.dart';

class Buttoms extends StatelessWidget {
  const Buttoms({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
              padding: const EdgeInsets.only(
                  top: 10, bottom: 10, right: 27, left: 27),
              shape: const StadiumBorder(),
            ),
            onPressed: () {},
            child: const Text(
              "تم صرف الروشتة",
              style: TextStyle(fontSize: 16, color: Colors.white),
            )),
        const SizedBox(
          height: 15,
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.blue.shade400,
              padding: const EdgeInsets.only(
                  top: 10, bottom: 10, right: 60, left: 60),
              shape: const StadiumBorder(),
            ),
            onPressed: () {},
            child: const Text(
              "توجية",
              style: TextStyle(fontSize: 16, color: Colors.white),
            )),
        const SizedBox(
          height: 15,
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 10, right: 60, left: 60),
              shape: const StadiumBorder(),
            ),
            onPressed: () {},
            child: const Text(
              "طباعه",
              style: TextStyle(fontSize: 16, color: Colors.white),
            )),
             const SizedBox(
          height: 5,
        ),
      ],
    );
  }
}