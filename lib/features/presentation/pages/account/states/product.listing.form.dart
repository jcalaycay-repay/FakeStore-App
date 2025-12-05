import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:fakestore/core/theme/theme.singleton.dart';
import 'package:fakestore/features/data/functions/validators.dart';
import 'package:fakestore/features/data/models/product/product.model.dart';
import 'package:fakestore/features/data/repositories/product.dart';
import 'package:fakestore/features/domain/enums/input.type.dart';
import 'package:fakestore/features/domain/enums/validator.dart';
import 'package:fakestore/features/domain/styles/custom.button.style.dart';
import 'package:fakestore/features/domain/styles/general.input.decoration.dart';
import 'package:fakestore/features/presentation/universal_components/custom.form.dart';
import 'package:fakestore/features/presentation/universal_components/custom.input.dart';
import 'package:fakestore/features/presentation/universal_components/file.upload.area.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProductListingForm extends StatefulWidget {
  const ProductListingForm({super.key});

  @override
  State<ProductListingForm> createState() => _ProductListingFormState();
}

class _ProductListingFormState extends State<ProductListingForm> {
  TextEditingController nameController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  String? productImage;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    nameController.dispose();
    priceController.dispose();
    descriptionController.dispose();
    categoryController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: CustomForm(
          formKey: formKey,
          formTitle: "Upload a Product",
          formContent: [
            Row(
              spacing: 16,
              children: [
                if (productImage != null)
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(16),
                      child: SizedBox(
                        height: 150,
                        child: productImage!.contains('https://')
                            ? CachedNetworkImage(
                                imageUrl: productImage!,
                                fit: BoxFit.contain,
                              )
                            : Image.file(
                                File(productImage!),
                                height: 200,
                              ),
                      ),
                    ),
                  ),
                Expanded(
                  child: FileUploadArea(
                    source: ImageSource.camera,
                    callback: (file) {
                      if (file == null) return;
                      setState(() {
                        productImage = file.path;
                      });
                    },
                  ),
                ),
              ],
            ),
            CustomInput(
              controller: nameController,
              validator: Validator.required,
              labelText: 'Product Name',
            ),
            CustomInput(
              controller: priceController,
              validator: Validator.required,
              labelText: 'Price',
              inputType: InputType.currency,
            ),
            CustomInput(
              controller: descriptionController,
              validator: Validator.required,
              labelText: 'Description',
              maxLines: 5,
            ),
            CustomInput(
              controller: categoryController,
              validator: Validator.required,
              labelText: 'Category',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () => setState(() {
                    nameController = TextEditingController(
                      text: "Bocchi the Rock Nendoroid",
                    );
                    priceController = TextEditingController(
                      text: 42.01.toString(),
                    );
                    descriptionController = TextEditingController(
                      text: "Bocchi the Rock Nendoroid",
                    );
                    categoryController = TextEditingController(
                      text: "Action Figure",
                    );
                    productImage =
                        'https://www.goodsmileus.com/cdn/shop/files/data_2Fproductimages_2FNendoroids_2FHitoriGotoh_TracksuitVer_2F102_2508181014479375.jpg?v=1755655167&width=1920';
                  }),
                  child: Text('Load Dummy data'),
                ),

                FilledButton(
                  onPressed: () {
                    if (formKey.currentState!.validate() && productImage != null) {
                      final data = {
                        "title": nameController.value.text,
                        "price": priceController.value.text,
                        "description": descriptionController.value.text,
                        "category": categoryController.value.text,
                        "imageUrl": productImage,
                      };

                      ProductRepository().uploadProduct(data);
                    }
                  },
                  child: Text(
                    'Submit',
                  ),
                ),

                // CustomButton(
                //   text: "Submit",
                //   onPressed: () {
                    //   if (formKey.currentState!.validate() && productImage != null) {
                    //   final data = {
                    //     "title": nameController.value.text,
                    //     "price": priceController.value.text,
                    //     "description": descriptionController.value.text,
                    //     "category": categoryController.value.text,
                    //     "imageUrl": productImage,
                    //   };

                    //   ProductRepository().uploadProduct(data);
                    // }
                //   }
                // )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
