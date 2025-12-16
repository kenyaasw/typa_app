import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:typa_app/themes/theme_provider.dart';

class ChatBubble extends StatelessWidget {
  final String message;
  final bool isCurrentUser;

  const ChatBubble({
    super.key,
    required this.message,
    required this.isCurrentUser,
  });

  @override
  Widget build(BuildContext context) {
    // light mode vs dark mode for correct bubble colors
    bool isDarkMode = Provider.of<ThemeProvider>(context, listen: false).isDarkMode;

    return Container(
      decoration: BoxDecoration(
        color: isCurrentUser 
        ? (isDarkMode ? const Color.fromARGB(255, 24, 93, 153) : const Color.fromARGB(255, 146, 200, 244))
        : (isDarkMode ? Colors.grey.shade800 : Colors.grey.shade200),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(vertical: 3, horizontal: 25,),
      child: Text(
        message,
        style: TextStyle(
          color: isCurrentUser
          ? (isDarkMode ? Colors.white : Colors.black)
          : (isDarkMode ? Colors.white : Colors.black),
        ),
      ),
    );
  }
}