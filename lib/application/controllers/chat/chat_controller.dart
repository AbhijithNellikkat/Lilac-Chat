import 'package:get/get.dart';
import 'package:lilac_chat/data/service/chat/chat_service.dart';
import 'package:lilac_chat/domain/models/chat/user_details/user_details.dart';
import 'package:lilac_chat/domain/repository/chat_repo.dart';

class ChatController extends GetxController {
  final ChatRepo chatService = ChatService();
  RxBool chatsLoading = false.obs;

  RxList<UserDetails> allChats = <UserDetails>[].obs;

  @override
  void onInit() {
    fetchAllChats();
    super.onInit();
  }

  Future<void> fetchAllChats() async {
    chatsLoading.value = true;
    final result = await chatService.getAllChats();
    result.fold(
      (failure) {
        chatsLoading.value = false;
      },
      (success) async {
        chatsLoading.value = false;
        allChats.assignAll(success);
      },
    );
  }
}
