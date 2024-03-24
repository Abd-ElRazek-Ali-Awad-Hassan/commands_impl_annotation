import 'package:failures/failures.dart';
import 'package:fpdart/fpdart.dart';

class GenerateForCommands {
  const GenerateForCommands();
}

typedef ExceptionToFailureMapper = Future<Either<Failure, void>> Function({
  required Future<Either<Failure, void>> Function() callback,
});

class Command {
  const Command({
    this.withCaching = false,
    this.mapExceptionToFailure,
  });

  final bool withCaching;
  final ExceptionToFailureMapper? mapExceptionToFailure;
}
