void main() {
  Exception exception;
  Error error;
  try{
    int result = 10 ~/ 0;
    print('result : $result');
  } catch(error, stackTrace) {
    //예외 처리 코드
    print('An error : $error');
    print('An stackTrace : $stackTrace');
  } finally {
    //예외 발생 여부와 상관 없이 항상 실행 되는 코드
    print('반드시 실행 되는 블록');
  }

  print('--------------------');

}