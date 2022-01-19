import 'package:flutter/material.dart';
import 'package:furnitureapp/pages/view/page1.dart';

class PageTwo extends StatefulWidget {
  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  int count = 01;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back_ios_rounded),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => PageOne()));
                      },
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[300],
                    ),
                  ),
                  Text(
                    'Product',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    child: Icon(Icons.shopping_cart),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[300],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Stack(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.topEnd,
                    children: [
                      Container(
                        height: 230,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[300],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.green[800],
                              ),
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.brown,
                                child: Icon(
                                  Icons.check,
                                  color: Colors.white,
                                ),
                              ),
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.black54,
                              ),
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.grey,
                              ),
                              Text('color'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    top: 40,
                    left: 5,
                    right: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            Container(
                              height: 180,
                              width: 200,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/modernchair.jpg'),
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
                      ],
                    ),
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
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  Spacer(),
                  Text(
                    '\$115.00',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  Text('(3.0)'),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description ',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'In a best traditions, constructed of hardwood with\npadding of high-resilient foam. Created by awarded\nwinning duo of Manchesti Bernadi and Fresco\nduo brothers. ',
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'Quantity : ',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        count--;
                      });
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      child: Icon(Icons.remove),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black38)),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '0$count',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        count++;
                      });
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      child: Icon(Icons.add),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black38)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: screenWidth - 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black38,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Text(
                    'Add To Cart',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
