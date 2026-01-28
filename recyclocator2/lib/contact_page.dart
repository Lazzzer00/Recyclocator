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

            const SizedBox(height: 24),

            Text(
              'Recyclocator je aplikacija koja pomaže korisnicima da pronađu reciklažne lokacije, čitaju edukativne članke o ekologiji i reciklaži, i prijave nove lokacije za reciklažu slanjem fotografija i informacija. Cilj aplikacije je da olakša pravilno odlaganje otpada i doprinese očuvanju životne sredine.',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
