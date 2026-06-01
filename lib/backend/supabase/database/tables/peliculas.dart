import '../database.dart';

class PeliculasTable extends SupabaseTable<PeliculasRow> {
  @override
  String get tableName => 'peliculas';

  @override
  PeliculasRow createRow(Map<String, dynamic> data) => PeliculasRow(data);
}

class PeliculasRow extends SupabaseDataRow {
  PeliculasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PeliculasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get titulo => getField<String>('titulo')!;
  set titulo(String value) => setField<String>('titulo', value);

  String? get sinopsis => getField<String>('sinopsis');
  set sinopsis(String? value) => setField<String>('sinopsis', value);

  String? get posterUrl => getField<String>('poster_url');
  set posterUrl(String? value) => setField<String>('poster_url', value);

  int? get anio => getField<int>('anio');
  set anio(int? value) => setField<int>('anio', value);

  String? get genero => getField<String>('genero');
  set genero(String? value) => setField<String>('genero', value);

  String? get director => getField<String>('director');
  set director(String? value) => setField<String>('director', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
