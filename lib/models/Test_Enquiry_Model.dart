class TestEnquiry {
  final SERVICE_NAME;
  final SERVICE_STATUS1;
  final BILL_NO;
  final DISPLAY_NAME;
  final MOBILE_NO1;
  final AGE;
  final GENDER;
  final REPORT_CD;
  final BILL_DT;

  TestEnquiry(
      {required this.SERVICE_NAME,
      required this.SERVICE_STATUS1,
      required this.BILL_NO,
      required this.DISPLAY_NAME,
      required this.MOBILE_NO1,
      required this.AGE,
      required this.GENDER,
      required this.REPORT_CD,
      required this.BILL_DT});

  factory TestEnquiry.fromJson(Map<String, dynamic> json) {
    // var pdfdownloader =
    //     json['REPORT_CD'].toString() + json['BILL_NO'].toString();
    return TestEnquiry(
      SERVICE_NAME: json['SERVICE_NAME'].toString(),
      SERVICE_STATUS1: json['SERVICE_STATUS1'].toString(),
      BILL_NO: json['BILL_NO'].toString(),
      DISPLAY_NAME: json['DISPLAY_NAME'].toString(),
      MOBILE_NO1: json['MOBILE_NO1'].toString(),
      AGE: json['AGE'].toString(),
      GENDER: json['GENDER'].toString(),
      REPORT_CD: json['REPORT_CD'].toString(),
      BILL_DT: json['BILL_DT'].toString(),
    );
  }
}
