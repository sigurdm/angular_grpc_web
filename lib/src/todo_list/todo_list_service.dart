import 'dart:async';

import 'package:angular/core.dart';

import 'package:grpc/grpc_web.dart';

/// Mock service emulating access to a to-do list stored on a server.
@Injectable()
class TodoListService {
  List<String> mockTodoList = <String>[];

  Future<List<String>> getTodoList() async => mockTodoList;

  final String _uriChannel = 'http://localhost:8080';

  //GRPC NOT USED IN THIS APP. JUST PUB HERE FOR COMPILER PURPOSE
  GrpcWebClientChannel _channel;

  TodoListService(this._channel) {
    _channel = GrpcWebClientChannel.xhr(Uri.parse(_uriChannel));
  }

  GrpcWebClientChannel get channel {

    return _channel;
  }



}


