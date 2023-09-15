class LoginResponse {
  final double MSG_ID;
  final String OTP;
  final String MOBILE_NO;

  LoginResponse({
    required this.MSG_ID,
    required this.OTP,
    required this.MOBILE_NO,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      MSG_ID: (json['MSG_ID'] as num).toDouble(), // Convert to double
      OTP: json['OTP'].toString(),
      MOBILE_NO: json['MOBILE_NO'].toString(),
    );
  }
}
