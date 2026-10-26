import 'package:flutter/material.dart';

void main() {
  runApp(const Pavlova());
}

class Pavlova extends StatelessWidget {
  const Pavlova({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Jornadal_Activity 3",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color.fromARGB(255, 42, 1, 6),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset('assets/pavlova.jpg', fit: BoxFit.cover, height: 350),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Strawberry Pavlova",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "A strawberry pavlova is a classic meringue-based dessert featuring a crisp, crackly outer shell and a soft, marshmallow-like center, generously topped with whipped cream (Chantilly cream) and fresh strawberries.",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      height: 1.5,
                    ),
                  ),

                  const SizedBox(height: 16),
                  Center(child: buildRatingRow()),
                  const SizedBox(height: 24),
                  buildIconTabs(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildRatingRow() => Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Row(
        children: List.generate(
          5,
          (index) => Icon(
            index < 3 ? Icons.star : Icons.star_border,
            color: Colors.yellow,
            size: 20,
          ),
        ),
      ),
      const SizedBox(width: 8),
      const Text(
        "90 Reviews",
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    ],
  );

  Widget buildIconTab(IconData icon, String label, String value) => Column(
    children: [
      Icon(icon, color: Colors.yellow, size: 28),
      const SizedBox(height: 4),
      Text(
        label,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 12,
        ),
      ),
      const SizedBox(height: 4),
      Text(value, style: const TextStyle(fontSize: 13, color: Colors.black)),
    ],
  );

  Widget buildIconTabs() => Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      buildIconTab(Icons.timer_outlined, 'PREP', '25 min'),
      buildIconTab(Icons.restaurant, 'COOK', '1 gr'),
      buildIconTab(Icons.people_alt, 'FEEDS', '4-6 hrs'),
    ],
  );
}
