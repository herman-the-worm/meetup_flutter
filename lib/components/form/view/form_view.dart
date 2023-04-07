import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../shared/bloc/form_bloc/form_bloc.dart';
import '../../../shared/helpers/app_localizations.dart';
import '../../../shared/helpers/getit_service_locator.dart';
import '../form.dart';

@RoutePage()
class FormPage extends StatelessWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
            title: Text(AppLocalizations.of(context).pageTitleForm),
            leading: IconButton(
              key: const Key('page-back-button'),
              icon: const Icon(
                Icons.arrow_back_ios_rounded,
              ),
              onPressed: () => context.router.pop(),
            )),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: BlocProvider(
            create: (context) => getIt.get<FormBloc>(),
            child: FormViewBodyWidget(),
          ),
        ),
      ),
    );
  }
}
