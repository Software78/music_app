import 'package:flutter/material.dart';
import 'package:music_app/screens/musicscreen.dart';
import 'package:music_app/widgets/myiconwidget.dart';
import 'package:music_app/widgets/mylisttile.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  static const String id = 'homepage';

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Color defaultcolor = Theme.of(context).primaryColor;
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        // bottom: const PreferredSize(
        //   child: SizedBox(),
        //   preferredSize: Size(
        //     double.infinity,
        //     250,
        //   ),
        // ),
        actions: [
          MaterialButton(
            minWidth: 50,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(100),
              ),
            ),
            onPressed: () {},
            child: const MyIconWidget(
              icon: Icons.search,
              color: Colors.white,
            ),
          ),
          // const SizedBox(width: 10),
        ],
        backgroundColor: defaultcolor,
        title: const MyTextWidget(
          text: 'Music App',
          fontsize: 25,
        ),
        centerTitle: true,
      ),
      // backgroundColor: defaultcolor,
      body: SizedBox(
        child: ListView.builder(
          itemBuilder: (context, int index) => MyListTile(
            onPressed: () {
              Navigator.pushNamed(context, CurrentPlaying.id);
            },
          ),
          itemCount: 15,
        ),
      ),
    );
  }
}
