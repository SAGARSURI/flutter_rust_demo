// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.49.0.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names

import 'dart:convert';
import 'dart:async';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';

import 'package:meta/meta.dart';
import 'package:meta/meta.dart';
import 'dart:ffi' as ffi;

abstract class AdderFfi {
  Future<int> add({required int a, required int b, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kAddConstMeta;
}

class AdderFfiImpl implements AdderFfi {
  final AdderFfiPlatform _platform;
  factory AdderFfiImpl(ExternalLibrary dylib) =>
      AdderFfiImpl.raw(AdderFfiPlatform(dylib));

  /// Only valid on web/WASM platforms.
  factory AdderFfiImpl.wasm(FutureOr<WasmModule> module) =>
      AdderFfiImpl(module as ExternalLibrary);
  AdderFfiImpl.raw(this._platform);
  Future<int> add({required int a, required int b, dynamic hint}) =>
      _platform.executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => _platform.inner.wire_add(
            port_, _platform.api2wire_i64(a), _platform.api2wire_i64(b)),
        parseSuccessData: _wire2api_i64,
        constMeta: kAddConstMeta,
        argValues: [a, b],
        hint: hint,
      ));

  FlutterRustBridgeTaskConstMeta get kAddConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "add",
        argNames: ["a", "b"],
      );

// Section: wire2api

  int _wire2api_i64(dynamic raw) {
    return castInt(raw);
  }
}

// Section: api2wire

class AdderFfiPlatform extends FlutterRustBridgeBase<AdderFfiWire> {
  AdderFfiPlatform(ffi.DynamicLibrary dylib) : super(AdderFfiWire(dylib));
// Section: api2wire

  @protected
  int api2wire_i64(int raw) {
    return raw;
  }
// Section: api_fill_to_wire

}

// ignore_for_file: camel_case_types, non_constant_identifier_names, avoid_positional_boolean_parameters, annotate_overrides, constant_identifier_names

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.

/// generated by flutter_rust_bridge
class AdderFfiWire implements FlutterRustBridgeWireBase {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  AdderFfiWire(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  AdderFfiWire.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  void store_dart_post_cobject(
    DartPostCObjectFnType ptr,
  ) {
    return _store_dart_post_cobject(
      ptr,
    );
  }

  late final _store_dart_post_cobjectPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(DartPostCObjectFnType)>>(
          'store_dart_post_cobject');
  late final _store_dart_post_cobject = _store_dart_post_cobjectPtr
      .asFunction<void Function(DartPostCObjectFnType)>();

  void wire_add(
    int port_,
    int a,
    int b,
  ) {
    return _wire_add(
      port_,
      a,
      b,
    );
  }

  late final _wire_addPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64, ffi.Int64, ffi.Int64)>>('wire_add');
  late final _wire_add =
      _wire_addPtr.asFunction<void Function(int, int, int)>();

  void free_WireSyncReturnStruct(
    WireSyncReturnStruct val,
  ) {
    return _free_WireSyncReturnStruct(
      val,
    );
  }

  late final _free_WireSyncReturnStructPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(WireSyncReturnStruct)>>(
          'free_WireSyncReturnStruct');
  late final _free_WireSyncReturnStruct = _free_WireSyncReturnStructPtr
      .asFunction<void Function(WireSyncReturnStruct)>();
}

typedef DartPostCObjectFnType = ffi.Pointer<
    ffi.NativeFunction<ffi.Bool Function(DartPort, ffi.Pointer<ffi.Void>)>>;
typedef DartPort = ffi.Int64;