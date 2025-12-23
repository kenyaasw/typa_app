import 'package:flutter/material.dart';
import 'package:typa_app/services/auth/auth_service.dart';
import 'package:typa_app/services/chat/chat_service.dart';

class BlockedUsersPage extends StatelessWidget {
  BlockedUsersPage({super.key});

  // chat & auth service
  final ChatService chatService = ChatService();
  final AuthService authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
