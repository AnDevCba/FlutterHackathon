import 'package:flutter_hackaton/repolist/model/repo.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class GithubApiClient {
  static final _instance = GithubApiClient._internal();
  factory GithubApiClient() => _instance;
  final _decoder = JsonDecoder();

  static const String url = "https://api.github.com/search/repositories?q=topic:flutter+";
  static const String sorting = "&sort=stars&order=desc";
  GithubApiClient._internal();
  
  Future<List<Repo>> search(String search) async {
    var repos = List<Repo>();
    var response = await http.get(url+search+sorting);
      if (response.statusCode == 200) {
        final body = _decoder.convert(response.body);
        body['items'].forEach((item) => repos.add(Repo.fromMap(item as Map)));
      }
    return repos;
  }

}