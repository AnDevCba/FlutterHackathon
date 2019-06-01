import 'package:flutter/material.dart';
import 'model/repo.dart';


class RepoListItem extends StatelessWidget {
  final Repo _repoModel;

  RepoListItem(this._repoModel);

  @override
  Widget build(BuildContext context) {
    return new ListTile(
        title: new Text(_repoModel.fullName),
        subtitle: new Text(_repoModel.description),
        onTap: () => onTapped(_repoModel));
  }

  void onTapped(Repo repo) {
    print(repo.url);
  }
}
