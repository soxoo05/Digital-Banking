import 'package:digital/core/entities/entity.dart';

class LocalUser {
  final String id;
  final String name;
  final String email;

  LocalUser({
    required this.id,
    required this.name,
    required this.email,
  });

static LocalUser empty = LocalUser(
    id: "",
    name: "",
    email: ""
);
LocalUser copyWith({
    String? id,
    String? name,
    String? email
})
{
  return LocalUser(
      id: id?? this.id,
      name: name?? this.name,
      email: email?? this.email
  );
}

LocalUserEntity toEntity(){
  return LocalUserEntity(
      id: id,
      name: name,
      email: email
  );
}

static LocalUser fromEntity(LocalUser entity){
  return LocalUser(
      id: entity.id,
      name: entity.name,
      email: entity.email
  );
}
List<Object>get props => [id, name, email];
  }