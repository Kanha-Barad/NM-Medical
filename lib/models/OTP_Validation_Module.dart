class OTPValidationResponse {
  String CNT;
  String SESSION_ID;
  String MOBILE_NO1;
  String GENDER;
  String ADDRESS1;
  String EMAIL_ID;
  String DISPLAY_NAME;
  String DOB;
  String UMR_NO;
  String AGE;

  OTPValidationResponse({
    required this.CNT,
    required this.SESSION_ID,
    required this.MOBILE_NO1,
    required this.GENDER,
    required this.ADDRESS1,
    required this.EMAIL_ID,
    required this.DISPLAY_NAME,
    required this.DOB,
    required this.UMR_NO,
    required this.AGE,
  });

  factory OTPValidationResponse.fromJson(Map<String, dynamic> json) {
    return OTPValidationResponse(
      CNT: json['CNT'].toString(),
      SESSION_ID: json['SESSION_ID'].toString(),
      MOBILE_NO1: json['MOBILE_NO1'].toString(),
      GENDER: json['GENDER'].toString(),
      ADDRESS1: json['ADDRESS1'].toString(),
      EMAIL_ID: json['EMAIL_ID'].toString(),
      DISPLAY_NAME: json['DISPLAY_NAME'].toString(),
      DOB: json['DOB'].toString(),
      UMR_NO: json['UMR_NO'].toString(),
      AGE: json['AGE'].toString(),
    );
  }
  Map<String, dynamic> toJson() {
    return {
      "CNT": CNT,
      "SESSION_ID": SESSION_ID,
      "MOBILE_NO1": MOBILE_NO1,
      "GENDER": GENDER,
      "ADDRESS1": ADDRESS1,
      "EMAIL_ID": EMAIL_ID,
      "DISPLAY_NAME": DISPLAY_NAME,
      "DOB": DOB,
      "UMR_NO": UMR_NO,
      "AGE":AGE,
    };
  }
}
