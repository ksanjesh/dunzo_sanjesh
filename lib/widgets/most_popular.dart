import 'package:danzo_clone/constants/product_list.dart';
import 'package:flutter/material.dart';

import '../constants/my_routes.dart';

class MostPopular extends StatelessWidget {
  const MostPopular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, bottom: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Most Popular",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              TextButton(onPressed: () {}, child: const Text("VIEW ALL"))
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: List.generate(mostPopular.length, (index) {
              return GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(MyRoutes.detailsScreenRoutes, arguments: {
                    "img": mostPopular[index].img,
                    "name": mostPopular[index].name,
                    "weight": mostPopular[index].weight,
                    "price": mostPopular[index].price
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.35,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.width * 0.3,
                          width: MediaQuery.of(context).size.width * 0.35,
                          child: Image.network(
                            mostPopular[index].img,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          mostPopular[index].name,
                          style: const TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 15),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          mostPopular[index].weight,
                          style: const TextStyle(color: Colors.grey),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "₹" + mostPopular[index].price.toString(),
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ),
              );
            })),
          )
        ],
      ),
    );
  }
}
