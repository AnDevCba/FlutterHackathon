import 'package:flutter/material.dart';
import 'contactlist/contact_list.dart';
import 'contactlist/modal/contact.dart';

class ContactPage extends StatelessWidget {
  _buildContactList() {
    return <ContactModal>[
      const ContactModal(
          fullName: 'Loco Luqui', email: 'loco.luqui@example.com'),
      const ContactModal(
          fullName: 'Loco Lucho', email: 'loco.lucho@example.com'),
      const ContactModal(
          fullName: 'Loco Gati', email: 'loco.gati@example.com')
    ];
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(body: new ContactsList(_buildContactList()));
  }
}