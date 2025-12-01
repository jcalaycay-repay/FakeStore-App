class Name {
  final String firstname;
  final String lastname;

  const Name({
    required this.firstname,
    required this.lastname,
  });

  factory Name.fromJson(Map<String, dynamic> data ) => Name(
    firstname: data["firstname"],
    lastname: data["lastname"],
  );

  String get full => "$firstname $lastname";

  String get invertedFull => "$lastname, $firstname";
}