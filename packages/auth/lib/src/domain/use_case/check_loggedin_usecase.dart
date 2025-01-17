import 'package:auth/src/domain/repositories/auth_repositories.dart';
import 'package:common_dependency/common_dependency.dart';

class CheckLoggedInUseCase {
  final AuthRepositories repositories;

  CheckLoggedInUseCase(this.repositories);
  Future<Either<Failure, bool>> call() async {
    return repositories.checkLoggedIn();
  }
}
