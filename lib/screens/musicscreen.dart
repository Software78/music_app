import 'package:flutter/material.dart';
import 'package:music_app/widgets/myiconwidget.dart';

class CurrentPlaying extends StatefulWidget {
  const CurrentPlaying({
    Key? key,
  }) : super(key: key);

  static const String id = 'playingscreen';

  @override
  _CurrentPlayingState createState() => _CurrentPlayingState();
}

class _CurrentPlayingState extends State<CurrentPlaying> {
  double _value = 0;
  @override
  Widget build(BuildContext context) {
    Color defaultcolor = Theme.of(context).primaryColor;
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const MyIconWidget(
            icon: Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        title: const Text('Music Title'),
        automaticallyImplyLeading: false,
        backgroundColor: defaultcolor,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          CircleAvatar(
            backgroundColor: defaultcolor,
            radius: 100,
            child: const FlutterLogo(),
          ),
          const SizedBox(
            height: 20,
          ),
          Slider(
            max: 100,
            min: 0,
            activeColor: defaultcolor,
            inactiveColor: Colors.grey,
            value: _value,
            onChanged: (value) {
              setState(
                () {
                  _value = value;
                },
              );
            },
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyIconWidget(
                icon: Icons.skip_previous,
                color: defaultcolor,
                size: 40,
              ),
              MyIconWidget(
                size: 40,
                icon: Icons.play_arrow,
                color: defaultcolor,
              ),
              MyIconWidget(
                size: 40,
                icon: Icons.skip_next,
                color: defaultcolor,
              ),
            ],
          )
        ],
      ),
    );
  }
}
