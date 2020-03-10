import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:localization_demo/localizations.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final _formKey2 = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context).apptitle),
        ),
        body: new Form(
          key: _formKey2,
          child: new SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const SizedBox(height: 24.0),
                new TextFormField(
                  decoration: InputDecoration(
                    border: const UnderlineInputBorder(),
                    filled: true,
                    icon: const Icon(Icons.person),
                    hintText: '',
                    labelText: AppLocalizations.of(context).lblname,
                  ),
                  onSaved: (String value) {},
                ),
                const SizedBox(height: 24.0),
                new TextFormField(
                  decoration: InputDecoration(
                    border: const UnderlineInputBorder(),
                    filled: true,
                    icon: const Icon(Icons.phone),
                    hintText: '',
                    labelText: AppLocalizations.of(context).lblphone,
                    prefixText: '',
                  ),
                  keyboardType: TextInputType.phone,
                  onSaved: (String value) {},
                  inputFormatters: <TextInputFormatter>[
                    WhitelistingTextInputFormatter.digitsOnly,
                  ],
                ),
                const SizedBox(height: 24.0),
                new TextFormField(
                  decoration: InputDecoration(
                    border: const UnderlineInputBorder(),
                    filled: true,
                    icon: const Icon(Icons.email),
                    labelText: AppLocalizations.of(context).lblemail,
                  ),
                  keyboardType: TextInputType.emailAddress,
                  onSaved: (String value) {},
                ),
                const SizedBox(height: 24.0),
                const SizedBox(height: 24.0),
                new Center(
                  child: new RaisedButton(
                    child: Text(AppLocalizations.of(context).btnsubmit),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(height: 24.0),
              ],
            ),
          ),
        ));
  }
}
