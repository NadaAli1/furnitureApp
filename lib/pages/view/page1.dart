import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furnitureapp/pages/view/page2.dart';

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child: Icon(Icons.apps_rounded),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[300],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Delivery Address',
                      ),
                      Row(
                        children: [
                          Text(
                            '4519 Washington Ave',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          Icon(Icons.keyboard_arrow_down),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    height: 50,
                    width: 50,
                    child: Icon(Icons.notifications),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[300],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: TextFormField(
                      cursorColor: Colors.grey[700],
                      decoration: InputDecoration(
                        hintText: 'Search',
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey[700],
                        ),
                        fillColor: Colors.grey[300],
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      height: 50,
                      width: 50,
                      child: Icon(
                        Icons.tune_sharp,
                        color: Colors.white,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black38,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  InkWell(
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/i1p1.jpg'),
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/i3p1.jpg'),
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/i4p1.jpg'),
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/i2p1.jpg'),
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/i5p1.jpg'),
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            Container(
                              height: 270,
                              width: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                              ),
                            ),
                            CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.black38,
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          top: 20,
                          left: 5,
                          right: 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                alignment: AlignmentDirectional.topEnd,
                                children: [
                                  Container(
                                    height: 180,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/classicchair.jpeg'),
                                      ),
                                    ),
                                  ),
                                  CircleAvatar(
                                    radius: 15,
                                    backgroundColor: Colors.white,
                                  ),
                                  CircleAvatar(
                                    child: Icon(
                                      Icons.favorite_border_sharp,
                                      color: Colors.red,
                                    ),
                                    backgroundColor: Colors.white,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Classic Chair',
                                    style: TextStyle(
                                        color: Colors.black45, fontSize: 18),
                                  ),
                                  Spacer(),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      Text('4.5')
                                    ],
                                  ),
                                ],
                              ),
                              Text('\$115.00'),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Stack(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            Container(
                              height: 270,
                              width: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                              ),
                            ),
                            CircleAvatar(
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                              radius: 15,
                              backgroundColor: Colors.black38,
                            ),
                          ],
                        ),
                        Positioned(
                          top: 20,
                          left: 5,
                          right: 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                alignment: AlignmentDirectional.topEnd,
                                children: [
                                  Container(
                                    height: 180,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('assets/oxchair.jpg'),
                                      ),
                                    ),
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 15,
                                  ),
                                  CircleAvatar(
                                    child: Icon(
                                      Icons.favorite_border_sharp,
                                      color: Colors.red,
                                    ),
                                    backgroundColor: Colors.white,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Ox Eyes Chair',
                                    style: TextStyle(
                                        color: Colors.black45, fontSize: 18),
                                  ),
                                  Spacer(),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      Text('(3.5)')
                                    ],
                                  ),
                                ],
                              ),
                              Text('\$120.00'),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Stack(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            Container(
                              height: 270,
                              width: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                              ),
                            ),
                            CircleAvatar(
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                              radius: 15,
                              backgroundColor: Colors.black38,
                            ),
                          ],
                        ),
                        Positioned(
                          top: 20,
                          left: 5,
                          right: 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                alignment: AlignmentDirectional.topEnd,
                                children: [
                                  Container(
                                    height: 180,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/modernchair.jpg'),
                                      ),
                                    ),
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 15,
                                  ),
                                  CircleAvatar(
                                    child: Icon(
                                      Icons.favorite_border_sharp,
                                      color: Colors.red,
                                    ),
                                    backgroundColor: Colors.white,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Modern Chair',
                                    style: TextStyle(
                                        color: Colors.black45, fontSize: 18),
                                  ),
                                  Spacer(),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      Text('(3.0)')
                                    ],
                                  ),
                                ],
                              ),
                              Text('\$115.00'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'Popular',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  Spacer(),
                  Text(
                    'View All',
                    style: TextStyle(
                        fontWeight: FontWeight.w200,
                        decoration: TextDecoration.underline),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.topEnd,
                          children: [
                            Container(
                              height: 60,
                              width: 180,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white),
                            ),
                            Opacity(
                              opacity: 0.4,
                              child: CircleAvatar(
                                backgroundColor: Colors.red,
                                radius: 15,
                                child: Icon(
                                  Icons.favorite_border_sharp,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          top: 5,
                          bottom: 5,
                          left: 5,
                          right: 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                alignment: AlignmentDirectional.topEnd,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                'assets/popchair.webp'),
                                          ),
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Arm Chair',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w300),
                                          ),
                                          Text(
                                            '\$120.00',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w800),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Stack(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.topEnd,
                          children: [
                            Container(
                              height: 60,
                              width: 180,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white),
                            ),
                            Opacity(
                              opacity: 0.4,
                              child: CircleAvatar(
                                backgroundColor: Colors.red,
                                radius: 15,
                                child: Icon(
                                  Icons.favorite_border_sharp,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          top: 5,
                          bottom: 5,
                          left: 5,
                          right: 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                alignment: AlignmentDirectional.topEnd,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                'assets/dinchair.jpg'),
                                          ),
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Dining Chair',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w300),
                                          ),
                                          Text(
                                            '\$120.00',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w800),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[300],
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        selectedItemColor: Colors.black38,
        unselectedItemColor: Colors.grey[400],
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_sharp), label: ''),
          BottomNavigationBarItem(
              icon: FloatingActionButton(
                mini: true,
                child: Icon(
                  Icons.shopping_cart,
                  color: Colors.amber,
                ),
                backgroundColor: Colors.black38,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PageTwo()));
                },
              ),
              label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: ''),
        ],
      ),
    );
  }
}
