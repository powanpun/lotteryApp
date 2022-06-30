import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          InkWell(
              onTap: () => Navigator.pop(context),
              child: const Icon(Icons.arrow_back)),
        ],
      ),
    );
  }
}
