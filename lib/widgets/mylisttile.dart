import 'package:flutter/material.dart';
import 'package:music_app/widgets/myiconwidget.dart';

class MyListTile extends StatelessWidget {
  const MyListTile({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Theme.of(context).primaryColor,
          child: const MyIconWidget(
            icon: Icons.play_arrow_outlined,
            color: Colors.white,
          ),
        ),
        title: const MyTextWidget(text: 'Music name'),
        subtitle: const MyTextWidget(text: 'Artist name'),
        trailing: GestureDetector(
          onTap: onPressed,
          child: MyIconWidget(
            icon: Icons.more_vert,
            color: Theme.of(context).iconTheme.color,
          ),
        ),
      ),
    );
  }
}
