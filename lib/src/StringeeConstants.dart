export 'call/CallConstants.dart';
export 'messaging/MessagingConstants.dart';

/// Events for StringeeClient
enum StringeeClientEvents {
  DidConnect,
  DidDisconnect,
  DidFailWithError,
  RequestAccessToken,
  DidReceiveCustomMessage,
  IncomingCall,
  IncomingCall2,
  DidReceiveChange,
}

/// Events for StringeeCall
enum StringeeCallEvents {
  DidChangeSignalingState,
  DidChangeMediaState,
  DidReceiveCallInfo,
  DidHandleOnAnotherDevice,
  DidReceiveLocalStream,
  DidReceiveRemoteStream,
  DidChangeAudioDevice
}

/// Events for StringeeCall2
enum StringeeCall2Events {
  DidChangeSignalingState,
  DidChangeMediaState,
  DidReceiveCallInfo,
  DidHandleOnAnotherDevice,
  DidReceiveLocalStream,
  DidReceiveRemoteStream,
  DidChangeAudioDevice
}

/// Type of event
enum StringeeType {
  StringeeClient,
  StringeeCall,
  StringeeCall2,
}

/// Error code and message in flutter:
/// -1 : StringeeClient is not initialized or disconnected
/// -2 : value is invalid
/// -3 : Object is not found
Future<Map<String, dynamic>> reportInvalidValue(String value) async {
  Map<String, dynamic> params = {
    'status': false,
    'code': -2,
    'message': value + ' value is invalid',
  };
  return params;
}
