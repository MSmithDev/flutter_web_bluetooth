///
/// A wrapper around [js_web_bluetooth] to make it more Dart friendly.
/// Changes event listeners into [Stream]s and Javascript promises into
/// [Future]s.
///
/// See:
/// [flutter_web_bluetooth_web] file for the actual web implementation.
///
library flutter_web_bluetooth;

import 'dart:async';
import 'dart:typed_data';

import 'package:flutter_web_bluetooth/js_web_bluetooth.dart';
import 'package:meta/meta.dart';

import '../web_bluetooth_logger.dart';
import '../shared/web_behavior_subject.dart';

part 'bluetooth_characteristic.dart';

part 'bluetooth_characteristic_properties.dart';

part 'bluetooth_default_uuids.dart';

part 'bluetooth_descriptor.dart';

part 'bluetooth_device.dart';

part 'bluetooth_service.dart';

part 'errors/bluetooth_adapter_not_available.dart';

part 'errors/network_error.dart';

part 'errors/not_found_error.dart';

part 'errors/not_supported_error.dart';

part 'errors/security_error.dart';

part 'flutter_web_bluetooth_interface.dart';

part 'request_options_builder.dart';

///
/// The main class to request devices from on the web.
///
/// Just get an instance using [instance] and request a device using [requestDevice].
///
/// **Note:** this is the unsupported variant that is exposed in io builds,
/// check the web version where the functions actually work!
///
class FlutterWebBluetooth extends FlutterWebBluetoothInterface {
  FlutterWebBluetooth._() {
    webBluetoothLogger.warning(
        'WARNING! initialized an instance of FlutterWebBluetooth on a non web platform!',
        null,
        StackTrace.current);
  }

  static FlutterWebBluetooth? _instance;

  static FlutterWebBluetoothInterface get instance {
    return _instance ??= FlutterWebBluetooth._();
  }

  @override
  bool get isBluetoothApiSupported => false;

  @override
  Stream<bool> get isAvailable => Stream.value(false);

  @override
  Stream<Set<BluetoothDevice>> get devices => Stream.value(<BluetoothDevice>{});

  @override
  @alwaysThrows
  Future<BluetoothDevice> requestDevice(RequestOptionsBuilder options) {
    throw NativeAPINotImplementedError('requestDevice');
  }
}
