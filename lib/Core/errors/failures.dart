abstract class Failure {
  final String errorMsg ;

  Failure(this.errorMsg);
}


class ServerError extends Failure{
  ServerError(super.errorMsg);
}