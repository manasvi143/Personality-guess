import 'package:flutter/material.dart';
import 'package:personality_guess/data/dummy_catagories.dart';
import 'package:personality_guess/screens/questions_screen.dart';
import 'package:personality_guess/widgets/grid_view.dart';

class CatagoryScreen extends StatelessWidget {
  const CatagoryScreen({super.key});

  void _switchQuesScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => QuestionScreen(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Choose Carefully')),
        body: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 8,
                ),
                Text(
                  'Your favourit colour..',
                  style: TextStyle(
                      color: Theme.of(context)
                          .textTheme
                          .headlineLarge!
                          .decorationColor,
                      fontSize: 25),
                ),
                Icon(
                  Icons.favorite_border_sharp,
                  size: 35,
                  color: Theme.of(context).primaryColorLight,
                ),
                const SizedBox(
                  width: 8,
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Expanded(
              child: GridView(
                padding: const EdgeInsets.all(24),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    childAspectRatio: 4 / 4),
                children: [
                  for (final temp in allCatag)
                    CatagoryGridView(
                      catagg: temp,
                      onSelectedCatog: _switchQuesScreen,
                    ),
                ],
              ),
            ),
          ],
        ));
  }
}
