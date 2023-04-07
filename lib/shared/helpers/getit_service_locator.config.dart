// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../bloc/authentication_bloc/authentication_bloc.dart' as _i7;
import '../bloc/form_bloc/form_bloc.dart' as _i9;
import '../repository/authentication_repository/authentication.dart' as _i3;
import '../repository/authentication_repository/authentication_repository.dart'
    as _i4;
import '../repository/base_repository.dart' as _i8;
import '../repository/dio_client.dart' as _i5;
import '../repository/form_repository.dart' as _i6;
import '../routes/auth_guard.dart' as _i10;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.singleton<_i3.AppAuthentication>(_i3.AppAuthentication());
  gh.singleton<_i4.AuthenticationRepository>(_i4.AuthenticationRepository());
  gh.singleton<_i5.DioClient>(_i5.DioClient());
  gh.singleton<_i6.FormRepository>(_i6.FormRepository(gh<_i5.DioClient>()));
  gh.singleton<_i7.AuthenticationBloc>(_i7.AuthenticationBloc(
      authenticationRepository: gh<_i4.AuthenticationRepository>()));
  gh.singleton<_i8.BaseRepository>(_i8.BaseRepository(gh<_i5.DioClient>()));
  gh.singleton<_i9.FormBloc>(
      _i9.FormBloc(formRepository: gh<_i6.FormRepository>()));
  gh.factory<_i10.AuthGuard>(
      () => _i10.AuthGuard(authBloc: gh<_i7.AuthenticationBloc>()));
  return getIt;
}
