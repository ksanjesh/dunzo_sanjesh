import 'package:danzo_clone/constants/my_routes.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade900,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: NetworkImage(
                  "https://www.powerreviews.com/wp-content/uploads/2021/03/GROCERY-SURVEY.png"),
              height: 250,
            ),
            Container(
              margin: const EdgeInsets.only(top: 50),
              child: const Text(
                "DANZO",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 35),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(MyRoutes.homeScreenRoutes);
              },
              child: Ink(
                padding:
                    const EdgeInsets.symmetric(horizontal: 80, vertical: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: Text(
                  "Get Started",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.green.shade900,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
