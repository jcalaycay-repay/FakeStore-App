part of ProductListingPageLibrary;

class ProductListingForm extends StatefulWidget {
  const ProductListingForm({super.key});

  @override
  State<ProductListingForm> createState() => _ProductListingFormState();
}

class _ProductListingFormState extends State<ProductListingForm> {
  String? productImage;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ProductListingCubit>();
    final creationState = cubit.state as ProductCreationState;

    return SafeArea(
      child: Scaffold(
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
                      source: ImageSource.gallery,
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
                controller: creationState.nameController,
                validator: Validator.required,
                labelText: 'Product Name',
              ),
              CustomInput(
                controller: creationState.priceController,
                validator: Validator.required,
                labelText: 'Price',
                inputType: InputType.currency,
              ),
              CustomInput(
                controller: creationState.descriptionController,
                validator: Validator.required,
                labelText: 'Description',
                maxLines: 5,
              ),
              CustomInput(
                controller: creationState.categoryController,
                validator: Validator.required,
                labelText: 'Category',
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () => cubit.loadDummyData(),
                    child: Text('Load Dummy data'),
                  ),
        
                  FilledButton(
                    onPressed: () {
                      if (formKey.currentState!.validate() && productImage != null) {
                        cubit.uploadProduct();
                      }
                    },
                    child: Text(
                      'Submit',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
