import 'package:flutter/material.dart';
import 'package:sampleapp/data/home_data/product_model.dart';
import 'package:sampleapp/presentation/product_module/widgets/product_tile.dart';
import 'package:sampleapp/presentation/product_module/widgets/product_tile_with_image.dart';

import '../common_widgets/crousels/home_crousel.dart';
import '../common_widgets/tabble/table_with_two_columns.dart';

class ProductDetailsPage extends StatefulWidget {
  final ProductModel productModel;

  const ProductDetailsPage({super.key, required this.productModel});

  @override
  _MainCollapsingToolbarState createState() => _MainCollapsingToolbarState();
}

class _MainCollapsingToolbarState extends State<ProductDetailsPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  List<TableRow> tableRows = [];

  @override
  void initState() {
    final map = ProductInfo().toJsonFromModel(widget.productModel.productInfo!);
    tableRows = map.entries
        .map((entry) => TableRow(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  entry.key,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  entry.value,
                  textAlign: TextAlign.center,
                ),
              )
            ]))
        .toList();

    tabController = TabController(length: 2, vsync: this);
    tabController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 420.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  background: Column(
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: SizedBox(
                              height: 200,
                              child: HomeCarousel(
                                  fit: BoxFit.scaleDown,
                                  image: List.generate(
                                      widget.productModel.specification!.length,
                                      (index) =>
                                          widget.productModel
                                              .specification![index].image ??
                                          "")))),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ProductTile(
                          title: widget.productModel.brand ?? "",
                          subTitle: "${widget.productModel.discountedPrice} ₹",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ProductTile(
                          title: widget.productModel.description ?? "",
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    controller: tabController,
                    labelColor: Colors.black87,
                    unselectedLabelColor: Colors.grey,
                    tabs: const [
                      Tab(text: "Details"),
                      Tab(text: "Specifications"),
                    ],
                  ),
                ),
                pinned: true,
              ),
            ];
          },
          body: Card(
            child: TabBarView(controller: tabController, children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TableWithTwoColumns(

                  tableRows: tableRows,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  shrinkWrap: true,

                    itemCount: widget.productModel.specification!.length,
                    itemBuilder: (context, index) {
                      return ProductTileWithImage(
                        isLeadingImage: index.floor().isEven,
                        title: widget.productModel.specification![index]
                                .description ??
                            "",
                        image:
                            widget.productModel.specification![index].image ??
                                "",
                      );
                    }),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;

  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white,
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
