// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:meetup_flutter/shared/bloc/form_bloc/form_bloc.dart' as _i6;
import 'package:meetup_flutter/shared/repository/base_repository.dart' as _i5;
import 'package:meetup_flutter/shared/repository/dio_client.dart' as _i3;
import 'package:meetup_flutter/shared/repository/form_repository.dart' as _i4;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of main-scope dependencies inside of [GetIt]
_i1.GetIt init(_i1.GetIt getIt,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(getIt, environment, environmentFilter);
  gh.singleton<_i3.DioClient>(_i3.DioClient());
  gh.singleton<_i4.FormRepository>(_i4.FormRepository(gh<_i3.DioClient>()));
  gh.singleton<_i5.BaseRepository>(_i5.BaseRepository(gh<_i3.DioClient>()));
  gh.singleton<_i6.FormBloc>(
      _i6.FormBloc(formRepository: gh<_i4.FormRepository>()));
  return getIt;
}
