import 'package:flutter/material.dart';
import 'model/repo.dart';
import 'package:url_launcher/url_launcher.dart';

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
    _launchURL(repo.url);
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
