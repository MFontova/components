import 'package:flutter/material.dart';

import '../themes/app_theme.dart';

class OfferCard extends StatelessWidget {
  const OfferCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            'Empresa',
            style: TextStyle(color: Colors.grey),
          ),
          const Text(
            'Título de la oferta',
            style: TextStyle(fontSize: 15),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              '20€/hora',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              children: const [
                Icon(
                  Icons.pin_drop,
                  color: AppTheme.primary,
                ),
                Text('Barcelona')
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              children: const [
                Icon(
                  Icons.calendar_month,
                  color: AppTheme.primary,
                ),
                Text('6 ene, 2023')
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              children: const [
                Icon(
                  Icons.person,
                  color: AppTheme.primary,
                ),
                Text('Quedan 15 puestos')
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: (() {}),
                child: const Text(
                  'Cancelar',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              TextButton(onPressed: (() {}), child: const Text('Inscribirme'))
            ],
          )
        ]),
      ),
    );
  }
}
