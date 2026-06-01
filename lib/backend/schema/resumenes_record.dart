import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResumenesRecord extends FirestoreRecord {
  ResumenesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "pelicula_id" field.
  String? _peliculaId;
  String get peliculaId => _peliculaId ?? '';
  bool hasPeliculaId() => _peliculaId != null;

  // "actor_nombre" field.
  String? _actorNombre;
  String get actorNombre => _actorNombre ?? '';
  bool hasActorNombre() => _actorNombre != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  bool hasRating() => _rating != null;

  // "comentario" field.
  String? _comentario;
  String get comentario => _comentario ?? '';
  bool hasComentario() => _comentario != null;

  void _initializeFields() {
    _peliculaId = snapshotData['pelicula_id'] as String?;
    _actorNombre = snapshotData['actor_nombre'] as String?;
    _rating = castToType<double>(snapshotData['rating']);
    _comentario = snapshotData['comentario'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('resumenes');

  static Stream<ResumenesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ResumenesRecord.fromSnapshot(s));

  static Future<ResumenesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ResumenesRecord.fromSnapshot(s));

  static ResumenesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ResumenesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ResumenesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ResumenesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ResumenesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ResumenesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createResumenesRecordData({
  String? peliculaId,
  String? actorNombre,
  double? rating,
  String? comentario,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'pelicula_id': peliculaId,
      'actor_nombre': actorNombre,
      'rating': rating,
      'comentario': comentario,
    }.withoutNulls,
  );

  return firestoreData;
}

class ResumenesRecordDocumentEquality implements Equality<ResumenesRecord> {
  const ResumenesRecordDocumentEquality();

  @override
  bool equals(ResumenesRecord? e1, ResumenesRecord? e2) {
    return e1?.peliculaId == e2?.peliculaId &&
        e1?.actorNombre == e2?.actorNombre &&
        e1?.rating == e2?.rating &&
        e1?.comentario == e2?.comentario;
  }

  @override
  int hash(ResumenesRecord? e) => const ListEquality()
      .hash([e?.peliculaId, e?.actorNombre, e?.rating, e?.comentario]);

  @override
  bool isValidKey(Object? o) => o is ResumenesRecord;
}
