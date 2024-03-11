import 'package:bloc_travelling/Blocs/ParallaxBloc/bloc/parallax_bloc_class.dart';
import 'package:bloc_travelling/Utils/CommonMethods/app_color_.dart';
import 'package:bloc_travelling/Utils/CommonMethods/typography_.dart';
import 'package:bloc_travelling/Utils/CommonWidgets/common_icon_button_.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({super.key});

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> with TickerProviderStateMixin {
  late final TabController _tabController;
  late ParallaxBloc _parallaxBloc;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _parallaxBloc = ParallaxBloc();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _parallaxBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Good Morning View...
            _goodMorningView(),

            /// Icon Button View
            _iconButtonsView(),

            /// TabBar
            _tabBar(),

            /// TabBarView
            _tabBarView(),
          ],
        ),
      ),
    );
  }

  /// 1.
  Widget _goodMorningView() {
    return RichText(
      text: TextSpan(
        text: "Hi, Alex",
        style: gentiumBookPlusText.size(16).black,
        children: [
          TextSpan(
            text: "\nGood \nMorning!",
            style: gentiumBookPlusText.size(20).black.bold,
          ),
        ],
      ),
    );
  }

  /// 2.
  Widget _iconButtonsView() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: CommonFunctions.commonIconButton(),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: CommonFunctions.commonIconButton(icon: const Icon(Icons.hotel, color: AppColor.pinkMain)),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: CommonFunctions.commonIconButton(icon: const Icon(Icons.location_on, color: AppColor.pinkMain)),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: CommonFunctions.commonIconButton(icon: const Icon(CupertinoIcons.car_detailed, color: AppColor.pinkMain)),
          ),
        ],
      ),
    );
  }

  /// 3.
  Widget _tabBar() {
    return TabBar(
      labelColor: AppColor.pinkMain,
      indicatorColor: AppColor.pinkMain,
      automaticIndicatorColorAdjustment: true,
      labelStyle: gentiumBookPlusText.pinkMain.size(16).bold,
      // indicatorSize: ,
      // indicator: UnderlineTabIndicator(
      //   insets: EdgeInsets.fromLTRB(70.0, 0.0, 70.0, 40.0),
      // ),
      controller: _tabController,
      tabs: const [
        Tab(
          text: "Recommendation",
        ),
        Tab(
          text: "See All",
        ),
      ],
    );
  }

  /// 4.
  Widget _tabBarView() {
    return Expanded(
      child: TabBarView(
        controller: _tabController,
        children: [
          Column(
            children: [
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 13,
                  itemBuilder: (context, index) {
                    return LocationListItem(
                      imageUrl: "assets/images/img_${index + 1}.jpg",
                      name: " ",
                      // name: "Place",
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
          Column(
            children: [
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 13,
                  itemBuilder: (context, index) {
                    return LocationListItem(
                      imageUrl: "assets/images/img_${index + 1}.jpg",
                      name: " ",
                      // name: "PlaceName",
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class LocationListItem extends StatelessWidget {
  LocationListItem({
    Key? key,
    required this.imageUrl,
    required this.name,
  }) : super(key: key);

  final String imageUrl;
  final String name;
  final GlobalKey _backgroundImageKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Stack(
            children: [
              Flow(
                delegate: ParallaxFlowDelegate(
                  scrollable: Scrollable.of(context),
                  listItemContext: context,
                  backgroundImageKey: _backgroundImageKey,
                ),
                children: [
                  Image.asset(
                    height: 300,
                    imageUrl,
                    key: _backgroundImageKey,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              Positioned.fill(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.white.withOpacity(0.001), AppColor.black.withOpacity(0.5)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: const [0.6, 0.95],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 20,
                bottom: 20,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ParallaxFlowDelegate extends FlowDelegate {
  ParallaxFlowDelegate({
    required this.scrollable,
    required this.listItemContext,
    required this.backgroundImageKey,
  }) : super(repaint: scrollable.position);

  final ScrollableState scrollable;
  final BuildContext listItemContext;
  final GlobalKey backgroundImageKey;

  @override
  BoxConstraints getConstraintsForChild(int i, BoxConstraints constraints) {
    return BoxConstraints.tightFor(
      width: constraints.maxWidth,
    );
  }

  @override
  void paintChildren(FlowPaintingContext context) {
    final scrollableBox = scrollable.context.findRenderObject() as RenderBox;
    final listItemBox = listItemContext.findRenderObject() as RenderBox;
    final listItemOffset = listItemBox.localToGlobal(listItemBox.size.centerLeft(Offset.zero), ancestor: scrollableBox);
    final viewportDimension = scrollable.position.viewportDimension;
    final scrollFraction = (listItemOffset.dy / viewportDimension).clamp(0.0, 1.0);
    final verticalAlignment = Alignment(0.0, scrollFraction * 2 - 1);
    final backgroundSize = (backgroundImageKey.currentContext!.findRenderObject() as RenderBox).size;
    final listItemSize = context.size;
    final childRect = verticalAlignment.inscribe(backgroundSize, Offset.zero & listItemSize);
    context.paintChild(
      0,
      transform: Transform.translate(offset: Offset(0.0, childRect.top)).transform,
    );
  }

  @override
  bool shouldRepaint(ParallaxFlowDelegate oldDelegate) {
    return scrollable != oldDelegate.scrollable || listItemContext != oldDelegate.listItemContext || backgroundImageKey != oldDelegate.backgroundImageKey;
  }
}
