import 'package:book/model/book.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  static const routeName = 'Detail';

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, int>;
    int bookId = routeArgs['id'];
    var book = Mock.getMockBooks().firstWhere((x) => x.id == bookId);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Color(0xffCFCAC4), //change your color here
        ),
        actions: <Widget>[
          Icon(Icons.border_outer, color: Color(0xffCFCAC4)),
          Icon(Icons.search, color: Color(0xffCFCAC4)),
          Icon(Icons.more_vert, color: Color(0xffCFCAC4)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Container(
                height: 180,
                child: Row(
                  children: <Widget>[
                    Flexible(
                        child: Hero(
                          tag: book.id,
                          child: Image.network(
                            book.url,
                            fit: BoxFit.cover,
                          ),
                        ),
                        flex: 1),
                    Expanded(
                      flex: 2,
                      child: ListTile(
                        title: Text(
                          book.name,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsetsDirectional.only(top: 20),
                child: Row(
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                book.rating.toString(),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                ),
                              ),
                              Icon(
                                Icons.star,
                                size: 17,
                              )
                            ],
                          ),
                          Text(
                            '480 reviews',
                            style: TextStyle(fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        height: 40,
                        child: VerticalDivider(color: Colors.black45)),
                    Flexible(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.book,
                                size: 20,
                              )
                            ],
                          ),
                          Text('Ebook', style: TextStyle(fontSize: 13)),
                        ],
                      ),
                    ),
                    Container(
                        height: 40,
                        child: VerticalDivider(color: Colors.black45)),
                    Flexible(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Row(
                              children: <Widget>[
                                Text(
                                  '51',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text('Total pages'),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: (Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(
                          right: 10,
                        ),
                        child: OutlineButton(
                          onPressed: () {},
                          child: Text(
                            'Free sample',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(
                          left: 10,
                        ),
                        child: FlatButton(
                          color: Colors.blue[900],
                          onPressed: () {},
                          child: Text(
                            'Ebook \$${book.price.toString()}',
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )
                  ],
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
