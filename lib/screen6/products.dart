import 'package:flutter/material.dart';

class ScreenProduct extends StatefulWidget {
  const ScreenProduct({super.key});

  @override
  State<ScreenProduct> createState() => _ScreenProductState();
}

class _ScreenProductState extends State<ScreenProduct> {
  @override
  Widget build(BuildContext context) {
    bool switchedValue = false;
    return Scaffold(
      body: Container(
          color: Colors.grey.shade300,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.separated(
              itemCount: 10,
              itemBuilder: (context, index) {
                return SizedBox(
                  height: 175,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                  child: ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: Image.network(
                                  'https://source.unsplash.com/random/500%C3%97500/?shirt',
                                  height: 100,
                                  width: 100,
                                  fit: BoxFit.cover,
                                ),
                              )),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Row(
                                      children: [
                                        Text(
                                          'Couch Potato | Women...',
                                          style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(
                                          width: 50,
                                        ),
                                        Icon(
                                          Icons.more_vert,
                                          color: Colors.black,
                                        )
                                      ],
                                    ),
                                    const Row(
                                      children: [Text('1 piece')],
                                    ),
                                    const Row(
                                      children: [Text('799')],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text('In stock'),
                                        const SizedBox(
                                          width: 150,
                                        ),
                                        Switch(
                                            value: switchedValue,
                                            trackColor: MaterialStateProperty
                                                .resolveWith<Color>(
                                                    (Set<MaterialState>
                                                        states) {
                                              if (states.contains(
                                                  MaterialState.disabled)) {
                                                return Colors.blue.shade300
                                                    .withOpacity(.48);
                                              } else {
                                                return Colors.blue.shade300;
                                              }
                                            }),
                                            thumbColor: MaterialStateProperty
                                                .resolveWith<Color>(
                                                    (Set<MaterialState>
                                                        states) {
                                              if (states.contains(
                                                  MaterialState.disabled)) {
                                                return const Color.fromARGB(
                                                        255, 0, 123, 224)
                                                    .withOpacity(.48);
                                              }
                                              return const Color.fromARGB(
                                                  255, 0, 123, 224);
                                            }),
                                            onChanged: (value) {
                                              setState(() {
                                                switchedValue = value;
                                              });
                                            })
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12, bottom: 5),
                            child: Container(
                              width: double.infinity,
                              height: 1,
                              color: Colors.grey.shade300,
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.share_outlined),
                                Text('Share Product')
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return Container();
              },
            ),
          )),
    );
  }
}
