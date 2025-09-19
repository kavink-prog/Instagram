import 'package:flutter/material.dart';

class appbar extends StatefulWidget {
  const appbar({super.key});

  @override
  State<appbar> createState() => _appbarState();
}

class _appbarState extends State<appbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Left Icon (Camera)
          InkWell(
            onTap: () {},
            child: Image.asset(
              'assets/icons/Camera Icon.png',
              height: 22.73,
              width: 19.75,
              color: Colors.white,
            ),
          ),

          // Center Logo
          Image.asset(
            'assets/images/Instagram_font.png',
            height: 40,
            fit: BoxFit.cover,
            color: Colors.white,
          ),

          // Right Icons
          Row(
            children: [
              InkWell(
                onTap: () {},
                child: Image.asset(
                  'assets/icons/IGTV.png',
                  height: 22.73,
                  width: 19.75,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 20),
              InkWell(
                onTap: () {},
                child: Image.asset(
                  'assets/icons/message.png',
                  height: 22.73,
                  width: 19.75,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
