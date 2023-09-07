class DropdownOption {
  final int value;
  final String label;

  DropdownOption({
    required this.value,
    required this.label,
  });
}

class TestWiseBillResponse {
  final String billNo;
  final String billId;
  final String createDt;

  TestWiseBillResponse({
    required this.billNo,
    required this.billId,
    required this.createDt,
  });

  factory TestWiseBillResponse.fromJson(Map<String, dynamic> json) {
    return TestWiseBillResponse(
      billNo: json['BILL_NO'].toString(),
      billId: json['BILL_ID'].toString(),
      createDt: json['CREATE_DT'].toString(),
    );
  }
}
