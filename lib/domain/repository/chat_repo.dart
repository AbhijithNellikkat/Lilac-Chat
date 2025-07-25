import 'package:dartz/dartz.dart';
import 'package:lilac_chat/domain/models/chat/user_details/user_details.dart';

import '../models/failure/failure.dart';

abstract class ChatRepo {
  Future<Either<Failure, List<UserDetails>>> getAllChats();
}
