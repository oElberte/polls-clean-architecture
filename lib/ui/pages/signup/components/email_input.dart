import 'package:flutter/material.dart';
import 'package:polls/ui/helpers/errors/errors.dart';
import 'package:provider/provider.dart';

import '../signup_presenter.dart';

class EmailInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final presenter = Provider.of<SignUpPresenter>(context);

    return StreamBuilder<UIError>(
      stream: presenter.emailErrorStream,
      builder: (context, snapshot) {
        return TextFormField(
          decoration: InputDecoration(
            labelText: 'Email',
            icon: Icon(
              Icons.email,
              color: Theme.of(context).primaryColorLight,
            ),
            errorText: snapshot.hasData ? snapshot.data.description : null,
          ),
          keyboardType: TextInputType.emailAddress,
          onChanged: presenter.validateEmail,
        );
      },
    );
  }
}
