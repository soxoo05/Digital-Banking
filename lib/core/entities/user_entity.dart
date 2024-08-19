class LocalUserEntity{
  final String id;
  final String name;
  final String email;

  LocalUserEntity({
    required this.id,
    required this.name,
    required this.email,
  });
  Map<String, Object> toDocument(){
    return{
      "id": id,
      "name": name,
      "email": email
    };
}
static LocalUserEntity fromDocument(Map<String, dynamic> doc){
    return LocalUserEntity(
        id: doc['id'],
        name: doc['name'],
        email: doc['email']
    );
}
  List<Object>get props => [id, name, email];

}