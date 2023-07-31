import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nmmedical/widgets/bottom_navigation.dart';
import 'package:video_player/video_player.dart';

import '../../widgets/app_drawer.dart';
import '../../widgets/basic_appbar.dart';
import '../../widgets/customContainer.dart';
import '../../widgets/userdrawer.dart';
import '../../widgets/whatsappmessage.dart';

String pathOLOGYTestCart = "";

class Pathology extends StatefulWidget {
  Pathology(TestCArt) {
    pathOLOGYTestCart = "";
    pathOLOGYTestCart = TestCArt;
  }

  @override
  State<Pathology> createState() => _PathologyState();
}

class _PathologyState extends State<Pathology> {
  final assets = 'assets/NMshort.mp4';
  late VideoPlayerController controller;
  bool _onTouch = false;

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.asset(assets)
      ..addListener(() => setState(() {}))
      ..setLooping(true)
      ..initialize().then((_) => controller.pause());
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
bool isUserProfileIconClicked = false;

  // Function to handle user-profile icon tap
  void handleUserProfileIconTap() {
    setState(() {
      isUserProfileIconClicked = true;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar("", pathOLOGYTestCart, onUserProfileIconTap: handleUserProfileIconTap),
      endDrawer: AppDrawer(isUserIconClicked: isUserProfileIconClicked),
      body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        CustomContainerBar(
          title: "PATHOLOGY",
          svgAssetPath: "assets/diagnostic-test/pathology-title.svg",
          onBackButtonPressed: () {
            Navigator.pop(context);
          },
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 14, 12, 4),
          child: Image.asset("assets/diagnostic-test/pathology-img1.jpg"),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15.0, 8, 15, 6),
          child: Text(
            "NM Medical offers Total Lab Automation for testing your blood samples.Our large are accredited by NABL.",
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 10, 0, 8),
          child: Text(
            "Lab Automated Processing Video",
            textAlign: TextAlign.start,
            style: TextStyle(
                color: const Color.fromARGB(255, 187, 42, 34),
                fontSize: 16,
                fontWeight: FontWeight.w600),
          ),
        ),
        Divider(
          indent: 15,
          endIndent: 15,
          thickness: 1.5,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 6, 15, 8),
          child: VideoPlayerWidget(controller: controller),
        ),
        Divider(
          indent: 15,
          endIndent: 15,
          thickness: 1.5,
        ),
        WhatsApp(context)
      ])),
      bottomNavigationBar: AllBottomNavigationBar(),
    );
  }
}

class VideoPlayerWidget extends StatelessWidget {
  final VideoPlayerController controller;

  const VideoPlayerWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      controller != null && controller.value.isInitialized
          ? Container(alignment: Alignment.topCenter, child: buildVideo())
          : Container(
              height: 200,
              child: Center(child: CircularProgressIndicator()),
            );

  Widget buildVideo() => Stack(
        children: <Widget>[
          buildVideoPlayer(),
          Positioned.fill(child: BasicOverlayWidget(controller: controller)),
        ],
      );

  Widget buildVideoPlayer() => AspectRatio(
        aspectRatio: controller.value.aspectRatio,
        child: VideoPlayer(controller),
      );
}

class BasicOverlayWidget extends StatelessWidget {
  final VideoPlayerController controller;

  const BasicOverlayWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () =>
            controller.value.isPlaying ? controller.pause() : controller.play(),
        child: Stack(
          children: <Widget>[
            buildPlay(),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: buildIndicator(),
            ),
          ],
        ),
      );

  Widget buildIndicator() => VideoProgressIndicator(
        controller,
        allowScrubbing: true,
      );

  Widget buildPlay() => controller.value.isPlaying
      ? Container()
      : Container(
          alignment: Alignment.center,
          color: Colors.black26,
          child: Icon(Icons.play_arrow, color: Colors.white, size: 60),
        );
}
