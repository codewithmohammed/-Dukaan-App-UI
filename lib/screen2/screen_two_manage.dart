import 'package:flutter/material.dart';
import 'package:ui1/icons/custom_icons_icons.dart';
import 'package:ui1/screen3/screen_three.dart';

class ScreenTwoManage extends StatelessWidget {
  const ScreenTwoManage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 3, 86, 209),
        automaticallyImplyLeading: false,
        title: const Center(
            child: Text(
          'Manage Store',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        )),
      ),
      body: SafeArea(
          child: Container(
        color: Colors.grey.shade200,
        child: Container(
            padding: const EdgeInsetsDirectional.all(10),
            child: GridView.count(
              childAspectRatio: 1.5,
              crossAxisCount: 2,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              children: [
                Card(
                  color: Colors.white,
                  child: Container(
                    padding: const EdgeInsetsDirectional.all(5),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 50,
                          width: 50,
                          child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              color: Color.fromARGB(255, 255, 102, 0),
                              child: Icon(
                                CustomIcons.bullhorn,
                                color: Colors.white,
                              )),
                        ),
                        Text(
                          'Marketing \nDesigns',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (ctx) {
                        return const ScreenThree();
                      }));
                    },
                    child: Container(
                      padding: const EdgeInsetsDirectional.all(5),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 50,
                            width: 50,
                            child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                                color: Colors.green,
                                child: Icon(
                                  CustomIcons.rupee,
                                  color: Colors.white,
                                )),
                          ),
                          Text(
                            'Online \nPayments',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  child: Container(
                    padding: const EdgeInsetsDirectional.all(5),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 50,
                          width: 50,
                          child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              color: Colors.orange,
                              child: Icon(
                                CustomIcons.coins,
                                color: Colors.white,
                              )),
                        ),
                        Text(
                          'Discount \nCoupons',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  child: Container(
                    padding: const EdgeInsetsDirectional.all(5),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 50,
                          width: 50,
                          child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              color: Color.fromARGB(255, 13, 133, 151),
                              child: Icon(
                                CustomIcons.user_friends,
                                color: Colors.white,
                              )),
                        ),
                        Text(
                          'My\nCustomers',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  child: Container(
                    padding: const EdgeInsetsDirectional.all(5),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 50,
                          width: 50,
                          child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              color: Color.fromARGB(255, 54, 54, 54),
                              child: Icon(
                                CustomIcons.qrcode,
                                color: Colors.white,
                              )),
                        ),
                        Text(
                          'Store QR \nCode',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  child: Container(
                    padding: const EdgeInsetsDirectional.all(5),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 50,
                          width: 50,
                          child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              color: Color.fromARGB(255, 67, 4, 118),
                              child: Icon(
                                CustomIcons.money,
                                color: Colors.white,
                              )),
                        ),
                        Text(
                          'Extra \nCharges',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  child: Container(
                    padding: const EdgeInsetsDirectional.all(5),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 50,
                          width: 50,
                          child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              color: Color.fromARGB(255, 186, 46, 92),
                              child: Icon(
                                CustomIcons.checklist,
                                color: Colors.white,
                              )),
                        ),
                        Text(
                          'Order \nForm',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )),
      )),
    );
  }
}
