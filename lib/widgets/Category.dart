import 'package:danzo_clone/constants/product_list.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 15.0, right: 15, top: 15, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Shop by Category",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(
            height: 30,
          ),
          GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            crossAxisSpacing: 5,
            mainAxisSpacing: 30,
            children: List.generate(categoryList.length, (index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Stack(
                      clipBehavior: Clip.none,
                      alignment: AlignmentDirectional.topCenter,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.25,
                          height: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey.withOpacity(0.5)),
                        ),
                        Positioned(
                          top: -10,
                          child: Container(
                            height: 35,
                            width: MediaQuery.of(context).size.width * 0.15,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.redAccent),
                                color: Colors.white),
                            child: Column(
                              children: [
                                const Text(
                                  "up to",
                                  style: TextStyle(color: Colors.redAccent),
                                ),
                                Text(
                                  categoryList[index].off,
                                  style: const TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          child: SizedBox(
                            height: 70,
                            width: MediaQuery.of(context).size.width * 0.15,
                            child: Image.network(
                              categoryList[index].img,
                              fit: BoxFit.cover,
                              height: 70,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Text(
                    categoryList[index].name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ],
              );
            }),
          ),
        ],
      ),
    );
  }
}
