class Repo {
  String url;
  String fullName;
  String description;
  int stars;
  num score;

  Repo.fromMap(Map<String, dynamic> map) {
    this.url = map['html_url'];
    this.fullName = map['full_name'];
    this.description = map['description'];
    this.score = map['score'];
    this.stars = map['stargazers_count'];
  }

}