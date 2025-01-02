import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyConverter extends StatelessWidget {
  const CurrencyConverter({super.key});

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        width: 2.0,
        style: BorderStyle.solid,
        color: Colors.black, // Ensure border color is defined
      ),
      borderRadius: const BorderRadius.all(Radius.circular(20)),
    );

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: ColoredBox(
        color: Colors.blue, // Define the color here
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              color: Colors.white,
              child: const Text(
                "BIG JA",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Colors.red,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  hintText: "Please enter the amount to convert using BIG JA",
                  hintStyle: const TextStyle(
                    color: Color.fromARGB(255, 117, 106, 72),
                  ),
                  prefixIcon: const Icon(Icons.monetization_on),
                  prefixIconColor: Colors.amber,
                  suffixIcon: const Icon(Icons.abc),
                  suffixIconColor: Colors.lightBlue,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            TextButton(
                onPressed: () {
                  if (kDebugMode) {
                    print("Convert button pressed");
                  }
                },
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.green),
                  fixedSize: WidgetStatePropertyAll(Size(double.infinity, 50)),
                ),
                child: const Text("Convert")),
          ],
        ),
      ),
    );
  }
}
