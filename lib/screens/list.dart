import 'package:book/model/book.dart';
import 'package:book/screens/details.dart';
import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  ListPage({Key key}) : super(key: key);
  static const routeName = 'List';

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  var bestSelling = Mock.getMockBooks().where((x) => x.type == 2).toList();
  var items = List<String>.generate(10000, (i) => "Item $i");
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          bottom: TabBar(
            indicatorColor: Colors.blue,
            labelColor: Colors.blue,
            isScrollable: false,
            unselectedLabelColor: Color(0xff171615),
            labelStyle: TextStyle(
              // fontWeight: FontWeight.bold,
              fontSize: 16,
              fontFamily: 'Montserrat',
            ),
            tabs: [
              Tab(
                text: 'Home',
              ),
              Tab(
                text: 'Top charts',
              ),
              Tab(text: 'New arrivals'),
            ],
          ),
          title: Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 15.0),
            child: TextField(
              style: TextStyle(color: Colors.pink, fontSize: 20),
              decoration: InputDecoration(
                hintText: 'Search book',
                prefixIcon: Icon(
                  Icons.search,
                  color: Color(0xffCFCAC4),
                  size: 30.0,
                ),
                suffixIcon: Icon(
                  Icons.mic,
                  color: Color(0xffCFCAC4),
                  size: 30.0,
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 5.0),
                fillColor: Colors.white,
                filled: true,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xffCFCAC4),
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xffCFCAC4),
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Top selling comics',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    height: 280,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: bestSelling.length,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 120.0,
                          child: GestureDetector(
                            onTap: () {
                             Navigator.of(context).pushNamed(Details.routeName, arguments: {'id': bestSelling[index].id,});
                            },
                            child: Card(
                              child: Wrap(
                                alignment: WrapAlignment.spaceAround,
                                children: <Widget>[
                                  Hero(
                                    tag: bestSelling[index].id,
                                    child: Image.network(
                                      bestSelling[index].url,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  ListTile(
                                    contentPadding: EdgeInsets.all(5),
                                    title: Text(
                                      bestSelling[index].name,
                                      style: TextStyle(fontSize: 13),
                                    ),
                                    subtitle: Row(
                                      children: <Widget>[
                                        Container(
                                          child: Row(
                                            children: <Widget>[
                                              Text(bestSelling[index]
                                                  .rating
                                                  .toString()),
                                              Icon(
                                                Icons.star,
                                                size: 15,
                                                color: Color(0xffCFCAC4),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Text(
                                            "${bestSelling[index].price.toString()}\$"),
                                      ],
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Sci-fi & fantasy ebooks',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    height: 280,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: bestSelling.length,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 120.0,
                          child: Card(
                            child: Wrap(
                              alignment: WrapAlignment.spaceAround,
                              children: <Widget>[
                                Image.network(
                                  bestSelling[index].url,
                                  fit: BoxFit.cover,
                                ),
                                ListTile(
                                  contentPadding: EdgeInsets.all(5),
                                  title: Text(
                                    bestSelling[index].name,
                                    style: TextStyle(fontSize: 13),
                                  ),
                                  subtitle: Row(
                                    children: <Widget>[
                                      Container(
                                        child: Row(
                                          children: <Widget>[
                                            Text(bestSelling[index]
                                                .rating
                                                .toString()),
                                            Icon(
                                              Icons.star,
                                              size: 15,
                                              color: Color(0xffCFCAC4),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Text(
                                          "${bestSelling[index].price.toString()}\$"),
                                    ],
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Fall for these romantic ebooks',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    height: 280,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: bestSelling.length,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 120.0,
                          child: Card(
                            child: Wrap(
                              alignment: WrapAlignment.spaceAround,
                              children: <Widget>[
                                Image.network(
                                  bestSelling[index].url,
                                  fit: BoxFit.cover,
                                ),
                                ListTile(
                                  contentPadding: EdgeInsets.all(5),
                                  title: Text(
                                    bestSelling[index].name,
                                    style: TextStyle(fontSize: 13),
                                  ),
                                  subtitle: Row(
                                    children: <Widget>[
                                      Container(
                                        child: Row(
                                          children: <Widget>[
                                            Text(bestSelling[index]
                                                .rating
                                                .toString()),
                                            Icon(
                                              Icons.star,
                                              size: 15,
                                              color: Color(0xffCFCAC4),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Text(
                                          "${bestSelling[index].price.toString()}\$"),
                                    ],
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}
