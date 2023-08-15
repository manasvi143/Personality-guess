import 'package:flutter/material.dart';
import 'package:personality_guess/model/catagory_type.dart';

class CatagoryGridView extends StatelessWidget {
  const CatagoryGridView(
      {super.key, required this.catagg, required this.onSelectedCatog});

  final CatagortType catagg;
  final void Function(BuildContext context) onSelectedCatog;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('chhavi');
        onSelectedCatog(context);
      },
      borderRadius: BorderRadius.circular(16),
      splashColor: Theme.of(context).primaryColor,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: LinearGradient(colors: [
            catagg.colr.withOpacity(0.5),
            catagg.colr.withOpacity(0.9)
          ], begin: Alignment.topLeft, end: Alignment.bottomLeft),
        ),
        child: Center(
          child: Text(
            catagg.title,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Theme.of(context).colorScheme.onTertiaryContainer),
          ),
        ),
      ),
    );
  }
}
