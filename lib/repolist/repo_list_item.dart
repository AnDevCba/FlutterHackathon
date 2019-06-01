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
        subtitle: new Text(_repoModel.description,
            overflow: TextOverflow.ellipsis, maxLines: 1),
        trailing: new Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new Text(_repoModel.stars.toString()),
            Icon(IconData(59448, fontFamily: 'MaterialIcons'),color: Color.fromRGBO(255, 211, 0, 1.0))
          ],
        ),
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
