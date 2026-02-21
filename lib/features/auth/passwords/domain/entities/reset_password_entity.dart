class ResetPasswordEntity {
  final String resetToken, code, password, confirmPassword;

  ResetPasswordEntity(
    this.resetToken,
    this.code,
    this.password,
    this.confirmPassword,
  );
}
