import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/charts/chart_failure.dart';
import '../../domain/charts/chart_item.dart';
import '../../domain/charts/i_chart_repository.dart';
import '../../domain/notes/note.dart';
import 'chart_item_dtos.dart';

@LazySingleton(as: IChartRepository)
class ChartRepository implements IChartRepository {

  ChartRepository();

  @override
  Future<Either<ChartFailure, List<ChartItem>>> combineCategoryForChart(
      List<Note> notes) async {
    try {
      int totalAmount = 0;
      List<Map<String, dynamic>> result = [];

      Map<String, int> categoryWithAmountMap = {};

      for (var note in notes) {
        totalAmount += note.amount;
        if (categoryWithAmountMap.containsKey(note.category)) {
          categoryWithAmountMap[note.category] =
              categoryWithAmountMap[note.category]! + note.amount;
        } else {
          categoryWithAmountMap[note.category] = note.amount;
        }
      }

      categoryWithAmountMap.forEach((key, value) {
        result.add({
          'category': key,
          'amount': value,
          'percentage': value / totalAmount
        });
      });

      List<ChartItem> chartItems =
          result.map((note) => ChartItemDto.fromJson(note).toDomain()).toList();
      return right(chartItems);
    } catch (e) {
      return left(ChartFailure.api(e.toString()));
    }
  }
}
