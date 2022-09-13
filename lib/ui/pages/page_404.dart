import 'package:flutter/material.dart';
import 'package:flutter_web_app/ui/shared/custom_flat_button.dart';

class Page404 extends StatelessWidget {
  const Page404({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            const Text('404', style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            const Text('No se encontró la página', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
            CustomFlatButton(
              text: 'Regresar', 
              color: Colors.red,
              onPressed: () => Navigator.pushReplacementNamed(context, '/stateful')
            )
          ],
        )
      ),
    );
  }
}