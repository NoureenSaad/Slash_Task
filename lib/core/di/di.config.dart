// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/repository_impl/best_selling_repo_impl.dart' as _i4;
import '../../data/repository_impl/new_arrival_repo_impl.dart' as _i9;
import '../../data/repository_impl/recommended_for_you_repo_impl.dart' as _i7;
import '../../domain/repository_contract/best_selling_repo.dart' as _i3;
import '../../domain/repository_contract/new_arrival_repo.dart' as _i8;
import '../../domain/repository_contract/recommended_for_you_repo.dart' as _i6;
import '../../domain/usecases/best_selling_usecase.dart' as _i5;
import '../../domain/usecases/new_arrival_usecase.dart' as _i11;
import '../../domain/usecases/recommended_usecase.dart' as _i12;
import '../../presentation/home/tabs/home_tab/best_selling/view_model/best_selling_cubit.dart'
    as _i10;
import '../../presentation/home/tabs/home_tab/new_arrival/view_model/new_arrival_cubit.dart'
    as _i13;
import '../../presentation/home/tabs/home_tab/recommended/view_model/recommended_cubit.dart'
    as _i14;

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
    gh.factory<_i3.BestSellingRepo>(() => _i4.BestSellingRepoImpl());
    gh.factory<_i5.BestSellingUseCase>(
        () => _i5.BestSellingUseCase(gh<_i3.BestSellingRepo>()));
    gh.factory<_i6.RecommendedForYouRepo>(
        () => _i7.RecommendedForYouRepoImpl());
    gh.factory<_i8.NewArrivalRepo>(() => _i9.NewArrivalRepoImpl());
    gh.factory<_i10.BestSellingCubit>(
        () => _i10.BestSellingCubit(gh<_i5.BestSellingUseCase>()));
    gh.factory<_i11.NewArrivalUseCase>(
        () => _i11.NewArrivalUseCase(gh<_i8.NewArrivalRepo>()));
    gh.factory<_i12.RecommendedUseCase>(
        () => _i12.RecommendedUseCase(gh<_i6.RecommendedForYouRepo>()));
    gh.factory<_i13.NewArrivalCubit>(
        () => _i13.NewArrivalCubit(gh<_i11.NewArrivalUseCase>()));
    gh.factory<_i14.RecommendedCubit>(
        () => _i14.RecommendedCubit(gh<_i12.RecommendedUseCase>()));
    return this;
  }
}
