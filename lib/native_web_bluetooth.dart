@JS('window')
library native_web_bluetooth;

import 'package:flutter/foundation.dart';
import 'package:rxdart/rxdart.dart';

import 'native/js/JSUtils.dart';
import 'native/js/js.dart';

part 'native/NativeBluetoothCharacteristicProperties.dart';

part 'native/NativeBluetoothDevice.dart';

part 'native/NativeBluetoothRemoteGATTCharacteristic.dart';

part 'native/NativeBluetoothRemoteGATTDescriptor.dart';

part 'native/NativeBluetoothRemoteGATTServer.dart';

part 'native/NativeBluetoothRemoteGATTService.dart';

part 'native/bluetooth.dart';

part 'native/errors/DeviceNotFoundError.dart';

part 'native/errors/NativeAPINotImplementedError.dart';

part 'native/errors/UserCancelledDialogError.dart';

JSUtilsInterface _JSUtil = JSUtils();

@visibleForTesting
void setJSUtils(JSUtilsInterface utils) {
  _JSUtil = utils;
}
