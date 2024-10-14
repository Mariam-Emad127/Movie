import 'package:equatable/equatable.dart';

class ErrorMessageModel extends Equatable {
  final int statusCode;
  final String statusMessage;
  final bool success;

  const ErrorMessageModel({
    required this.statusCode,
    required this.statusMessage,
    required this.success,
  });
//Map<String,dynamic>
  factory ErrorMessageModel.fromjson(Map<String,dynamic>json){
    return ErrorMessageModel(
      //statusCode:json["status_code"]  ,
      statusCode: json["status_code"],// != null ? json["status_code"] as int : 0,
      statusMessage: json["status_message"],// != null ? json["status_message"]as String :"",
      success: json["success"]// !=null  ?json["success"]as bool:false ,
    );

  }

  @override
  // TODO: implement props
  List<Object?> get props => [statusCode,statusMessage,success ];




}

