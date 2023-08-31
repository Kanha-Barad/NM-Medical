class UploadPrescripTIONResponse {
  final String billNo;
  final int billId;
  final String createDateTime;

  UploadPrescripTIONResponse({
    required this.billNo,
    required this.billId,
    required this.createDateTime,
  });

  factory UploadPrescripTIONResponse.fromJson(Map<String, dynamic> json) {
    return UploadPrescripTIONResponse(
      billNo: json['BILL_NO'],
      billId: json['BILL_ID'],
      createDateTime: json['CREATE_DT'],
    );
  }
}
