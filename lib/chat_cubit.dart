//
// Copyright 2023 present theiskaa. All rights reserved.
// Use of this source code is governed by MIT license
// that can be found in the LICENSE file.
//

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webview_flutter/webview_flutter.dart';

final pathURI = Uri.parse('https://chat.openai.com/chat');

/// A cubit wrapper for [WebViewController].
///
/// Have no idea why implemented :).
/// Looking forward to implement custom error handlers and sub-functions.
class ChatCubit extends Cubit<WebViewController> {
  ChatCubit()
      : super(WebViewController()
          ..setJavaScriptMode(JavaScriptMode.unrestricted)
          ..setBackgroundColor(Colors.black)
          ..setNavigationDelegate(NavigationDelegate(
            onNavigationRequest: (_) => NavigationDecision.navigate,
          ))
          ..loadRequest(pathURI));
}
