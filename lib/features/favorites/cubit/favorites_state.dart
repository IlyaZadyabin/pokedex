part of 'favorites_cubit.dart';

enum FavoritesStateStatus {
  initial,
  loading,
  error;

  bool get isInitial => this == FavoritesStateStatus.initial;

  bool get isLoading => this == FavoritesStateStatus.loading;

  bool get isError => this == FavoritesStateStatus.error;
}

@freezed
class FavoritesState with _$FavoritesState {
  const factory FavoritesState({
    required List<Pokemon> favorites,
    required FavoritesStateStatus status,
  }) = _FavoritesState;
}
