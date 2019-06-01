import 'package:flutter/material.dart';
import 'modal/contact.dart';
import 'package:flutter_hackaton/main.dart';

class ContactListItem extends StatelessWidget {
  final ContactModal _contactModal;

  ContactListItem(this._contactModal);

  @override
  Widget build(BuildContext context) {
    return new ListTile(
        leading: new CircleAvatar(child: new Text(_contactModal.fullName[0])),
        title: new Text(_contactModal.fullName),
        subtitle: new Text(_contactModal.email));
  }
}