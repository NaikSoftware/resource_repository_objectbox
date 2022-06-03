/*
 * Copyright (c) Resource Repository
 * 2020-2021 NaikSoftware
 */

import 'package:resource_repository_storage/resource_repository_storage.dart';

import 'objectbox_cache_storage_stub.dart'
    if (dart.library.io) 'objectbox_cache_storage_impl.dart';

/// An implementation of [CacheStorage] using [ObjectBox](https://objectbox.io/) as the database.
/// Supported platforms: mobile and desktop. For the Web you can use [HiveCacheStorage].
abstract class ObjectBoxCacheStorage<K, V> implements CacheStorage<K, V> {
  factory ObjectBoxCacheStorage(
    String boxKey, {
    required V Function(dynamic json) decode,
  }) =>
      createObjectBoxCacheStorage<K, V>(boxKey, decode: decode);
}
