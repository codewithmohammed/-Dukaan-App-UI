import 'package:flutter/material.dart';

class HomeTop extends StatelessWidget {
  const HomeTop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 220,
          width: double.infinity,
          decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Container(
            padding: const EdgeInsetsDirectional.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Transaction Limit',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'A free limit up to which you will recieve\nthe online payments directly in your bank',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Colors.grey.shade600),
                ),
                const SizedBox(
                  height: 20,
                ),
                LinearProgressIndicator(
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                  minHeight: 8,
                  value: 0.5,
                  backgroundColor: Colors.grey.shade300,
                  color: const Color.fromARGB(255, 6, 93, 207),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    '36,668 left out of ₹ 50,000',
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                SizedBox(
                  height: 35,
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5))),
                      backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 6, 93, 207),
                      ),
                    ),
                    child: const Text(
                      'Increse limit',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 16),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            height: 125,
            width: double.infinity,
            decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        const Text(
                          'Default Method',
                          style: TextStyle(fontSize: 20),
                        ),
                        const SizedBox(
                          width: 90,
                          height: 1,
                        ),
                        Text(
                          'Online Payment',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey.shade500),
                        ),
                        Icon(Icons.arrow_forward_ios,
                            color: Colors.grey.shade500)
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        const Text(
                          'Payment Profile',
                          style: TextStyle(fontSize: 20),
                        ),
                        const SizedBox(
                          width: 90,
                          height: 1,
                        ),
                        Text(
                          'Bank Account',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey.shade500),
                        ),
                        Icon(Icons.arrow_forward_ios,
                            color: Colors.grey.shade500)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            height: 170,
            width: double.infinity,
            decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Text(
                              'Payments Overview',
                              style: TextStyle(fontSize: 20),
                            ),
                            const SizedBox(
                              width: 100,
                            ),
                            Text(
                              'Life Time',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey.shade500),
                            ),
                            Icon(Icons.keyboard_arrow_down_sharp,
                                color: Colors.grey.shade500)
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 180,
                                height: 100,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: Color.fromARGB(255, 255, 111, 0),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8))),
                                child: const Padding(
                                  padding: EdgeInsets.all(12),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'AMOUNT ON HOLD',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Text(
                                        '₹0',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 35),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 180,
                                height: 100,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: Color.fromARGB(255, 30, 157, 34),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8))),
                                child: const Padding(
                                  padding: EdgeInsets.all(12),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'AMOUNT RECIEVED',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Text(
                                        '₹13,332',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 33),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
