import 'package:beca_app/common_widgets/MyAvatar.dart';
import 'package:flutter/material.dart';

class AvatarSelectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var children2 = [
      Center(
        child: MyAvatar(
          onTap: (imageUri) {
            print(imageUri);
            Navigator.of(context).pop();
          },
          imageUri: "assets/avatars/queen.png",
        ),
      ),
      Center(
        child: MyAvatar(
          onTap: (imageUri) {
            print(imageUri);
            Navigator.of(context).pop();
          },
          imageUri: "assets/avatars/man.png",
        ),
      ),
      Center(
        child: MyAvatar(
          onTap: (imageUri) {
            print(imageUri);
            Navigator.of(context).pop();
          },
          imageUri: "assets/avatars/admin.png",
        ),
      ),
      Center(
        child: MyAvatar(
          onTap: (imageUri) {
            print(imageUri);
            Navigator.of(context).pop();
          },
          imageUri: "assets/avatars/woman.png",
        ),
      ),
      Center(
        child: MyAvatar(
          onTap: (imageUri) {
            print(imageUri);
            Navigator.of(context).pop();
          },
          imageUri: "assets/avatars/astronaut.png",
        ),
      ),
      Center(
        child: MyAvatar(
          onTap: (imageUri) {
            print(imageUri);
            Navigator.of(context).pop();
          },
          imageUri: "assets/avatars/predator.png",
        ),
      ),
      Center(
        child: MyAvatar(
          onTap: (imageUri) {
            print(imageUri);
            Navigator.of(context).pop();
          },
          imageUri: "assets/avatars/serial-killer.png",
        ),
      ),
      Center(
        child: MyAvatar(
          onTap: (imageUri) {
            print(imageUri);
            Navigator.of(context).pop();
          },
          imageUri: "assets/avatars/skeleton.png",
        ),
      ),
      Center(
        child: MyAvatar(
          onTap: (imageUri) {
            print(imageUri);
            Navigator.of(context).pop();
          },
          imageUri: "assets/avatars/superhero.png",
        ),
      ),
      Center(
        child: MyAvatar(
          onTap: (imageUri) {
            print(imageUri);
            Navigator.of(context).pop();
          },
          imageUri: "assets/avatars/superhero2.png",
        ),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Select Avatar"),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        childAspectRatio: 1,
        controller: new ScrollController(keepScrollOffset: false),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: children2,
      ),
    );
  }
}
