import 'package:json_annotation/json_annotation.dart';
import "user.dart";
part 'users.g.dart';

@JsonSerializable()
class Users {
  Users();

  late List<User> users;
  
  factory Users.fromJson(Map<String,dynamic> json) => _$UsersFromJson(json);
  Map<String, dynamic> toJson() => _$UsersToJson(this);

  static Users filterList(Users users, String finterString){
    Users tempUsers = users;
    List<User> usersList = tempUsers.users
      .where((u) =>
          (u.name.toLowerCase().contains(finterString.toLowerCase())) ||
          (u.email.toLowerCase().contains(finterString.toLowerCase())))
      .toList();
    users.users = usersList;
    return users;
  }
}
