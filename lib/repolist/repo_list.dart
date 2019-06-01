import 'package:flutter/material.dart';
import 'package:flutter_hackaton/repolist/repo_list_item.dart';
import 'model/repo.dart';


class ReposList extends StatelessWidget {
  final List<Repo> _contactModal;

  ReposList(this._contactModal);

  @override
  Widget build(BuildContext context) {
    return new ListView(
      padding: new EdgeInsets.symmetric(vertical: 8.0),
      children: _repoList(),
    );
  }

  List<RepoListItem> _repoList() {
    return _contactModal
        .map((contact) => new RepoListItem(contact))
        .toList();
  }
}