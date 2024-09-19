import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerT extends StatefulWidget {
  @override
  _VideoPlayerTState createState() => _VideoPlayerTState();
}

class _VideoPlayerTState extends State<VideoPlayerT>
    with TickerProviderStateMixin {
  late AnimationController _animController;

  late VideoPlayerController _controller;
  late final AnimationController _c2 = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);

  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(1.5, 0.0),
  ).animate(CurvedAnimation(
    parent: _c2,
    curve: Curves.elasticIn,
  ));




  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(
        'https://firebasestorage.googleapis.com/v0/b/sampleapp-a672e.appspot.com/o/BigBuckBunny.mp4?alt=media&token=aaf14fd9-f496-43a6-b119-4cda2461fae9'));

    _controller.addListener(() {
      setState(() {});
    });
    _controller.setLooping(true);
    _controller.initialize().then((_) => setState(() {}));
    _controller.play();

    _animController = AnimationController(
      vsync: this,
    );
    _animController.duration = Duration(seconds: 8);
    _animController.addListener(() {
      if (_animController.isCompleted) {
        _animController.repeat();
      }
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _animController.forward();
    });
  }

  @override
  void dispose() {
    _controller.dispose();

    print("deactivate");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Animation<RelativeRect> transition = RelativeRectTween(
            begin: RelativeRect.fromSize(
                const Rect.fromLTWH(0, 0, 0, 0), const Size(100, 100)),
            end: RelativeRect.fromSize(
                const Rect.fromLTWH(100, 100, 100, 100), const Size(100, 100)))
        .animate(CurvedAnimation(
      parent: _animController,
      curve: Curves.easeInOut,
    ));
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        VideoPlayer(_controller),
        //_ControlsOverlay(controller: _controller),
        VideoProgressIndicator(_controller, allowScrubbing: true),

/*

        SlideTransition(
          // the offset which we define above
          position: _offsetAnimation,
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              // Loading the GeeksForGeeks logo
              child: Image.network(

                "https://firebasestorage.googleapis.com/v0/b/sampleapp-a672e.appspot.com/o/tech-mahindra-tweaks-brand-logo-to-convey-solidarity-in-fight-against-covid-19-removebg-preview.png?alt=media&token=75e81114-bad1-4730-9cc6-f7c18c364070",
              )),
        ),*/

         PositionedTransition(rect: transition, child: Image.network(
          height: 60,
            width: 60,
            "https://firebasestorage.googleapis.com/v0/b/sampleapp-a672e.appspot.com/o/tech-mahindra-tweaks-brand-logo-to-convey-solidarity-in-fight-against-covid-19-removebg-preview.png?alt=media&token=75e81114-bad1-4730-9cc6-f7c18c364070",
           )),

      ],
    );
  }

  @override
  void deactivate() {

    print("deactivate");

  }

  @override
  void didChangeDependencies() {

    print("didChangeDependencies");

  }

  @override
  void didUpdateWidget( oldWidget) {
    print("didUpdateWidget");
  }
}
