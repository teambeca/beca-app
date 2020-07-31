import 'package:flutter/material.dart';

typedef AvatarOnTap = void Function(String imageUri);

class MyAvatar extends StatelessWidget {
  final String imageUri;
  final double radius;
  final AvatarOnTap onTap;

  const MyAvatar({
    Key key,
    @required this.imageUri,
    this.onTap,
    this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4.0,
      shape: CircleBorder(
        side: BorderSide(
          color: Theme.of(context).primaryColorLight,
          width: 5,
        ),
      ),
      clipBehavior: Clip.hardEdge,
      color: Colors.transparent,
      child: Ink.image(
        image: AssetImage(this.imageUri),
        fit: BoxFit.cover,
        width: this.radius ?? 120.0,
        height: this.radius ?? 120.0,
        child: InkWell(
          onTap: this.onTap != null ? () => this.onTap(this.imageUri) : null,
        ),
      ),
    );
  }
}
