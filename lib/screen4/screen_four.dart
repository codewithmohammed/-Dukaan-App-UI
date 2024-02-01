import 'package:flutter/material.dart';
import 'package:ui1/icons/custom_icons_icons.dart';
import 'package:ui1/screen4/data/dataobject.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ScreenFour extends StatefulWidget {
  const ScreenFour({super.key});

  @override
  State<ScreenFour> createState() => _ScreenFourState();
}

class _ScreenFourState extends State<ScreenFour> {
  final videoURL = 'https://youtu.be/wbVOsy2P7No?si=X1IK0ULCwQ3P4MOE';

  late YoutubePlayerController _videocontroller;

  @override
  void initState() {
    super.initState();
    final videoID = YoutubePlayer.convertUrlToId(videoURL);
    _videocontroller = YoutubePlayerController(
        initialVideoId: videoID!,
        flags: const YoutubePlayerFlags(autoPlay: false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        backgroundColor: const Color.fromARGB(255, 3, 86, 209),
        title: const Center(
            child: Text(
          'Dukaan Premium',
          style: TextStyle(color: Colors.white),
        )),
      ),
      body: SafeArea(
          child: CustomScrollView(slivers: [
        const SliverToBoxAdapter(
            child: SizedBox(height: 273, child: header4())),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Text(
                  'Features',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 19,
                      color: Colors.black),
                )
              ],
            ),
          ),
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) => Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: ListTile(
                        leading: Stack(
                          alignment: Alignment.center,
                          children: <Widget>[
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.blue,
                                  width: 2.0,
                                ),
                              ),
                            ),
                            geter()[index].icon!
                          ],
                        ),
                        title: Text(
                          geter()[index].title!,
                          style: const TextStyle(fontWeight: FontWeight.w600),
                        ),
                        subtitle: Text(
                          geter()[index].subtitle!,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Colors.grey.shade500),
                        ),
                      ),
                    ),
                childCount: geter().length)),
        SliverToBoxAdapter(
          child: Container(
            color: Colors.grey.shade300,
            height: 5,
            width: double.infinity,
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            color: Colors.white,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 30, bottom: 20, right: 10, left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'What is Dukaan Premium',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, bottom: 15),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: YoutubePlayer(
                        controller: _videocontroller,
                        showVideoProgressIndicator: true,
                        bottomActions: [
                          FullScreenButton(),
                          CurrentPosition(),
                          ProgressBar(
                            isExpanded: true,
                            colors: const ProgressBarColors(
                                playedColor: Colors.blue,
                                handleColor: Colors.blueAccent),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            color: Colors.grey.shade300,
            height: 5,
            width: double.infinity,
          ),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(top: 15, left: 10, bottom: 10),
            child: Text(
              "Frequently asked questions",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: ExpansionPanelList.radio(
                  expandIconColor: Colors.red,
                  children: items
                      .map((item) => ExpansionPanelRadio(
                          value: item,
                          headerBuilder: (context, isExpanded) => ListTile(
                                title: Row(
                                  children: [
                                    const Icon(Icons.abc),
                                    Text(
                                      item.title!,
                                      style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ),
                          body: ListTile(
                            title: Text(
                              item.body!,
                              style: const TextStyle(fontSize: 14),
                            ),
                          )))
                      .toList()),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            color: Colors.grey.shade300,
            height: 5,
            width: double.infinity,
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            color: Colors.white,
            height: 190,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              child: Column(
                children: [
                  const Row(
                    children: [
                      Text(
                        'Need help? Get in touch',
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 2,
                                    spreadRadius: 0.2)
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          height: 100,
                          width: 175,
                          child: const Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 5),
                                child: Icon(
                                  CustomIcons.chat_bubble_outline,
                                  size: 40,
                                ),
                              ),
                              Text(
                                'Live Chat',
                                style: TextStyle(fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 2,
                                    spreadRadius: 0.2)
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          height: 100,
                          width: 175,
                          child: const Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 10),
                                child: Icon(
                                  CustomIcons.phone_handset,
                                  size: 30,
                                ),
                              ),
                              Text(
                                'Phone Call',
                                style: TextStyle(fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            color: Colors.grey.shade300,
            height: 3,
            width: double.infinity,
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            color: Colors.white,
            height: 75,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Select Domain',
                      style: TextStyle(color: Colors.blue),
                    )),
                ElevatedButton(
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
                    'Get Premium',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ),
      ])),
    );
  }
}

class header4 extends StatelessWidget {
  const header4({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              width: double.infinity,
              height: 125,
              color: const Color.fromARGB(255, 3, 86, 209),
            ),
          ],
        ),
        Positioned(
            top: 10,
            left: 25,
            right: 25,
            child: Container(
              height: 230,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black, blurRadius: 2, spreadRadius: 0.2)
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Image.asset(
                      'assets/images/download1.png',
                      scale: 2,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Get Dukaan Premium for just \n₹4,999/year',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'All the Advanced features for scaling your\n business',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, color: Colors.grey.shade600),
                  )
                ],
              ),
            ))
      ],
    );
  }
}
