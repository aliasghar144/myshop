import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myshop/controllers/product_controller.dart';
import 'package:myshop/widgets/product_rank.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(onPressed: (){
            productController.getProduct();
          }, icon: const Icon(Icons.refresh))
        ],
        backgroundColor: Color(0xff3451FF),
        centerTitle: true,
        title: const Text('MyShop'),
        leading: IconButton(onPressed: () {
        }, icon: const Icon(Icons.shopping_cart),),
      ),
      body: SingleChildScrollView(
        child: Obx(() => Column(
          children: [
            const SizedBox(height: 15,),
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text('products',
                    style:TextStyle(
                        fontSize:20,
                        fontWeight: FontWeight.w500)),
              ),
            ),
            const Divider(color: Colors.grey,height: 30),
            productController.products.isEmpty? const CircularProgressIndicator(): GridView.builder(
              itemCount: productController.products.length,
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              scrollDirection:  Axis.vertical,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 260,
                mainAxisSpacing: 12,
              ), itemBuilder: (context, i) {
              return Card(
                child: Padding(padding: const EdgeInsets.all(6),
                child: SizedBox(
                  width: 170,
                  child: Column(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Container(
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                color: Color(0xffF5F7FA)),
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Image.network(
                                productController.products[i].image,
                                fit: BoxFit.contain,
                              ),
                            ),
                          )),
                      const SizedBox(
                        height: 6,
                      ),
                      Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(productController.products[i].title,
                                  maxLines: 2,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(fontSize: 15),
                                  textDirection: TextDirection.rtl,
                                  overflow: TextOverflow.ellipsis),
                              ProductRank(
                                rank: productController.products[i].rating.rate.toString(),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    '${productController.products[i].price}💲',),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                ],
                              )
                            ],
                          ))
                    ],
                  ),
                ),
                ),
              );
            },),
          ],
        )),
      ),
    );
  }
}
