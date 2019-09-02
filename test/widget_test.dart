
import 'package:picpay_copy/src/shared/repositories/user_repository.dart';

import 'package:test/test.dart';

void main() {
  test(
    'fetch User Test',
    () async {
      final userRepository = UserRepository();
      final users = await userRepository.fetchUsers();

      /**
     * 
     * {
    "id": 1001,
    "name": "Eduardo Santos",
    "img": "https://randomuser.me/api/portraits/men/9.jpg",
    "username": "@eduardo.santos"
  }
     */
      expect(
        users[0].id,
        1001,
      );
    },
  );
}
