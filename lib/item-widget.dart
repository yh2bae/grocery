// ignore: file_names
import 'package:flutter/material.dart';
import 'package:grocery/data.dart';
import 'package:grocery/product-detail.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ProductDetail(
            product: product,
          );
        }));
      },
      child: Card(
          elevation: 2,
          shadowColor: Colors.blue,
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                  tag: product.image,
                  child:
                      SizedBox(width: 150, child: Image.asset(product.image))),
              const SizedBox(height: 6),
              Text(
                'Rp ${product.price}',
                style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 2),
              Text(
                product.name,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 2),
              Text(
                product.quantity,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 4),
              const Divider(
                height: 2,
                color: Colors.grey,
              ),
              const SizedBox(height: 10),
              const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: [
                        Icon(Icons.add_shopping_cart,
                            size: 20, color: Colors.blue),
                        SizedBox(width: 2),
                        Text("Beli",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 16,
                            ))
                      ],
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Row(
                      children: [
                        Icon(Icons.remove_circle_outline,
                            size: 20, color: Colors.blue),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Text('0'),
                        ),
                        Icon(Icons.add_circle_outline,
                            size: 20, color: Colors.blue),
                      ],
                    ),
                  ])
            ],
          )),
    );
  }
}
