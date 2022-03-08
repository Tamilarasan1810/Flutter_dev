class FeedbackForm {
  final String name;
  final String email;
  final String mobileno;
  final String feedback;
  FeedbackForm(
      {required this.name,
      required this.email,
      required this.mobileno,
      required this.feedback});

  String toParameters() =>
      "?name=$name&email=$email&mobileno=$mobileno&feedback=$feedback";
}
