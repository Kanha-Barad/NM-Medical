class LoginResponse {
  final double MSG_ID;
  final String OTP;

  LoginResponse({
    required this.MSG_ID,
    required this.OTP,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      MSG_ID: (json['MSG_ID'] as num).toDouble(), // Convert to double
      OTP: json['OTP'].toString(),
    );
  }
}
