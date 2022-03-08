class FeedbackModel {
  String profilePic;
  String name;
  String source;
  String feedback;
  String sourceUrl;

  FeedbackModel({
    this.profilePic,
    this.name,
    this.source,
    this.feedback,
    this.sourceUrl,
  });
  factory FeedbackModel.fromJson(dynamic json) {
    return FeedbackModel(
      name: "${json['name']}",
      profilePic: "${json['profile']}",
      source: "${json['source']}",
      sourceUrl: "${json['sourceUrl']}",
      feedback: '',
    );
  }
  Map toJson() => {
        "profile": profilePic,
        "source": source,
        "sourceUrl": sourceUrl,
        "feedback": feedback,
        "name": name,
      };
}
