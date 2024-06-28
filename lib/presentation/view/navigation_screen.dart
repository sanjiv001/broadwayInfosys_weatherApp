import 'package:broadwayinfosys_weatherapp/constant/color_constants.dart';
import 'package:broadwayinfosys_weatherapp/presentation/view/drawer.dart';
import 'package:broadwayinfosys_weatherapp/presentation/view/home_screen.dart';
import 'package:broadwayinfosys_weatherapp/presentation/view/profie_screen.dart';
import 'package:broadwayinfosys_weatherapp/presentation/view/weather_screen.dart';
import 'package:flutter/material.dart';

class NavigationButtonBarScreen extends StatefulWidget {
  const NavigationButtonBarScreen({Key? key}) : super(key: key);

  @override
  _NavigationButtonBarScreenState createState() =>
      _NavigationButtonBarScreenState();
}

class _NavigationButtonBarScreenState extends State<NavigationButtonBarScreen> {
  int pageIndex = 0;
  // ValueNotifier<int> pageIndex = ValueNotifier(0);

  final pages = [
    HomeScreen(),
    WeatherScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffC4DFCB),
      appBar: AppBar(
        title: Text(
          "WeatherApp",
          style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                fontSize: 20,
                color: AppColors.textColor,
              ),
        ),
        centerTitle: true,
        backgroundColor: AppColors.blueTextColor,
        elevation: 0,
        shadowColor: Colors.red,
        // bottom: const PreferredSize(
        //   preferredSize: Size(10, 10),
        //   child: Text("data"),
        // ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.place_outlined),
          ),
        ],
      ),
      drawer: const MyDrawer(),
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 60,
      decoration: const BoxDecoration(
        color: AppColors.blueTextColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ? const Icon(
                    Icons.home_filled,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.home_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ? const Icon(
                    Icons.widgets_rounded,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.widgets_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            icon: pageIndex == 2
                ? const Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.person_outline,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
        ],
      ),
    );
  }
}


//  Container buildMyNavBar(BuildContext context) {
//     return Container(
//       height: 60,
//       decoration: const BoxDecoration(
//         color: AppColors.blueTextColor,
//         borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(40),
//           topRight: Radius.circular(40),
//         ),
//       ),
//       child: ValueListenableBuilder<int>(
//         valueListenable: pageIndex,
//         builder: (context, value, child) {
//           return Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               IconButton(
//                 enableFeedback: false,
//                 onPressed: () {
//                   pageIndex.value = 0;
//                 },
//                 icon: value == 0
//                     ? const Icon(
//                         Icons.home_filled,
//                         color: Colors.white,
//                         size: 35,
//                       )
//                     : const Icon(
//                         Icons.home_outlined,
//                         color: Colors.white,
//                         size: 35,
//                       ),
//               ),
//               IconButton(
//                 enableFeedback: false,
//                 onPressed: () {
//                   pageIndex.value = 1;
//                 },
//                 icon: value == 1
//                     ? const Icon(
//                         Icons.widgets_rounded,
//                         color: Colors.white,
//                         size: 35,
//                       )
//                     : const Icon(
//                         Icons.widgets_outlined,
//                         color: Colors.white,
//                         size: 35,
//                       ),
//               ),
//               IconButton(
//                 enableFeedback: false,
//                 onPressed: () {
//                   pageIndex.value = 2;
//                 },
//                 icon: value == 2
//                     ? const Icon(
//                         Icons.person,
//                         color: Colors.white,
//                         size: 35,
//                       )
//                     : const Icon(
//                         Icons.person_outline,
//                         color: Colors.white,
//                         size: 35,
//                       ),
//               ),
//             ],
//           );
//         },
//       ),
//     );
//   }
