
import 'package:flutter/material.dart';
import 'package:ui1/screen3/data/products.dart';
import 'package:ui1/screen3/home_top.dart';
import 'package:ui1/screen4/screen_four.dart';
import 'package:ui1/screen5/screen_five.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({Key? key}) : super(key: key);

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance
        .addPostFrameCallback((_) => _setWidgetPositionX(_key1));
  }

  int _currentSelection = 1;
  double _selectorPositionX = 16;
  final double _selectedWidth = 30;

  final GlobalKey _key1 = GlobalKey();
  final GlobalKey _key2 = GlobalKey();
  final GlobalKey _key3 = GlobalKey();

  void _selectedItem(int id) {
    _currentSelection = id;

    late GlobalKey selectedGlobalKey;
    switch (id) {
      case 1:
        selectedGlobalKey = _key1;
        break;
      case 2:
        selectedGlobalKey = _key2;
        break;
      case 3:
        selectedGlobalKey = _key3;
        break;
      default:
    }

    _setWidgetPositionX(selectedGlobalKey);
    setState(() {});
  }

  void _setWidgetPositionX(GlobalKey selectedKey) {
    final RenderBox widgetRenderBox =
        selectedKey.currentContext!.findRenderObject() as RenderBox;
    final widgetPosition = widgetRenderBox.localToGlobal(Offset.zero);
    final widgetSize = widgetRenderBox.size;
    _selectorPositionX =
        widgetPosition.dx - ((_selectedWidth - widgetSize.width) / 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 3, 86, 209),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                return const ScreenFour();
              }));
            },
            icon: const Icon(Icons.arrow_back, color: Colors.white)),
        title: const Center(
            child: Text(
          'Payments',
          style: TextStyle(color: Colors.white),
        )),
        actions: const [
          Icon(
            Icons.help_outline_sharp,
            size: 35,
            color: Colors.white,
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          color: Colors.grey.shade200,
          padding: const EdgeInsetsDirectional.all(10),
          child: ListView(
            children: [
              const HomeTop(),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Transactions',
                          style: TextStyle(fontSize: 20),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Stack(
                          children: [
                            Container(
                              margin:
                                  const EdgeInsets.only(left: 16, bottom: 12),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                    key: _key1,
                                    onTap: () => _selectedItem(1),
                                    child: Stack(
                                      children: [
                                        Container(
                                          width: 100,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            shape: BoxShape.rectangle,
                                            border: Border.all(
                                              color: Colors.blue,
                                              width: 2.0,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 2,
                                          left: 15,
                                          child: Text(
                                            'On Hold',
                                            style: TextStyle(
                                              color: _currentSelection == 1
                                                  ? Colors.blue
                                                  : Colors.orange,
                                              fontSize: 18,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  InkWell(
                                    key: _key2,
                                    onTap: () => _selectedItem(2),
                                    child: Stack(
                                      children: [
                                        Container(
                                          width: 120,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            shape: BoxShape.rectangle,
                                            border: Border.all(
                                              color: Colors.blue,
                                              width: 2.0,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 2,
                                          left: 15,
                                          child: Text(
                                            'Payouts(${productList.length})',
                                            style: TextStyle(
                                              color: _currentSelection == 2
                                                  ? Colors.blue
                                                  : Colors.orange,
                                              fontSize: 18,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  InkWell(
                                    key: _key3,
                                    onTap: () => _selectedItem(3),
                                    child: Stack(children: [
                                      Container(
                                        width: 100,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          shape: BoxShape.rectangle,
                                          border: Border.all(
                                            color: Colors.blue,
                                            width: 2.0,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 2,
                                        left: 15,
                                        child: Text(
                                          'Refunds',
                                          style: TextStyle(
                                            color: _currentSelection == 3
                                                ? Colors.blue
                                                : Colors.orange,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ),
                                    ]),
                                  )
                                ],
                              ),
                            ),
                            AnimatedPositioned(
                              duration: const Duration(microseconds: 350),
                              curve: Curves.fastOutSlowIn,
                              left: _selectorPositionX,
                              bottom: 4,
                              child: Container(
                                width: _selectedWidth,
                                height: 4,
                                decoration: ShapeDecoration(
                                    shape: const StadiumBorder(),
                                    color: Colors.orange[200]),
                              ),
                            )
                          ],
                        ),
                        // Read filtered products based on category
                        ItemList(
                          categoryProduct: productList
                              .where((element) =>
                                  element.category == _currentSelection)
                              .toList(),
                        )
                      ],
                    ),
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

class ItemList extends StatelessWidget {
  final List<Product> categoryProduct;

  const ItemList({super.key, required this.categoryProduct});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: categoryProduct
          .map((e) => ItemCard(
                product: e,
              ))
          .toList(),
    );
  }
}

class ItemCard extends StatelessWidget {
  final Product product;

  const ItemCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
          return const ScreenFive();
        }));
      },
      // elevation: 2,
      // margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 5, top: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                product.imageUrl,
                fit: BoxFit.cover,
                width: 60,
                height: 80,
              ),
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        product.title!,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w800),
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      Text(
                        product.price!,
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 26, 91, 202)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        product.subtitle!,
                        style: TextStyle(color: Colors.grey.shade700),
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      Container(
                        height: 10,
                        width: 10,
                        decoration: const BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Succesfull',
                        style: TextStyle(color: Colors.grey.shade600),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}