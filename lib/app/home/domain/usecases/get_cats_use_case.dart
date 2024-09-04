import 'package:gatos_app/app/home/domain/entities/document.dart';
import 'package:gatos_app/app/home/domain/repositories/cat_repository.dart';

class GetCatsUseCase {
  final CatsRepository _userFormRepository;

  GetCatsUseCase(this._userFormRepository);

  Future<List<Cat>> call() async {
    return await _userFormRepository.getCats();
  }
}
