import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:lilac_chat/data/service/api_service.dart';
import 'package:lilac_chat/domain/core/api_endpoints/api_endpoints.dart';
import 'package:lilac_chat/domain/models/chat/message/message.dart';
import 'package:lilac_chat/domain/models/chat/user_details/user_details.dart';
import 'package:lilac_chat/domain/models/failure/failure.dart';
import 'package:lilac_chat/domain/repository/chat_repo.dart';

class ChatService implements ChatRepo {
  final ApiService apiService = ApiService();
  @override
  Future<Either<Failure, List<UserDetails>>> getAllChats() async {
    try {
      final response = await apiService.get(
        ApiEndpoints.allMessges,
        isJapx: true,
        addHeader: true,
      );

      // log('ALL CHATS : $response');

      final List<dynamic> users = response['data'];

      return Right(users.map((e) => UserDetails.fromJson(e)).toList());
    } catch (e) {
      return Left(Failure(message: 'Failed to load chats'));
    }
  }

  @override
  Future<Either<Failure, List<Message>>> getMessages({
    required String senderId,
    required String receiverId,
  }) async {
    try {
      final url = ApiEndpoints.userChat
          .replaceFirst('{receiverId}', receiverId)
          .replaceFirst('{senderId}', senderId);
      final response = await apiService.get(url, isJapx: true, addHeader: true);

      final List<dynamic> messages = response['data'];

      return Right(messages.map((e) => Message.fromJson(e)).toList());
    } catch (e) {
      return Left(Failure(message: 'Failed to load chats'));
    }
  }
}
