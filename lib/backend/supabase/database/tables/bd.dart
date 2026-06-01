import '../database.dart';

class BdTable extends SupabaseTable<BdRow> {
  @override
  String get tableName => 'Bd';

  @override
  BdRow createRow(Map<String, dynamic> data) => BdRow(data);
}

class BdRow extends SupabaseDataRow {
  BdRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BdTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get time => getField<DateTime>('time');
  set time(DateTime? value) => setField<DateTime>('time', value);

  String? get nombre => getField<String>('nombre');
  set nombre(String? value) => setField<String>('nombre', value);

  String? get actuacion => getField<String>('actuacion');
  set actuacion(String? value) => setField<String>('actuacion', value);
}
