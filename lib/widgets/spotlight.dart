import 'package:danzo_clone/constants/my_routes.dart';
import 'package:danzo_clone/constants/product_list.dart';
import 'package:flutter/material.dart';

class Spotlight extends StatelessWidget {
  const Spotlight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "In SpotLight",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              TextButton(onPressed: () {}, child: const Text("VIEW ALL"))
            ],
          ),
          Column(
              children: List.generate(10, (index) {
            return Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.width * 0.3,
                      width: MediaQuery.of(context).size.width * 0.35,
                      child: Image.network(
                        "https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/61RI+3WyoTL._SL1001_.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.width * 0.3,
                          width: MediaQuery.of(context).size.width * 0.55,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "sanjesh",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "sanjesh",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "₹" + "sanjesh",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text("")
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                            right: 0,
                            bottom: 0,
                            child: Container(
                              height: 30,
                              width: 70,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                ),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                              ),
                              child: const Center(
                                  child: Text(
                                "+  ADD",
                                style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w800),
                              )),
                            ))
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  thickness: 2,
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            );
          }))

          /*SingleChildScrollView(
             scrollDirection: Axis.horizontal,
             child: Row(
                children: List.generate(spotlight.length, (index) {
                  return GestureDetector(
                    onTap: (){
                      Navigator.of(context).pushNamed(MyRoutes.detailsScreenRoutes , arguments: {
                        "img" : spotlight[index].img,
                        "name": spotlight[index].name,
                        "weight": spotlight[index].weight,
                        "price": spotlight[index].price
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width*0.35,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: MediaQuery.of(context).size.width*0.3,
                                  width: MediaQuery.of(context).size.width*0.35,
                                  child: Image.network(spotlight[index].img,fit: BoxFit.cover,),
                                ),
                                Text("sanjesh")
                              ],
                            ),
                            Text(spotlight[index].name,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                            SizedBox(height: 10,),

                            Text(spotlight[index].weight,style: TextStyle(color: Colors.grey),),
                            SizedBox(height: 5,),

                            Text("₹"+ spotlight[index].price.toString(),style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),)
                          ],
                        ),
                      ),
                    ),
                  );
                })
          ),
           ),*/
        ],
      ),
    );
  }
}
