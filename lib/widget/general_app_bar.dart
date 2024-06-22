// import 'package:flutter/material.dart';

// class GeneralAppBar extends StatefulWidget implements PreferredSizeWidget {
//   final Color myBackgroundColor;
//   final Color myShadowColor;
//   final Widget myTitle;
//   final List<Widget> myActions;
//   const GeneralAppBar(
//       {super.key,
//       required this.myBackgroundColor,
//       required this.myShadowColor,
//       required this.myTitle,
//       required this.myActions});

//   @override
//   State<GeneralAppBar> createState() => _GeneralAppBarState();

//   @override
//   // TODO: implement preferredSize
//   Size get preferredSize => throw UnimplementedError();
// }

// class _GeneralAppBarState extends State<GeneralAppBar> {
//   Size get preferredSize => const Size.fromHeight(100);
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       title: widget.myTitle,
//       centerTitle: true,
//       backgroundColor: widget.myBackgroundColor,
//       elevation: 0,
//       shadowColor: widget.myShadowColor,
//       bottom: const PreferredSize(
//         preferredSize: Size(10, 10),
//         child: Text("data"),
//       ),
//       actions: [],
//     );
//   }
// }
