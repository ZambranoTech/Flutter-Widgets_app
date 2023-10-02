import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackBarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';

  const SnackBarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
      content: const Text('Hola Mundo'),
      action: SnackBarAction(label: 'Ok!', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {

      showDialog(
      context: context, 
      barrierDismissible: false,
      builder:  (context) => AlertDialog(
        title: const Text('¿Estás seguro?'),
        content: const Text('Irure tempor pariatur elit proident incididunt amet sint aliqua consequat do aliquip cillum consequat duis. Nulla consequat officia ex fugiat ex. Cupidatat cillum tempor sunt mollit ea id dolore mollit labore. Laborum nisi officia anim qui veniam excepteur exercitation nisi ipsum adipisicing mollit. Cupidatat cillum dolor minim incididunt labore non commodo voluptate sunt sit. Anim sint ipsum do excepteur.'),
        actions: [
          TextButton(onPressed: () => context.pop(), child: const Text('Cancelar')),
          FilledButton(onPressed: () => context.pop(), child: const Text('Aceptar'))

        ],
      ),
      );


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar y Diálogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
                onPressed: () {
                  showAboutDialog(
                    context: context,
                    children: [
                      const Text('Cupidatat occaecat cupidatat nisi et. Anim aliqua laborum consectetur exercitation excepteur esse sunt proident proident ipsum sit aliqua reprehenderit enim. Anim excepteur irure aute ex non incididunt labore occaecat duis non do nostrud.')
                    ]
                    );
                },
                child: const Text('Licencias Usadas')),
            FilledButton.tonal(
                onPressed: () => openDialog(context), child: const Text('Mostrar diálogo'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          label: const Text('Mostrar Snackbar'),
          icon: const Icon(Icons.remove_red_eye_outlined),
          onPressed: () => showCustomSnackbar(context)),
    );
  }
}
