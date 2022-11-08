import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uidesign/models/book.dart';
import 'package:uidesign/models/dummy_data.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        50;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Color(0xFFF1F5F9),
        appBar: PreferredSize(
          preferredSize: Size(double.infinity, 50),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: AppBar(
              // toolbarHeight: 90,
              elevation: 0,
              actions: [
                Icon(CupertinoIcons.search, color: Colors.black),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  CupertinoIcons.bell_solid,
                  color: Colors.black,
                ),
              ],
              title: Text('Hi John,', style: TextStyle(color: Colors.black)),
              backgroundColor: Color(0xFFF1F5F9),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SafeArea(
              child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 0),
                height: height * 0.15,
                width: double.infinity,
                child: Image.asset(
                  "assets/images/ABC.png",
                  width: 28,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 20,
              ),

              Container(
                height: 200,
                child: Stack(
                  children: [
                    ListView.builder(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: books.length,
                        itemBuilder: (context, index) {
                          final book = books[index];
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Dummy()),
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 5),
                              width: 350,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.network(
                                        book.imageUrl,
                                        height: 240,
                                        width: 100,
                                        fit: BoxFit.fill,
                                      )),
                                  Card(
                                    child: Container(
                                      height: 150,
                                      width: 240,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              book.title,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 17),
                                            ),
                                            Text(
                                              book.overview,
                                              maxLines: 3,
                                              style: TextStyle(
                                                  color: Colors.blueGrey),
                                            ),
                                            Row(
                                              children: [
                                                Text(book.rating),
                                                Spacer(),
                                                Text(
                                                  book.geereType,
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      color: Colors.blueGrey),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        }),
                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.only(top: 10.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "You May Also Like",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  ),
                ),
              ),

              /// Downside Container Containing book card
              Container(
                height: 300,
                width: 1000,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Container(
                    child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: books.length,
                        itemBuilder: (context, index) {
                          final book = books[index];
                          return InkWell(
                            onTap: () {},
                            child: Container(
                              padding: const EdgeInsets.all(9),
                              margin: EdgeInsets.only(right: 5),
                              width: 120,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.network(
                                          book.imageUrl,
                                          height: 140,
                                          width: 92,
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                      Card(
                                          child: Container(
                                              color: Color(0xFFF1F5F9),
                                              height: 100,
                                              width: 94,
                                              child: Column(children: [
                                                Text(
                                                  book.title,
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  book.geereType,
                                                  style: TextStyle(
                                                      color: Colors.blue),
                                                ),
                                              ])))
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ),
              ),
            ],
          )),
        ));
  }
}
