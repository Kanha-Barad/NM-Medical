class RegistrationResponse {
  final String patientId;
  final String umrNo;
  final String sessionId;

  RegistrationResponse({
    required this.patientId,
    required this.umrNo,
    required this.sessionId,
  });

  // factory RegistrationResponse.fromJson(Map<String, dynamic> json) {
  //   return RegistrationResponse(
  //     patientId: json['PATIENT_ID'],
  //     umrNo: json['UMR_NO'],
  //     sessionId: json['SESSION_ID'],
  //   );
  // }
}
