import 'package:quent/core/utils/typedefs.dart';

abstract class UseCase<Type, Params> {
  ResultFuture<Type> call([Params param]);
}

class NoParam {}
