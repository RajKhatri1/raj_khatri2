import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:raj_khatri2/controller/homecontroller.dart';
import 'package:raj_khatri2/model/homemodel/Homemodel.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  homecontroller controller = Get.put(homecontroller());

  void initState() {
    controller.getapi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(
          title: Text("OCEANMTECH",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 1)),
          backgroundColor: Colors.black,
        ),
        body: ListView.builder(
          itemCount: controller.h1.value.productData?.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Obx(
                () => Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.white,
                      boxShadow: [BoxShadow(color: Colors.black26)]),
                  height: 150,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                            width: 130,
                            height: 130,
                            child: Image.network(
                                "${controller.h1.value.productData?[index].image}",
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 200,
                              child: Text(
                                "${controller.h1.value.productData?[index].name}",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                                width: 200,
                                child: Text(
                                    "Category : ${controller.h1.value.productData?[index].categoryName}",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w600,
                                        overflow: TextOverflow.ellipsis))),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                                "Price : ${controller.h1.value.productData?[index].price}",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w600)),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                                "Rate : ${controller.h1.value.productData?[index].averageRating}",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w600)),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
        drawer: Drawer(
          backgroundColor: Colors.white,
          width: 250,
          surfaceTintColor: Colors.black,
          shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              TextButton(
                onPressed: () {
                  controller.sorting();
                },
                child: Text(
                  "A-Z sorting",
                  style: TextStyle(fontSize: 20, letterSpacing: 2),
                ),
              ),
              SizedBox(height: 5,),
              TextButton(
                onPressed: () {
                  controller.sorting();
                },
                child: Text(
                  "Z-A sorting",
                  style: TextStyle(fontSize: 20, letterSpacing: 2),
                ),
              ),
              SizedBox(height: 5,),
              TextButton(
                onPressed: () {
                  controller.sorting();
                },
                child: Text(
                  "Catehory sorting",
                  style: TextStyle(fontSize: 20, letterSpacing: 2),
                ),
              ),
              SizedBox(height: 5,),
              TextButton(
                onPressed: () {
                  controller.sorting();
                },
                child: Text(
                  "price sorting",
                  style: TextStyle(fontSize: 20, letterSpacing: 2),
                ),
              ),
              SizedBox(height: 5,),
              TextButton(
                onPressed: () {
                  controller.sorting();
                },
                child: Text(
                  "rating sorting",
                  style: TextStyle(fontSize: 20, letterSpacing: 2),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
