import 'package:flutter/material.dart';
import 'package:jp_design_challenge_dopatka/features/shared/my_button.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bg_startscreen.png"),
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/chick cupcakes_3D.png"),
            Image.asset("assets/images/T2.png"),
            Padding(
              padding: const EdgeInsets.only(bottom: 256),
              child: Container(
                height: 156,
                width: 256,
                decoration: const BoxDecoration(color: Colors.black),
                child: const Column(
                  children: [
                    Text("Feeling Snackish Today?"),
                    Text("Explore Angißs most popular snack slection"),
                    Text("and get instalnty happy."),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 32, right: 32, bottom: 16, top: 16),
                      child: MyButton(
                          newText: "Order Now", nextSite: null, icon: null),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
