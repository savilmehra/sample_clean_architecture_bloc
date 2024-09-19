import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neu_clone_app/neu_clone_app.dart';
import 'package:rewards_app/rewards_app.dart';
import 'package:sampleapp/bloc/home_bloc/home_bloc.dart';
import 'package:sampleapp/data/home_data/home_model.dart';
import 'package:sampleapp/presentation/home_module/widgets/home_page_circlular_product.dart';
import 'package:sampleapp/presentation/home_module/widgets/homepage_square_product.dart';
import 'package:flutter/material.dart';
import 'package:sampleapp/presentation/home_module/widgets/image_preview.dart';
import 'package:sampleapp/presentation/home_module/widgets/mini_apps.dart';
import 'package:sampleapp/presentation/home_module/widgets/video_player.dart';

import '../app_bar/custom_app_bar.dart';
import '../common_widgets/clippers/clipper_background.dart';

import '../common_widgets/crousels/home_crousel.dart';
import '../common_widgets/shimmers/home_shimmer.dart';
import '../product_module/product_gallery_page.dart';
import '../product_module/widgets/map_delivery_product.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  HomePageScreenState createState() => HomePageScreenState();
}

class HomePageScreenState extends State<HomePageScreen>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    print('state-------------------------------------- = $state');
  }

  @override
  void didChangeDependencies() {
    BlocProvider.of<HomeBloc>(context).initHome();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<HomeBloc, HomeModel>(listener: (context, state) {
        if (state.isShirtViewAllCLiked) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProductGalleryPage(),
              ));
        }
      }, child: BlocBuilder<HomeBloc, HomeModel>(builder: (context, state) {
        return Stack(
          children: [
            const ClipperBackground(
              gradientColors: [Colors.yellow, Colors.red],
            ),
            state.isLoading
                ? ShimmerHome()
                : SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: SizedBox(
                              height: 200,
                              child: state.offers != null &&
                                      state.offers!.isNotEmpty
                                  ? HomeCarousel(
                                      image: state.offers ?? [],
                                    )
                                  : SizedBox.shrink()),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 16.0, right: 16.0, top: 20.0),
                          child: MiniApps(
                              data: state.miniAppsData ?? [],
                              viewAllCLicked: (index) {
                                if (index == 1) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => RewardsApp(),
                                      ));
                                }
                                if (index == 0) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => NeuApp(),
                                      ));
                                }
                              }),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 16.0, right: 16.0, top: 20.0),
                          child: HomePageSquareProduct(
                              data: state.shirts ?? [],
                              viewAllCLicked: () {
                                BlocProvider.of<HomeBloc>(context)
                                    .shirtViewAllClicked();
                              }),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 16.0, right: 16.0, top: 20),
                          child:
                              HomePageCircularProduct(data: state.shoe ?? []),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: 300,
                            child: Card(child: VideoPlayerT()),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: 400,
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: ImagePreview(),
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: 300,
                            child: Card(
                              child: Padding(
                                padding: EdgeInsets.all(4.0),
                                child: MapDeliveryProduct(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
            const Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: CommonAppBar(),
                )),
          ],
        );
      })),
    );
  }
}
