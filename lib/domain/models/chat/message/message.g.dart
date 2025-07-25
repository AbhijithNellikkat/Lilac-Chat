// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Message _$MessageFromJson(Map<String, dynamic> json) => Message(
  type: json['type'] as String?,
  id: json['id'] as String?,
  chatThreadId: (json['chat_thread_id'] as num?)?.toInt(),
  chatMessageTypeId: (json['chat_message_type_id'] as num?)?.toInt(),
  senderId: (json['sender_id'] as num?)?.toInt(),
  receiverId: (json['receiver_id'] as num?)?.toInt(),
  message: json['message'] as String?,
  mediaMeta: json['media_meta'],
  isOneTimeView: json['is_one_time_view'] as bool?,
  isOnVanishMode: json['is_on_vanish_mode'] as bool?,
  scheduledAt: json['scheduled_at'],
  sentAt: json['sent_at'] == null
      ? null
      : DateTime.parse(json['sent_at'] as String),
  deliveredAt: json['delivered_at'] == null
      ? null
      : DateTime.parse(json['delivered_at'] as String),
  viewedAt: json['viewed_at'],
  stickerId: json['sticker_id'],
  giftOrderId: json['gift_order_id'],
  senderCoinTransactionId: json['sender_coin_transaction_id'],
  receiverCoinTransactionId: json['receiver_coin_transaction_id'],
  transferCoins: json['transfer_coins'],
  deletedForSenderBy: json['deleted_for_sender_by'],
  deletedForSenderAt: json['deleted_for_sender_at'],
  deletedForReceiverBy: json['deleted_for_receiver_by'],
  deletedForReceiverAt: json['deleted_for_receiver_at'],
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
  deletedAt: json['deleted_at'],
  mediaUrl: json['media_url'],
  sender: json['sender'] == null
      ? null
      : Sender.fromJson(json['sender'] as Map<String, dynamic>),
);

Map<String, dynamic> _$MessageToJson(Message instance) => <String, dynamic>{
  'type': instance.type,
  'id': instance.id,
  'chat_thread_id': instance.chatThreadId,
  'chat_message_type_id': instance.chatMessageTypeId,
  'sender_id': instance.senderId,
  'receiver_id': instance.receiverId,
  'message': instance.message,
  'media_meta': instance.mediaMeta,
  'is_one_time_view': instance.isOneTimeView,
  'is_on_vanish_mode': instance.isOnVanishMode,
  'scheduled_at': instance.scheduledAt,
  'sent_at': instance.sentAt?.toIso8601String(),
  'delivered_at': instance.deliveredAt?.toIso8601String(),
  'viewed_at': instance.viewedAt,
  'sticker_id': instance.stickerId,
  'gift_order_id': instance.giftOrderId,
  'sender_coin_transaction_id': instance.senderCoinTransactionId,
  'receiver_coin_transaction_id': instance.receiverCoinTransactionId,
  'transfer_coins': instance.transferCoins,
  'deleted_for_sender_by': instance.deletedForSenderBy,
  'deleted_for_sender_at': instance.deletedForSenderAt,
  'deleted_for_receiver_by': instance.deletedForReceiverBy,
  'deleted_for_receiver_at': instance.deletedForReceiverAt,
  'created_at': instance.createdAt?.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
  'deleted_at': instance.deletedAt,
  'media_url': instance.mediaUrl,
  'sender': instance.sender,
};
