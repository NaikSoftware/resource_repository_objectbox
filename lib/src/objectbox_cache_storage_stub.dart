/*
 * Copyright (c) Resource Repository
 * 2020-2021 NaikSoftware
 */

import 'objectbox_cache_storage.dart';

/// Stub for unsupported platforms (Web).
ObjectBoxCacheStorage<K, V> createObjectBoxCacheStorage<K, V>(
  //ignore: avoid-unused-parameters
  String boxKey, {
  //ignore: avoid-unused-parameters
  required V Function(dynamic json) decode,
}) {
  throw UnimplementedError('ObjectBox can\'t be used the on target platform');
}

Future<int> removeAllData() => throw UnimplementedError('ObjectBox can\'t be used the on target platform');
