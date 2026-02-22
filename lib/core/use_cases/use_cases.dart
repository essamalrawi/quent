import 'package:dartz/dartz.dart';

import '../errors/faluire.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call([Params param]);
}

class NoParam {}
