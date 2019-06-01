import 'package:flutter/material.dart';
import 'package:flutter_hackaton/repolist/model/app_state.dart';
import 'repolist/repo_list.dart';
import 'services/githubApiClient.dart';
import 'repolist/model/repo.dart';

class RepoPage extends StatelessWidget {

  _searchRepos() {
    return GithubApiClient().search("flutter");
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(body: StreamBuilder<List<Repo>>(stream: AppState().events.stream, builder:
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