import 'package:annotated_shelf/annotated_shelf.dart';

class TutoriaModels extends Form {
  final int? idTutoria;
  final int idEstudiante;
  final int idTutor;
  final int idAsignatura;
  final String tema;
  final DateTime fecha;
  final int duracion; //En minutos
  final String? comentario;
  final int? estado;

  TutoriaModels({
    this.idTutoria,
    required this.idEstudiante,
    required this.idTutor,
    required this.idAsignatura,
    required this.tema,
    required this.fecha,
    required this.duracion,
    this.comentario,
    this.estado,
  });

  @override
  factory TutoriaModels.fromJson(Map<String, dynamic> map) {
    return TutoriaModels(
      idEstudiante: map['idEstudiante'],
      idTutor: map['idTutor'],
      idAsignatura: map['idAsignatura'],
      tema: map['tema'],
      fecha: DateTime.parse(map['fecha']),
      duracion: map['duracion'],
      comentario: map['comentario'],
      estado: map['estado'],
    );
  }
  factory TutoriaModels.fromJsonBD(Map<String, dynamic> map) {
    return TutoriaModels(
      idTutoria: map['id_tutoria'] ?? '',
      idEstudiante: map['idEstudiante'],
      idTutor: map['idTutor'],
      idAsignatura: map['idAsignatura'],
      tema: map['tema'],
      fecha: DateTime.parse(map['fecha']),
      duracion: map['duracion'],
      comentario: map['comentario'],
      estado: map['estado'],
    );
  }
  @override
  Map<String, dynamic> toJson() {
    return {
      "id_tutoria": idTutoria,
      "id_estudiante": idEstudiante,
      "id_tutor": idTutor,
      "id_asignatura": idAsignatura,
      "tema": tema,
      "fecha": fecha.toIso8601String(),
      "duracion": duracion,
      "comentario": comentario,
      "estado": estado,
    };
  }

  List<Object?> toListValuesInsert() {
    return [
      idEstudiante,
      idTutor,
      idAsignatura,
      tema,
      fecha,
      duracion,
      comentario,
      estado,
    ];
  }

  String stringValues = '(?,?,?,?,?,?,?,?)';

  String stringValuesToInsert = '(idEstudiante, idTutor, idAsignatura, tema, fecha, duracion, comentario, estado)';

  String nameTable = 'tutorias';
}
