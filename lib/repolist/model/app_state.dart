import 'dart:async';

import 'package:flutter_hackaton/repolist/model/repo.dart';
import 'package:flutter_hackaton/services/githubApiClient.dart';
class AppState {
  static final AppState _instance = new AppState._();
  StreamController<List<Repo>> events;
  factory AppState() => AppState._instance;
  AppState._() {
    events = new StreamController<List<Repo>>();
    search("");
  }

  search(String criteria) async {
    var result = await GithubApiClient().search(criteria);
    events.add(result);
    }

}
