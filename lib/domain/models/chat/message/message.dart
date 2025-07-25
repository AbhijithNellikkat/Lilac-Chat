import 'package:json_annotation/json_annotation.dart';

import 'sender.dart';

part 'message.g.dart';

@JsonSerializable()
class Message {
  String? type;
  String? id;
  @JsonKey(name: 'chat_thread_id')
  int? chatThreadId;
  @JsonKey(name: 'chat_message_type_id')
  int? chatMessageTypeId;
  @JsonKey(name: 'sender_id')
  int? senderId;
  @JsonKey(name: 'receiver_id')
  int? receiverId;
  String? message;
  @JsonKey(name: 'media_meta')
  dynamic mediaMeta;
  @JsonKey(name: 'is_one_time_view')
  bool? isOneTimeView;
  @JsonKey(name: 'is_on_vanish_mode')
  bool? isOnVanishMode;
  @JsonKey(name: 'scheduled_at')
  dynamic scheduledAt;
  @JsonKey(name: 'sent_at')
  DateTime? sentAt;
  @JsonKey(name: 'delivered_at')
  DateTime? deliveredAt;
  @JsonKey(name: 'viewed_at')
  dynamic viewedAt;
  @JsonKey(name: 'sticker_id')
  dynamic stickerId;
  @JsonKey(name: 'gift_order_id')
  dynamic giftOrderId;
  @JsonKey(name: 'sender_coin_transaction_id')
  dynamic senderCoinTransactionId;
  @JsonKey(name: 'receiver_coin_transaction_id')
  dynamic receiverCoinTransactionId;
  @JsonKey(name: 'transfer_coins')
  dynamic transferCoins;
  @JsonKey(name: 'deleted_for_sender_by')
  dynamic deletedForSenderBy;
  @JsonKey(name: 'deleted_for_sender_at')
  dynamic deletedForSenderAt;
  @JsonKey(name: 'deleted_for_receiver_by')
  dynamic deletedForReceiverBy;
  @JsonKey(name: 'deleted_for_receiver_at')
  dynamic deletedForReceiverAt;
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;
  @JsonKey(name: 'deleted_at')
  dynamic deletedAt;
  @JsonKey(name: 'media_url')
  dynamic mediaUrl;
  Sender? sender;

  Message({
    this.type,
    this.id,
    this.chatThreadId,
    this.chatMessageTypeId,
    this.senderId,
    this.receiverId,
    this.message,
    this.mediaMeta,
    this.isOneTimeView,
    this.isOnVanishMode,
    this.scheduledAt,
    this.sentAt,
    this.deliveredAt,
    this.viewedAt,
    this.stickerId,
    this.giftOrderId,
    this.senderCoinTransactionId,
    this.receiverCoinTransactionId,
    this.transferCoins,
    this.deletedForSenderBy,
    this.deletedForSenderAt,
    this.deletedForReceiverBy,
    this.deletedForReceiverAt,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.mediaUrl,
    this.sender,
  });

  factory Message.fromJson(Map<String, dynamic> json) {
    return _$MessageFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MessageToJson(this);
}
