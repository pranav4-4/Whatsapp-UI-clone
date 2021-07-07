import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class StoryPageView extends StatelessWidget {
  final _storyController = StoryController();
  @override
  Widget build(BuildContext context) {
    final controller = StoryController();
    final List<StoryItem > storyItems = [
      StoryItem.text(title: '''Hello,
How are u.
#Goodday. ''', backgroundColor: Colors.red),
      StoryItem.pageImage(
          url:
          "https://i.ibb.co/hKZnPBS/IMG-20200816-WA0007.jpg",
          controller: _storyController

      ),
      StoryItem.pageImage(
          url:
          "https://giphy.com/gifs/japan-link-nintendo-switch-3ohjUOy9PSV8PUy1CU/fullscreen",
          controller: _storyController,
          imageFit: BoxFit.contain),
    ];
    return Material(
      child: StoryView(
        storyItems: storyItems,
        controller: controller,
        inline: false,
        repeat: true,
      ),
    );
  }
}