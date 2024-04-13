import 'package:flutter/material.dart';
import 'package:sneakershop/models/shoe.dart';

class SneakerDetails extends StatefulWidget {
  const SneakerDetails({super.key, required this.shoe});
  final Shoe shoe;

  @override
  State<SneakerDetails> createState() => _SneakerDetailsState();
}

class _SneakerDetailsState extends State<SneakerDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(children: [
            Container(
              //height: MediaQuery.of(context).size.width,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(image: AssetImage(widget.shoe.imagePath))),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    color: Colors.white,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios),
                  ),
                   IconButton(
                    color: Colors.white,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.favorite),
                  )
                ],
              ),
            )
          ])
        ],
      ),
    );
  }
}
