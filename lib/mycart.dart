import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/my_controller.dart';
import 'package:getx_state_management/total_page.dart';

class MyCart extends StatelessWidget {
  MyCart({super.key});
  final MyController c = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  "Books",
                  style: TextStyle(fontSize: 30, color: Colors.amber),
                ),
                Expanded(
                  child: Container(),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.redAccent),
                  child: IconButton(
                      icon: Icon(Icons.remove),
                      color: Colors.white,
                      onPressed: () => c.decrement()),
                ),
                SizedBox(
                  width: 20,
                ),
                Obx(
                  () => Text(
                    "${c.books.toString()}",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.redAccent),
                  child: IconButton(
                      icon: Icon(Icons.add),
                      color: Colors.white,
                      onPressed: () => c.increment()),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "Pens",
                  style: TextStyle(fontSize: 30, color: Colors.amber),
                ),
                Expanded(
                  child: Container(),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.redAccent),
                  child: IconButton(
                      icon: Icon(Icons.remove),
                      color: Colors.white,
                      onPressed: () => c.decrements()),
                ),
                SizedBox(
                  width: 20,
                ),
                Obx(
                  () => Text(
                    "${c.pens.toString()}",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.redAccent),
                  child: IconButton(
                      icon: Icon(Icons.add),
                      color: Colors.white,
                      onPressed: () => c.increments()),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(),
                ),
                Container(
                  width: 180,
                  height: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.green),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    onPressed: () => Get.to(() => TotalPage()),
                    child: Text(
                      "Total",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
