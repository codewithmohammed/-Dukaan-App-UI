import 'package:flutter/material.dart';
import 'package:ui1/icons/custom_icons_icons.dart';
import 'package:ui1/screen6/screen_six.dart';

class ScreenFive extends StatelessWidget {
  const ScreenFive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                return const ScreenSix();
              }));
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        title: const Text(
          'Order #168806',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('May 31, 05:42 PM'),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                      const Text('Delivered'),
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                ),
                child: Container(
                  width: double.infinity,
                  height: 2,
                  color: Colors.grey.shade500,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '1 ITEM',
                          style: TextStyle(
                              fontWeight: FontWeight.w800, color: Colors.grey),
                        ),
                        Row(
                          children: [
                            Icon(
                              CustomIcons.clipboard_list,
                              color: Colors.blue,
                            ),
                            Text(
                              'RECIEPT',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w800),
                            )
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Row(
                        children: [
                          SizedBox(
                              width: 70,
                              height: 80,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.network(
                                    'https://source.unsplash.com/random/500%C3%97500/?shirt',
                                    width: 70,
                                    height: 80,
                                    fit: BoxFit.cover,
                                  ))),
                          const Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Explore | Men | Navy Blue',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  '1 piece',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text('Size: XL',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w600)),
                                Row(
                                  children: [
                                    Text(
                                      '1 x ₹799',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    SizedBox(
                                      width: 200,
                                    ),
                                    Text(
                                      '₹799',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 2,
                        color: Colors.grey.shade400,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Column(
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Item Total',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w600),
                              ),
                              Text('₹799',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600))
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [Text('Delivery'), Text('FREE')],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Grand Total',
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.w600)),
                                Text('₹799',
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.w600))
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 20,
                            ),
                            child: Container(
                              width: double.infinity,
                              height: 2,
                              color: Colors.grey.shade400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'CUSTOMER DETAILS',
                            style: TextStyle(
                                fontWeight: FontWeight.w800,
                                color: Colors.grey),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.share_outlined,
                                color: Colors.blue,
                              ),
                              Text(
                                'SHARE',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w800),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Deepa',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  '+91 2343256432',
                                  style: TextStyle(color: Colors.black),
                                )
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  CustomIcons.phone_circled,
                                  color: Colors.blue,
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Icon(
                                  CustomIcons.whatsapp,
                                  color: Colors.green,
                                  size: 30,
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Address',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700),
                              ),
                              Text(
                                'D 1101 Chartered Beverly\nHills,Subramanyapura P.O',
                                style: TextStyle(color: Colors.black),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'City',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700),
                              ),
                              Text(
                                'Bangalore',
                                style: TextStyle(color: Colors.black),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 100,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Pincode',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700),
                              ),
                              Text(
                                '560051',
                                style: TextStyle(color: Colors.black),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Payment',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Online',
                          style: TextStyle(color: Colors.black),
                        ),
                        Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              color: const Color.fromARGB(255, 145, 219, 149),
                            ),
                            width: 45,
                            child: const Center(
                                child: Text(
                              'PAID',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 16, 137, 20)),
                            )))
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                child: Container(
                  width: double.infinity,
                  height: 2,
                  color: Colors.grey.shade400,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'ADDITIONAL INFORMATION',
                      style: TextStyle(
                          fontWeight: FontWeight.w800, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 15),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'State',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          'Karnataka',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 15),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Email',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          'greeniceaqua@gmail.com',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            side: const BorderSide(
                                color: Colors.blue, width: 2.0), //
                          ),
                          elevation: 0,
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Share reciept',
                          style: TextStyle(color: Colors.blue, fontSize: 18),
                        ))),
              )
            ],
          ),
        ),
      )),
    );
  }
}
