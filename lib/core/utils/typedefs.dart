import 'package:dartz/dartz.dart';
import 'package:quent/core/errors/faluire.dart';

typedef ResultFuture<T> = Future<Either<Failure, T>>;
typedef Result<T> = Either<Failure, T>;
