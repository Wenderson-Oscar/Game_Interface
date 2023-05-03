import 'package:flutter/material.dart';
import 'package:ex04/head.dart';
import 'package:ex04/widgets/widgets_category.dart';
import 'package:ex04/widgets/widgets_item.dart';
import 'package:ex04/product/product_list_widget.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 102, 4, 4),
        body: LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Head(),
                        color: Color.fromARGB(255, 102, 4, 4),
                        height: constraints.maxHeight*.3,
                        width: constraints.maxWidth,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: constraints.maxHeight*.7,
                      width: constraints.maxWidth,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(157, 255, 255, 255),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40.0),
                          topRight: Radius.circular(40.0),
                          
                        )
                      ),
                         
                      child: ListView(
                        children: const <Widget>[
                          Padding(
                            padding: EdgeInsets.all(12.0),
                            child: SizedBox(
                              height: 80,
                              width: 80,
                              child: CategoryList(),
                            ),
                          ),
                            SizedBox(
                              child: Text(
                                "All games",
                                style: TextStyle(color: Colors.black, fontSize: 18),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              height: 410,
                              child: ProductList(
                                scrollDerection: Axis.vertical,
                              ),
                            )
                        ],

                      ),
                    ),
                  ],
                ),
              ],
            );
          }
        ),
      ),
    );
  }
}