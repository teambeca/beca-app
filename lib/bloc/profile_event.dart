part of 'profile_bloc.dart';

abstract class ProfileEvent extends Equatable {
  const ProfileEvent();

  @override
  List<Object> get props => [];
}

class ProfileStarted extends ProfileEvent {}

class ProfileGet extends ProfileEvent {}

class ProfilePatch extends ProfileEvent {
  final String email;
  final String imageURL;
  final String fullName;
  final String job;
  final String cityId;
  final int gender;
  final int age;

  const ProfilePatch({
    this.email,
    this.imageURL,
    this.fullName,
    this.job,
    this.cityId,
    this.gender,
    this.age,
  });

  @override
  List<Object> get props =>
      [email, imageURL, fullName, job, cityId, gender, age];
}
