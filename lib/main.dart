//
// Copyright 2023 present theiskaa. All rights reserved.
// Use of this source code is governed by MIT license
// that can be found in the LICENSE file.
//

import 'package:chatgpt/chat_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ChatCubit>(
      create: (context) => ChatCubit(),
      child: const MaterialApp(
        title: 'MobileGPT',
        home: Main(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocBuilder<ChatCubit, WebViewController>(
          builder: (_, c) => WebViewWidget(controller: c),
        ),
      ),
    );
  }
}
