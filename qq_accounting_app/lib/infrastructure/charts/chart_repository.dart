import 'package:injectable/injectable.dart';

import '../../domain/charts/chart_item.dart';
import '../../domain/charts/i_chart_repository.dart';
import '../../domain/notes/note.dart';
import '../core/database_provider.dart';
import 'chart_item_dtos.dart';

@LazySingleton(as: IChartRepository)
class ChartRepository implements IChartRepository {
  final DatabaseProvider _databaseProvider = DatabaseProvider.db;

  ChartRepository();
 
  Future<List<ChartItem>> combineCategoryForChart(List<Note> notes) async {
    int _totalAmount = 0;
    List<Map<String, dynamic>> result = [];

    Map<String, int> _categoryWithAmountMap = {};

    notes.forEach((note) {
      _totalAmount += note.amount;
      if (_categoryWithAmountMap.containsKey(note.category)) {
        _categoryWithAmountMap[note.category] =
            _categoryWithAmountMap[note.category]! + note.amount;
      } else {
        _categoryWithAmountMap[note.category] = note.amount;
      }
    });

    _categoryWithAmountMap.forEach((key, value) {
      result.add({
        'category': key,
        'amount': value,
        'percentage': value / _totalAmount
      });
    });

    List<ChartItem> _chartItems =
        result.map((note) => ChartItemDto.fromJson(note).toDomain()).toList();
    return _chartItems;
    // return _categoryWithAmountMap;
  }

}
