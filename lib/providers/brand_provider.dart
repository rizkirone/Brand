import 'package:brand/models/brand_model.dart';
import 'package:flutter/material.dart';

import '../services/brand_service.dart';

class brandProvider extends ChangeNotifier {
  final BrandService _BrandService = BrandService();
  late brand_model brandModel;

  brandProvider()  {
    tampilkanDataBrand();

  }
  tampilkanDataBrand() async {
    brandModel = await _BrandService.tampikanBrand();
    print(brandModel.data?.length);
  }
}