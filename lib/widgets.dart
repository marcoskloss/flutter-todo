import 'package:flutter/material.dart';

class TaskCardWidget extends StatelessWidget {
  final String title;
  final String description;

  TaskCardWidget({this.title, this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(
        bottom: 20.0,
      ),
      padding: EdgeInsets.symmetric(
        vertical: 32.0,
        horizontal: 24.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title ?? "(Unnamed Task)",
            style: TextStyle(
              color: Color(0xFF211551),
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 14.0,
            ),
            child: Text(
              description ?? 'No description added.',
              style: TextStyle(
                fontSize: 16.0,
                color: Color(0xFF86829D),
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
