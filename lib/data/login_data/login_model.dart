class LoginModel {
  final String? userName;
  final String? password;
  final bool isLoading;
  final bool isLoginSuccess;

  LoginModel(
      {this.userName,
      this.password,
      this.isLoading = false,
      this.isLoginSuccess = false});
}
