class HttpPaths {
  static const baseUrl = 'https://smarttailor.xyz';

  static const registration = '$baseUrl/api/auth/sign-up';
  static const confirmation = '$baseUrl/api/auth/confirm-email';
  static const refreshToken = '$baseUrl/api/auth/refresh-token';
  static const login = '$baseUrl/api/auth/login';
  static const resendConfirmationCode = '$baseUrl/api/auth/resend-confirmation-code';
  static const signOut = '$baseUrl/api/auth/log-out';
}
