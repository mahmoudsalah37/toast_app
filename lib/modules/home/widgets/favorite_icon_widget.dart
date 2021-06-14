import 'package:flutter/material.dart';

class FavoriteIconWidget extends StatefulWidget {
  const FavoriteIconWidget({required this.onChanged});
  final void Function(bool v) onChanged;
  @override
  _FavoriteIconWidgetState createState() => _FavoriteIconWidgetState();
}

class _FavoriteIconWidgetState extends State<FavoriteIconWidget> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: const EdgeInsets.all(0),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
          widget.onChanged(isFavorite);
        });
      },
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.blue,
      ),
    );
  }
}
