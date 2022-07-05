import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoaderDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      children: [
        Center(
          child: Column(
            children: [
              CupertinoActivityIndicator(
                animating: true,
              ),
              Text('Please wait...')
            ],
          ),
        )
      ],
    );
  }
}
