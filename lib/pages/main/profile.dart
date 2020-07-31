import 'package:beca_app/bloc/account_bloc.dart';
import 'package:beca_app/bloc/auth_bloc.dart';
import 'package:beca_app/bloc/location_bloc.dart';
import 'package:beca_app/bloc/profile_bloc.dart';
import 'package:beca_app/common_widgets/MyAvatar.dart';
import 'package:beca_app/model/built_location.dart';
import 'package:beca_app/pages/main/avatar_select.dart';
import 'package:beca_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:built_collection/built_collection.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.black,
              displayColor: Colors.black,
            ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Profil"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.input),
              onPressed: () {
                BlocProvider.of<AuthBloc>(context).add(AuthSignOut());
              },
            ),
          ],
        ),
        body: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: MultiBlocListener(
            listeners: [
              BlocListener<LocationBloc, LocationState>(
                listener: (context, locationState) {
                  if (locationState is LocationFailure)
                    Scaffold.of(context).showSnackBar(
                        SnackBar(content: Text("Lokasyonlar yüklenemedi")));
                },
              ),
              BlocListener<AccountBloc, AccountState>(
                listener: (context, accountState) {
                  if (accountState is AccountFailure)
                    Scaffold.of(context).showSnackBar(
                        SnackBar(content: Text("Account yüklenemedi")));
                },
              ),
              BlocListener<ProfileBloc, ProfileState>(
                listener: (context, profileState) {
                  if (profileState is ProfileFailure)
                    Scaffold.of(context).showSnackBar(
                        SnackBar(content: Text("Profile yüklenemedi")));
                },
              ),
            ],
            child: BlocBuilder<LocationBloc, LocationState>(
              builder: (context, locationState) =>
                  BlocBuilder<AccountBloc, AccountState>(
                builder: (context, accountState) =>
                    BlocBuilder<ProfileBloc, ProfileState>(
                  builder: (context, profileState) {
                    if (accountState is AccountStarted ||
                        profileState is ProfileStarted ||
                        locationState is LocationStarted)
                      return Container(
                        height: double.infinity,
                        width: double.infinity,
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      );

                    if (accountState is AccountInProgress ||
                        profileState is ProfileInProgress ||
                        locationState is LocationInProgress)
                      return Container(
                        height: double.infinity,
                        width: double.infinity,
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      );

                    if (accountState is AccountSuccess &&
                        profileState is ProfileSuccess &&
                        locationState is LocationSuccess)
                      return RefreshIndicator(
                        onRefresh: () async {
                          BlocProvider.of<AccountBloc>(context)
                              .add(AccountGet());
                          BlocProvider.of<ProfileBloc>(context)
                              .add(ProfileGet());
                          BlocProvider.of<LocationBloc>(context)
                              .add(LocationGet());
                        },
                        child: NotificationListener<
                            OverscrollIndicatorNotification>(
                          onNotification:
                              (OverscrollIndicatorNotification overScroll) {
                            overScroll.disallowGlow();
                            return false;
                          },
                          child: SingleChildScrollView(
                            child: ProfileLoaded(
                                profileState, accountState, locationState),
                          ),
                        ),
                      );

                    if (profileState is ProfileFailure ||
                        accountState is AccountFailure ||
                        locationState is LocationFailure)
                      return Container(
                        child: Center(
                          child: RaisedButton(
                            color: Theme.of(context).primaryColorDark,
                            onPressed: () async {
                              BlocProvider.of<AccountBloc>(context)
                                  .add(AccountGet());
                              BlocProvider.of<ProfileBloc>(context)
                                  .add(ProfileGet());
                              BlocProvider.of<LocationBloc>(context)
                                  .add(LocationGet());
                            },
                            child: Text(
                              "Refresh",
                              style: Theme.of(context)
                                  .textTheme
                                  .button
                                  .copyWith(color: Colors.white),
                            ),
                          ),
                        ),
                      );

                    // if (profileState is ProfileFailure)
                    //   return Container(
                    //     child: Center(
                    //       child: Text("${profileState.message}"),
                    //     ),
                    //   );

                    // if (accountState is AccountFailure)
                    //   return Container(
                    //     child: Center(
                    //       child: Text("${accountState.message}"),
                    //     ),
                    //   );
                    // if (locationState is LocationFailure)
                    //   return Container(
                    //     child: Center(
                    //       child: Text("${locationState.message}"),
                    //     ),
                    //   );

                    return Container(
                      child: Center(
                        child: Text("Something went wrong!"),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileLoaded extends StatefulWidget {
  final ProfileSuccess profileState;
  final AccountSuccess accountState;
  final LocationSuccess locationState;

  const ProfileLoaded(
    this.profileState,
    this.accountState,
    this.locationState, {
    Key key,
  }) : super(key: key);

  @override
  _ProfileLoadedState createState() => _ProfileLoadedState();
}

class _ProfileLoadedState extends State<ProfileLoaded> {
  BuiltList<BuiltLocation> _locations;
  String _selectedLocation;

  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _fullNameController = TextEditingController();
  int _genderValue;
  final _ageController = TextEditingController();
  final _jobController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _locations = new BuiltList<BuiltLocation>([]);
    _locations = _locations
        .rebuild((b) => b.addAll(widget.locationState.locations.asList()));

    _selectedLocation = widget.profileState.profile.cityId;
    _genderValue = widget.profileState.profile.gender;
    _emailController..text = widget.profileState.profile.email;
    _fullNameController..text = widget.profileState.profile.fullName;
    _ageController
      ..text = widget.profileState.profile.age == -1
          ? ""
          : widget.profileState.profile.age.toString();

    _jobController..text = widget.profileState.profile.job;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 32.0),
            child: Stack(
              overflow: Overflow.visible,
              alignment: Alignment.bottomRight,
              children: <Widget>[
                BlocBuilder<AccountBloc, AccountState>(
                  builder: (context, accountState) {
                    if (accountState is AccountSuccess)
                      return new MyAvatar(
                        imageUri: accountState.account.avatarTag != null
                            ? "assets/avatars/${accountState.account.avatarTag}.png"
                            : "assets/avatars/$DEFAULT_AVATAR_TAG.png",
                        onTap: (imageUri) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              fullscreenDialog: true,
                              builder: (context) => AvatarSelectPage(),
                            ),
                          );
                        },
                      );
                    else
                      return new MyAvatar(
                        imageUri: "assets/avatars/$DEFAULT_AVATAR_TAG.png",
                        onTap: (imageUri) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              fullscreenDialog: true,
                              builder: (context) => AvatarSelectPage(),
                            ),
                          );
                        },
                      );
                  },
                ),
                CircleAvatar(
                  backgroundColor: Theme.of(context).primaryColorDark,
                  child: IconButton(
                    icon: Icon(Icons.edit),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          fullscreenDialog: true,
                          builder: (context) => AvatarSelectPage(),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
          Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: Card(
                elevation: 0.0,
                shape: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(4),
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      topRight: Radius.circular(4)),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      alignment: Alignment.centerLeft,
                      height: 50.0,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Text(
                          "${widget.accountState.account.username}",
                          // style: Theme.of(context).textTheme.bodyText2,
                          // textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              )),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
            child: TextFormField(
              obscureText: true,
              controller: _passwordController,
              validator: (value) {
                if (value.isNotEmpty && value.length < 6)
                  return "Şifre 6 karakterden kısa olamaz";
                return null;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(4),
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      topRight: Radius.circular(4)),
                ),
                filled: true,
                hintText: 'Yeni Şifre',
                suffixIcon: IconButton(
                  onPressed: () => _passwordController.clear(),
                  icon: Icon(Icons.clear),
                ),
              ),
            ),
          ),
          SizedBox(height: 30.0),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: _emailController,
              validator: (value) {
                return null;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(4),
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      topRight: Radius.circular(4)),
                ),
                filled: true,
                hintText: 'Email',
                suffixIcon: IconButton(
                  onPressed: () => _emailController.clear(),
                  icon: Icon(Icons.clear),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
            child: TextFormField(
              keyboardType: TextInputType.text,
              controller: _fullNameController,
              validator: (value) {
                if (RegExp(r"[^a-zA-Z ]").hasMatch(value)) {
                  return "Tam isim sadece harf içerebilir";
                }

                return null;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(4),
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      topRight: Radius.circular(4)),
                ),
                filled: true,
                hintText: 'Tam İsim',
                suffixIcon: IconButton(
                  onPressed: () => _fullNameController.clear(),
                  icon: Icon(Icons.clear),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.only(
                  left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4),
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                    topRight: Radius.circular(4)),
                color: Theme.of(context).inputDecorationTheme.fillColor,
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                    hint: Text('Cinsiyet'),
                    value: _genderValue == -1 ? null : _genderValue,
                    items: [
                      DropdownMenuItem(child: Text("Erkek"), value: 0),
                      DropdownMenuItem(child: Text("Kadın"), value: 1),
                      DropdownMenuItem(
                          child: Text("Belirtmek İstemiyorum"), value: 2)
                    ],
                    onChanged: (value) {
                      setState(() {
                        _genderValue = value;
                      });
                    }),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
            child: TextFormField(
              keyboardType: TextInputType.number,
              controller: _ageController,
              validator: (value) {
                return null;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(4),
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      topRight: Radius.circular(4)),
                ),
                filled: true,
                hintText: 'Yaş',
                suffixIcon: IconButton(
                  onPressed: () => _ageController.clear(),
                  icon: Icon(Icons.clear),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.only(
                  left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4),
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                    topRight: Radius.circular(4)),
                color: Theme.of(context).inputDecorationTheme.fillColor,
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  hint: Text('Şehir'),
                  value: _selectedLocation,
                  onChanged: (newValue) {
                    setState(() {
                      _selectedLocation = newValue;
                    });
                  },
                  items: _locations
                      .map((location) => DropdownMenuItem(
                            child: new Text(location.name),
                            value: location.id,
                          ))
                      .toList(),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
            child: TextFormField(
              controller: _jobController,
              validator: (value) {
                return null;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(4),
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      topRight: Radius.circular(4)),
                ),
                filled: true,
                hintText: 'Meslek',
                suffixIcon: IconButton(
                  onPressed: () => _jobController.clear(),
                  icon: Icon(Icons.clear),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20.0,
              horizontal: 20.0,
            ),
            child: SizedBox(
              width: double.infinity,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 20),
                onPressed: () async {
                  if (_formKey.currentState.validate()) {
                    final age = _ageController.text.trim();

                    int realAge = -1;
                    if (age != "") realAge = int.tryParse(age);

                    BlocProvider.of<ProfileBloc>(context).add(
                      ProfilePatch(
                        email: _emailController.text.trim(),
                        fullName: _fullNameController.text.trim(),
                        age: realAge,
                        gender: _genderValue,
                        cityId: _selectedLocation,
                        job: _jobController.text.trim(),
                      ),
                    );

                    if (_passwordController.text.isNotEmpty)
                      BlocProvider.of<AccountBloc>(context).add(
                        AccountPatch(
                          password: _passwordController.text,
                        ),
                      );
                  }
                },
                child: Text('KAYDET'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
