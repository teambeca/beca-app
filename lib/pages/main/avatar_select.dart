import 'package:beca_app/bloc/account_bloc.dart';
import 'package:beca_app/common_widgets/MyAvatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AvatarSelectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var children2 = [
      Center(
        child: MyAvatar(
          onTap: (imageUri) {
            AccountState accountState = context.bloc<AccountBloc>().state;
            if (accountState is AccountSuccess) {
              context.bloc<AccountBloc>().add(AccountPatch(
                    avatarTag: imageUri.substring(15).split(".")[0],
                  ));
              Navigator.of(context).pop();
            } else {}
          },
          imageUri: "assets/avatars/queen.png",
        ),
      ),
      Center(
        child: MyAvatar(
          onTap: (imageUri) {
            AccountState accountState = context.bloc<AccountBloc>().state;
            if (accountState is AccountSuccess) {
              context.bloc<AccountBloc>().add(AccountPatch(
                    avatarTag: imageUri.substring(15).split(".")[0],
                  ));
              Navigator.of(context).pop();
            } else {}
          },
          imageUri: "assets/avatars/man.png",
        ),
      ),
      Center(
        child: MyAvatar(
          onTap: (imageUri) {
            AccountState accountState = context.bloc<AccountBloc>().state;
            if (accountState is AccountSuccess) {
              context.bloc<AccountBloc>().add(AccountPatch(
                    avatarTag: imageUri.substring(15).split(".")[0],
                  ));
              Navigator.of(context).pop();
            } else {}
          },
          imageUri: "assets/avatars/admin.png",
        ),
      ),
      Center(
        child: MyAvatar(
          onTap: (imageUri) {
            AccountState accountState = context.bloc<AccountBloc>().state;
            if (accountState is AccountSuccess) {
              context.bloc<AccountBloc>().add(AccountPatch(
                    avatarTag: imageUri.substring(15).split(".")[0],
                  ));
              Navigator.of(context).pop();
            } else {}
          },
          imageUri: "assets/avatars/woman.png",
        ),
      ),
      Center(
        child: MyAvatar(
          onTap: (imageUri) {
            AccountState accountState = context.bloc<AccountBloc>().state;
            if (accountState is AccountSuccess) {
              context.bloc<AccountBloc>().add(AccountPatch(
                    avatarTag: imageUri.substring(15).split(".")[0],
                  ));
              Navigator.of(context).pop();
            } else {}
          },
          imageUri: "assets/avatars/astronaut.png",
        ),
      ),
      Center(
        child: MyAvatar(
          onTap: (imageUri) {
            AccountState accountState = context.bloc<AccountBloc>().state;
            if (accountState is AccountSuccess) {
              context.bloc<AccountBloc>().add(AccountPatch(
                    avatarTag: imageUri.substring(15).split(".")[0],
                  ));
              Navigator.of(context).pop();
            } else {}
          },
          imageUri: "assets/avatars/predator.png",
        ),
      ),
      Center(
        child: MyAvatar(
          onTap: (imageUri) {
            AccountState accountState = context.bloc<AccountBloc>().state;
            if (accountState is AccountSuccess) {
              context.bloc<AccountBloc>().add(AccountPatch(
                    avatarTag: imageUri.substring(15).split(".")[0],
                  ));
              Navigator.of(context).pop();
            } else {}
          },
          imageUri: "assets/avatars/serial-killer.png",
        ),
      ),
      Center(
        child: MyAvatar(
          onTap: (imageUri) {
            AccountState accountState = context.bloc<AccountBloc>().state;
            if (accountState is AccountSuccess) {
              context.bloc<AccountBloc>().add(AccountPatch(
                    avatarTag: imageUri.substring(15).split(".")[0],
                  ));
              Navigator.of(context).pop();
            } else {}
          },
          imageUri: "assets/avatars/skeleton.png",
        ),
      ),
      Center(
        child: MyAvatar(
          onTap: (imageUri) {
            AccountState accountState = context.bloc<AccountBloc>().state;
            if (accountState is AccountSuccess) {
              context.bloc<AccountBloc>().add(AccountPatch(
                    avatarTag: imageUri.substring(15).split(".")[0],
                  ));
              Navigator.of(context).pop();
            } else {}
          },
          imageUri: "assets/avatars/superhero.png",
        ),
      ),
      Center(
        child: MyAvatar(
          onTap: (imageUri) {
            AccountState accountState = context.bloc<AccountBloc>().state;
            if (accountState is AccountSuccess) {
              context.bloc<AccountBloc>().add(AccountPatch(
                    avatarTag: imageUri.substring(15).split(".")[0],
                  ));
              Navigator.of(context).pop();
            } else {}
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
