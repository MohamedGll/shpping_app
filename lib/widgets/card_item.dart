import 'package:flutter/material.dart';
import 'package:flutter_task/constant.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: kPrimaryColor,
          width: 1.5,
        ),
      ),
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                  child: Image.network(
                    'https://th.bing.com/th/id/OIP.7SeMY3g9G_4NuDeEHBz8DgAAAA?rs=1&pid=ImgDetMain',
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  left: 130,
                  top: 8,
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      color: Colors.white,
                    ),
                    child: const Center(
                      child: FaIcon(
                        FontAwesomeIcons.heart,
                        color: kPrimaryColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Nike Air Jordan',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  const Text(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    'Nike shoesflexible for work',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'EGP 1,200',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 22),
                        child: Text(
                          '2000 EGP',
                          style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            decorationColor: Colors.blue,
                            color: Colors.blue,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Text(
                        'Review',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 4),
                        child: Text(
                          '(4.6)',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.star,
                        color: Color(0xffFDD700),
                      ),
                      const Spacer(),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(32),
                          color: kPrimaryColor,
                        ),
                        child: const Center(
                          child: FaIcon(
                            FontAwesomeIcons.plus,
                            color: Colors.white,
                            size: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
