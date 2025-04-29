import 'package:dio/dio.dart';

abstract class DataState<T> {
  final T? data;
  final DioException? error;
  const DataState({this.data, this.error});
}

// class DataStateLoading<T> extends DataState<T> {
//   const DataStateLoading();
// }

class DataSuccess<T> extends DataState<T> {
  @override
  const DataSuccess(T data) : super(data: data);
}

class DataFailed<T> extends DataState<T> {
  const DataFailed(DioException error) : super(error: error);
}

// class DataStateError<T> extends DataState<T> {
//   final String message;
//   const DataStateError(this.message);
// }

// class DataStateException<T> extends DataState<T> {
//   @override
//   final DioException error;
//   const DataStateException(this.error);
// }

// class DataStateEmpty<T> extends DataState<T> {
//   const DataStateEmpty();
// }

// class DataStateNoConnection<T> extends DataState<T> {
//   const DataStateNoConnection();
// }
