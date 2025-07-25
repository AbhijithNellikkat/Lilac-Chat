class ApiEndpoints {
  // Base Url
  static String baseUrl = 'https://test.myfliqapp.com/api/v1';

  // Auth
  static String sendOtp = '/auth/registration-otp-codes/actions/phone/send-otp';
  static String verifyOtp =
      '/auth/registration-otp-codes/actions/phone/verify-otp';

  // Messages & Chat
  static String allMessges = '/chat/chat-messages/queries/contact-users';
  static String userChat =
      '/chat/chat-messages/queries/chat-between-users/55/81';
}
