class Contact {
  String name;
  String email;
  int age;
  Contact(this.name, this.email, this.age);

  factory Contact.fromJSON(Map<String, dynamic> json) {
    if (json == null) {
      return Contact("ta", "asd", 23);
    } else {
      return Contact(json["name"], json["email"], json["age"]);
    }
  }
  get Name => this.name;
  get Email => this.email;
  get Age => this.age;
}
