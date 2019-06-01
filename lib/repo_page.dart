import 'package:flutter/material.dart';
import 'repolist/repo_list.dart';
import 'services/githubApiClient.dart';

class RepoPage extends StatelessWidget {
  _searchRepos() async {
    return await GithubApiClient().search();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(body: new ReposList(_searchRepos()));
  }
}