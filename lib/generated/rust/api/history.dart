// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.3.0.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'structs.dart';

// These functions are ignored because they are not marked as `pub`: `confirm_recorded_outgoing_transaction`, `record_incoming_transaction`, `record_outgoing_transaction`
// These function are ignored because they are on traits that is not defined in current crate (put an empty `#[frb]` on it to unignore): `clone`, `fmt`

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<TxHistory>>
abstract class TxHistory implements RustOpaqueInterface {
  void addOutgoingTxToHistory(
      {required String txid,
      required List<String> spentOutpoints,
      required List<ApiRecipient> recipients,
      required ApiAmount change});

  static TxHistory decode({required String encodedHistory}) =>
      RustLib.instance.api
          .crateApiHistoryTxHistoryDecode(encodedHistory: encodedHistory);

  static TxHistory empty() =>
      RustLib.instance.api.crateApiHistoryTxHistoryEmpty();

  String encode();

  BigInt getUnconfirmedChange();

  void resetToHeight({required int height});

  List<ApiRecordedTransaction> toApiTransactions();
}
