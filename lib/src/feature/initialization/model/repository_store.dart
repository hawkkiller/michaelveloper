import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'repository_store.freezed.dart';

@unfreezed
class InitializationProgress with _$InitializationProgress {
  InitializationProgress._();
  factory InitializationProgress({
    @Default('Not initialized') String message,
    @Default(0) int progress,
    SharedPreferences? sharedPreferences,
  }) = _InitializationProgress;

  RepositoryStore freeze() => RepositoryStore(
        sharedPreferences: sharedPreferences!,
      );
}

@freezed
class RepositoryStore with _$RepositoryStore {
  factory RepositoryStore({
    required final SharedPreferences sharedPreferences,
  }) = _RepositoryStore;
}
