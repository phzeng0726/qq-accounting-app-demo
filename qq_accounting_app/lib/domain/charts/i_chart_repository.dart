import '../notes/note.dart';
import 'chart_item.dart';

abstract class IChartRepository {
  Future<List<ChartItem>> combineCategoryForChart(List<Note> notes);
}
