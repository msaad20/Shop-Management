import 'dart:convert';
import 'package:shop_management/core/storages/preference_storages/default_storage.dart';

abstract class MapStorage extends DefaultStorage<String> {
  Future<Map<String, dynamic>?> readMap() async {
    String? result = await read();
    if (result != null) return jsonDecode(result);
    return null;
  }

  Future<void> writeMap(Map<String, dynamic> map) async {
    return write(jsonEncode(map));
  }
}
