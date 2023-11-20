// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/datasource/api_datasource.dart' as _i4;
import '../data/datasource/datasource.dart' as _i7;
import '../data/repository/repository_impl.dart' as _i6;
import '../domain/mappers/user_mapper.dart' as _i3;
import '../domain/repository/feedback_repository.dart' as _i5;
import 'injection.dart' as _i8;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<Uri>(
      () => registerModule.baseUrl,
      instanceName: 'baseUrl',
    );
    gh.factory<_i3.UserMapper>(() => _i3.UserMapper());
    gh.factory<_i4.ApiDatasource>(
        () => _i4.ApiDatasource(baseUrl: gh<Uri>(instanceName: 'baseUrl')));
    gh.factory<_i5.FeedbackRepository>(() => _i6.FeedbackRepositoryImpl(
          gh<_i7.ApiDatasource>(),
          gh<_i3.UserMapper>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i8.RegisterModule {}
