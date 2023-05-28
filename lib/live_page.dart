import 'package:flutter/material.dart';
import 'package:live_stream/const.dart';
import 'package:zego_uikit_prebuilt_live_streaming/zego_uikit_prebuilt_live_streaming.dart';
class MyWidget extends StatefulWidget {
  const MyWidget({Key? key,
    required this.liveID,
  required this.userID,
  required this.userName,
    this.ishost=false,  })
      : super(key: key);
  final String liveID;
  final String userID;
  final String userName;
  final bool ishost;

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
  
    return SafeArea(child: ZegoUIKitPrebuiltLiveStreaming(
      appID: Constants.appID,
      appSign: Constants.appSign,
      userID: widget.userID,
      userName: widget.userName,
      liveID: widget.liveID,
      config:  widget.ishost
        ? ZegoUIKitPrebuiltLiveStreamingConfig.host()
        : ZegoUIKitPrebuiltLiveStreamingConfig.audience(),



    ));
  }
}
