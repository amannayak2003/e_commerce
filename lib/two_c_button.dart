import 'package:flutter/material.dart';

class TwoCButton extends StatefulWidget {
  
  const TwoCButton({super.key, this.icon1 = Icons.extension, this.icon2 = Icons.extension, this.color1 = Colors.black, this.color2 = Colors.white});

  final IconData icon1;
  final IconData icon2;
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
      onPressed: _doToggle,

      color: _isToggled ? widget.color1 : widget.color2, 
      
      icon: _isToggled ? Icon(widget.icon1) : Icon(widget.icon2));
  }

  void _doToggle() {
    
    setState(() {
      _isToggled = ! _isToggled;
    });
  }
}