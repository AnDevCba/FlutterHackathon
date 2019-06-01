import 'package:flutter/material.dart';
import 'repolist/repo_list.dart';
import 'services/githubApiClient.dart';
import 'repolist/model/repo.dart';

class RepoPage extends StatelessWidget {

  _searchRepos() {
    return GithubApiClient().search("flutter");
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(body: FutureBuilder<List<Repo>>(future: _searchRepos(),builder:
    (context,snap){
      if(snap.hasData){
        return ReposList(snap.data);
      }else if(snap.hasError){
          return Text(snap.error);
        }else{
        return Center(child: Text("Cargando..."));
      }
    }));
  }
}