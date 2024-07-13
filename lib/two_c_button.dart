import 'package:flutter/material.dart';

class TwoCButton extends StatefulWidget {
  
  const TwoCButton({super.key, this.icon = Icons.extension, this.color1 = Colors.black, this.color2 = Colors.white});

  final IconData icon; 
  final Color color1;
  final Color color2;

  @override
  State<TwoCButton> createState() => _TwoCButtonState();
}

class _TwoCButtonState extends State<TwoCButton> {
  
  bool _isToggled = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: _toggleColor,
      color: _isToggled ? widget.color1 : widget.color2, 
      icon: Icon(widget.icon));
  }

  void _toggleColor() {
    
    setState(() {
      _isToggled = ! _isToggled;
    });
  }
}