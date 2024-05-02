part of 'user_bloc.dart';

abstract class UserEvent extends Equatable {
  const UserEvent();

  @override
  List<Object?> get props => [];
}

class SetUser extends UserEvent {
  final UserEntity? user;
  const SetUser(this.user);
}

class UpdateUser extends UserEvent {
  final UserEntity? user;
  const UpdateUser(this.user);
}
