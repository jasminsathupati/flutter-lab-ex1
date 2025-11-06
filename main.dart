import 'package:flutter/material.dart';

void main() {
  runApp(const PeriodicTableApp());
}

class PeriodicTableApp extends StatelessWidget {
  const PeriodicTableApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Periodic Table Explorer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const PeriodicTableScreen(),
    );
  }
}

class PeriodicTableScreen extends StatelessWidget {
  const PeriodicTableScreen({super.key});

  final List<Map<String, String>> elements = const [
    {'symbol': 'H', 'name': 'Hydrogen', 'number': '1'},
    {'symbol': 'He', 'name': 'Helium', 'number': '2'},
    {'symbol': 'Li', 'name': 'Lithium', 'number': '3'},
    {'symbol': 'Be', 'name': 'Beryllium', 'number': '4'},
    {'symbol': 'B', 'name': 'Boron', 'number': '5'},
    {'symbol': 'C', 'name': 'Carbon', 'number': '6'},
    {'symbol': 'N', 'name': 'Nitrogen', 'number': '7'},
    {'symbol': 'O', 'name': 'Oxygen', 'number': '8'},
    {'symbol': 'F', 'name': 'Fluorine', 'number': '9'},
    {'symbol': 'Ne', 'name': 'Neon', 'number': '10'},
    {'symbol': 'Na', 'name': 'Sodium', 'number': '11'},
    {'symbol': 'Mg', 'name': 'Magnesium', 'number': '12'},
    {'symbol': 'Al', 'name': 'Aluminium', 'number': '13'},
    {'symbol': 'Si', 'name': 'Silicon', 'number': '14'},
    {'symbol': 'P', 'name': 'Phosphorus', 'number': '15'},
    {'symbol': 'S', 'name': 'Sulfur', 'number': '16'},
    {'symbol': 'Cl', 'name': 'Chlorine', 'number': '17'},
    {'symbol': 'Ar', 'name': 'Argon', 'number': '18'},
    {'symbol': 'K', 'name': 'Potassium', 'number': '19'},
    {'symbol': 'Ca', 'name': 'Calcium', 'number': '20'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Periodic Table Explorer',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5, // Compact 5 columns
            crossAxisSpacing: 6,
            mainAxisSpacing: 6,
            childAspectRatio: 1,
          ),
          itemCount: elements.length,
          itemBuilder: (context, index) {
            final e = elements[index];
            return Card(
              elevation: 3,
              color: Colors.teal.shade50,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(e['number']!,
                      style: const TextStyle(fontSize: 12, color: Colors.grey)),
                  Text(e['symbol']!,
                      style: const TextStyle(
                          fontSize: 22, fontWeight: FontWeight.bold)),
                  Text(e['name']!,
                      style: const TextStyle(fontSize: 12, color: Colors.black54)),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
