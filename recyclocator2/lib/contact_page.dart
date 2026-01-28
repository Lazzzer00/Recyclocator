import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Tim aplikacije',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20),

      
            Text(
              '• Doris Đurđević\n'
              '• Lazar Knežević\n',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge,
            ),

            const SizedBox(height: 24),

            Text(
              'Učenici drugog razreda računarskog smjera Gimnazije u Doboju.',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}