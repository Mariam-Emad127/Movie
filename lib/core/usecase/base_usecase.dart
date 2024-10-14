import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movie/core/error/failure.dart';

abstract class BaseUseCase<T >  {

//Future<Either<Failure,T>>call(Parameters parameters);
Future<Either<Failure,T>>call( );


}

class NoParameters extends Equatable {
  const NoParameters();
  @override
  List<Object> get props => [];
}