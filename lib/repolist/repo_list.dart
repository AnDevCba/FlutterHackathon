import 'package:flutter/material.dart';
import 'package:flutter_hackaton/repolist/repo_list_item.dart';
import 'model/repo.dart';


class ReposList extends StatelessWidget {
  final List<Repo> _reposModel;

  ReposList(this._reposModel);

  @override
  Widget build(BuildContext context) {

    final listView = ListTile.divideTiles(
        context: context, tiles: _repoList(), color: Colors.black38)
        .toList();

    return new ListView(
      padding: new EdgeInsets.symmetric(vertical: 8.0),children: listView,
    );
  }

  List<RepoListItem> _repoList() {
    return _reposModel
        .map((repo) => new RepoListItem(repo))
        .toList();
  }
}