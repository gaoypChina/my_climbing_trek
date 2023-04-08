// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drift_db_local_datasource.dart';

// **************************************************************************
// DriftDatabaseGenerator
// **************************************************************************

// ignore_for_file: type=lint
class DriftStrengthExercise extends DataClass
    implements Insertable<DriftStrengthExercise> {
  final int repetitions;
  final String id;
  final String name;
  final bool selected;
  const DriftStrengthExercise(
      {required this.repetitions,
      required this.id,
      required this.name,
      required this.selected});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['repetitions'] = Variable<int>(repetitions);
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    map['selected'] = Variable<bool>(selected);
    return map;
  }

  DriftStrengthExercisesTableCompanion toCompanion(bool nullToAbsent) {
    return DriftStrengthExercisesTableCompanion(
      repetitions: Value(repetitions),
      id: Value(id),
      name: Value(name),
      selected: Value(selected),
    );
  }

  factory DriftStrengthExercise.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DriftStrengthExercise(
      repetitions: serializer.fromJson<int>(json['repetitions']),
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      selected: serializer.fromJson<bool>(json['selected']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'repetitions': serializer.toJson<int>(repetitions),
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'selected': serializer.toJson<bool>(selected),
    };
  }

  DriftStrengthExercise copyWith(
          {int? repetitions, String? id, String? name, bool? selected}) =>
      DriftStrengthExercise(
        repetitions: repetitions ?? this.repetitions,
        id: id ?? this.id,
        name: name ?? this.name,
        selected: selected ?? this.selected,
      );
  @override
  String toString() {
    return (StringBuffer('DriftStrengthExercise(')
          ..write('repetitions: $repetitions, ')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('selected: $selected')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(repetitions, id, name, selected);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DriftStrengthExercise &&
          other.repetitions == this.repetitions &&
          other.id == this.id &&
          other.name == this.name &&
          other.selected == this.selected);
}

class DriftStrengthExercisesTableCompanion
    extends UpdateCompanion<DriftStrengthExercise> {
  final Value<int> repetitions;
  final Value<String> id;
  final Value<String> name;
  final Value<bool> selected;
  const DriftStrengthExercisesTableCompanion({
    this.repetitions = const Value.absent(),
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.selected = const Value.absent(),
  });
  DriftStrengthExercisesTableCompanion.insert({
    required int repetitions,
    required String id,
    required String name,
    this.selected = const Value.absent(),
  })  : repetitions = Value(repetitions),
        id = Value(id),
        name = Value(name);
  static Insertable<DriftStrengthExercise> custom({
    Expression<int>? repetitions,
    Expression<String>? id,
    Expression<String>? name,
    Expression<bool>? selected,
  }) {
    return RawValuesInsertable({
      if (repetitions != null) 'repetitions': repetitions,
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (selected != null) 'selected': selected,
    });
  }

  DriftStrengthExercisesTableCompanion copyWith(
      {Value<int>? repetitions,
      Value<String>? id,
      Value<String>? name,
      Value<bool>? selected}) {
    return DriftStrengthExercisesTableCompanion(
      repetitions: repetitions ?? this.repetitions,
      id: id ?? this.id,
      name: name ?? this.name,
      selected: selected ?? this.selected,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (repetitions.present) {
      map['repetitions'] = Variable<int>(repetitions.value);
    }
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (selected.present) {
      map['selected'] = Variable<bool>(selected.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DriftStrengthExercisesTableCompanion(')
          ..write('repetitions: $repetitions, ')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('selected: $selected')
          ..write(')'))
        .toString();
  }
}

class $DriftStrengthExercisesTableTable extends DriftStrengthExercisesTable
    with TableInfo<$DriftStrengthExercisesTableTable, DriftStrengthExercise> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DriftStrengthExercisesTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _repetitionsMeta =
      const VerificationMeta('repetitions');
  @override
  late final GeneratedColumn<int> repetitions = GeneratedColumn<int>(
      'repetitions', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: 'UNIQUE');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _selectedMeta = const VerificationMeta('selected');
  @override
  late final GeneratedColumn<bool> selected = GeneratedColumn<bool>(
      'selected', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK ("selected" IN (0, 1))',
      defaultValue: const Constant(false));
  @override
  List<GeneratedColumn> get $columns => [repetitions, id, name, selected];
  @override
  String get aliasedName => _alias ?? 'drift_strength_exercises_table';
  @override
  String get actualTableName => 'drift_strength_exercises_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<DriftStrengthExercise> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('repetitions')) {
      context.handle(
          _repetitionsMeta,
          repetitions.isAcceptableOrUnknown(
              data['repetitions']!, _repetitionsMeta));
    } else if (isInserting) {
      context.missing(_repetitionsMeta);
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('selected')) {
      context.handle(_selectedMeta,
          selected.isAcceptableOrUnknown(data['selected']!, _selectedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DriftStrengthExercise map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DriftStrengthExercise(
      repetitions: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}repetitions'])!,
      id: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      name: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      selected: attachedDatabase.options.types
          .read(DriftSqlType.bool, data['${effectivePrefix}selected'])!,
    );
  }

  @override
  $DriftStrengthExercisesTableTable createAlias(String alias) {
    return $DriftStrengthExercisesTableTable(attachedDatabase, alias);
  }
}

class DriftHallTreaning extends DataClass
    implements Insertable<DriftHallTreaning> {
  final String id;
  final int hallId;
  final DateTime date;
  final DateTime? finish;
  const DriftHallTreaning(
      {required this.id,
      required this.hallId,
      required this.date,
      this.finish});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['hall_id'] = Variable<int>(hallId);
    map['date'] = Variable<DateTime>(date);
    if (!nullToAbsent || finish != null) {
      map['finish'] = Variable<DateTime>(finish);
    }
    return map;
  }

  DriftHallTreaningsTableCompanion toCompanion(bool nullToAbsent) {
    return DriftHallTreaningsTableCompanion(
      id: Value(id),
      hallId: Value(hallId),
      date: Value(date),
      finish:
          finish == null && nullToAbsent ? const Value.absent() : Value(finish),
    );
  }

  factory DriftHallTreaning.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DriftHallTreaning(
      id: serializer.fromJson<String>(json['id']),
      hallId: serializer.fromJson<int>(json['hallId']),
      date: serializer.fromJson<DateTime>(json['date']),
      finish: serializer.fromJson<DateTime?>(json['finish']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'hallId': serializer.toJson<int>(hallId),
      'date': serializer.toJson<DateTime>(date),
      'finish': serializer.toJson<DateTime?>(finish),
    };
  }

  DriftHallTreaning copyWith(
          {String? id,
          int? hallId,
          DateTime? date,
          Value<DateTime?> finish = const Value.absent()}) =>
      DriftHallTreaning(
        id: id ?? this.id,
        hallId: hallId ?? this.hallId,
        date: date ?? this.date,
        finish: finish.present ? finish.value : this.finish,
      );
  @override
  String toString() {
    return (StringBuffer('DriftHallTreaning(')
          ..write('id: $id, ')
          ..write('hallId: $hallId, ')
          ..write('date: $date, ')
          ..write('finish: $finish')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, hallId, date, finish);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DriftHallTreaning &&
          other.id == this.id &&
          other.hallId == this.hallId &&
          other.date == this.date &&
          other.finish == this.finish);
}

class DriftHallTreaningsTableCompanion
    extends UpdateCompanion<DriftHallTreaning> {
  final Value<String> id;
  final Value<int> hallId;
  final Value<DateTime> date;
  final Value<DateTime?> finish;
  const DriftHallTreaningsTableCompanion({
    this.id = const Value.absent(),
    this.hallId = const Value.absent(),
    this.date = const Value.absent(),
    this.finish = const Value.absent(),
  });
  DriftHallTreaningsTableCompanion.insert({
    required String id,
    required int hallId,
    required DateTime date,
    this.finish = const Value.absent(),
  })  : id = Value(id),
        hallId = Value(hallId),
        date = Value(date);
  static Insertable<DriftHallTreaning> custom({
    Expression<String>? id,
    Expression<int>? hallId,
    Expression<DateTime>? date,
    Expression<DateTime>? finish,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (hallId != null) 'hall_id': hallId,
      if (date != null) 'date': date,
      if (finish != null) 'finish': finish,
    });
  }

  DriftHallTreaningsTableCompanion copyWith(
      {Value<String>? id,
      Value<int>? hallId,
      Value<DateTime>? date,
      Value<DateTime?>? finish}) {
    return DriftHallTreaningsTableCompanion(
      id: id ?? this.id,
      hallId: hallId ?? this.hallId,
      date: date ?? this.date,
      finish: finish ?? this.finish,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (hallId.present) {
      map['hall_id'] = Variable<int>(hallId.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (finish.present) {
      map['finish'] = Variable<DateTime>(finish.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DriftHallTreaningsTableCompanion(')
          ..write('id: $id, ')
          ..write('hallId: $hallId, ')
          ..write('date: $date, ')
          ..write('finish: $finish')
          ..write(')'))
        .toString();
  }
}

class $DriftHallTreaningsTableTable extends DriftHallTreaningsTable
    with TableInfo<$DriftHallTreaningsTableTable, DriftHallTreaning> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DriftHallTreaningsTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: 'UNIQUE');
  final VerificationMeta _hallIdMeta = const VerificationMeta('hallId');
  @override
  late final GeneratedColumn<int> hallId = GeneratedColumn<int>(
      'hall_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
      'date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _finishMeta = const VerificationMeta('finish');
  @override
  late final GeneratedColumn<DateTime> finish = GeneratedColumn<DateTime>(
      'finish', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, hallId, date, finish];
  @override
  String get aliasedName => _alias ?? 'drift_hall_treanings_table';
  @override
  String get actualTableName => 'drift_hall_treanings_table';
  @override
  VerificationContext validateIntegrity(Insertable<DriftHallTreaning> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('hall_id')) {
      context.handle(_hallIdMeta,
          hallId.isAcceptableOrUnknown(data['hall_id']!, _hallIdMeta));
    } else if (isInserting) {
      context.missing(_hallIdMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('finish')) {
      context.handle(_finishMeta,
          finish.isAcceptableOrUnknown(data['finish']!, _finishMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DriftHallTreaning map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DriftHallTreaning(
      id: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      hallId: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}hall_id'])!,
      date: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date'])!,
      finish: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}finish']),
    );
  }

  @override
  $DriftHallTreaningsTableTable createAlias(String alias) {
    return $DriftHallTreaningsTableTable(attachedDatabase, alias);
  }
}

class DriftHallAttempt extends DataClass
    implements Insertable<DriftHallAttempt> {
  final int id;
  final String treaningId;
  final String categoryId;
  final String styleId;
  final String? routeId;
  final DateTime? finish;
  final DateTime? start;
  final int? ascentTypeId;
  final int suspensionCount;
  final int fallCount;
  final bool downClimbing;
  final bool fail;
  const DriftHallAttempt(
      {required this.id,
      required this.treaningId,
      required this.categoryId,
      required this.styleId,
      this.routeId,
      this.finish,
      this.start,
      this.ascentTypeId,
      required this.suspensionCount,
      required this.fallCount,
      required this.downClimbing,
      required this.fail});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['treaning_id'] = Variable<String>(treaningId);
    map['category_id'] = Variable<String>(categoryId);
    map['style_id'] = Variable<String>(styleId);
    if (!nullToAbsent || routeId != null) {
      map['route_id'] = Variable<String>(routeId);
    }
    if (!nullToAbsent || finish != null) {
      map['finish'] = Variable<DateTime>(finish);
    }
    if (!nullToAbsent || start != null) {
      map['start'] = Variable<DateTime>(start);
    }
    if (!nullToAbsent || ascentTypeId != null) {
      map['ascent_type_id'] = Variable<int>(ascentTypeId);
    }
    map['suspension_count'] = Variable<int>(suspensionCount);
    map['fall_count'] = Variable<int>(fallCount);
    map['down_climbing'] = Variable<bool>(downClimbing);
    map['fail'] = Variable<bool>(fail);
    return map;
  }

  DriftHallAttemptsTableCompanion toCompanion(bool nullToAbsent) {
    return DriftHallAttemptsTableCompanion(
      id: Value(id),
      treaningId: Value(treaningId),
      categoryId: Value(categoryId),
      styleId: Value(styleId),
      routeId: routeId == null && nullToAbsent
          ? const Value.absent()
          : Value(routeId),
      finish:
          finish == null && nullToAbsent ? const Value.absent() : Value(finish),
      start:
          start == null && nullToAbsent ? const Value.absent() : Value(start),
      ascentTypeId: ascentTypeId == null && nullToAbsent
          ? const Value.absent()
          : Value(ascentTypeId),
      suspensionCount: Value(suspensionCount),
      fallCount: Value(fallCount),
      downClimbing: Value(downClimbing),
      fail: Value(fail),
    );
  }

  factory DriftHallAttempt.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DriftHallAttempt(
      id: serializer.fromJson<int>(json['id']),
      treaningId: serializer.fromJson<String>(json['treaningId']),
      categoryId: serializer.fromJson<String>(json['categoryId']),
      styleId: serializer.fromJson<String>(json['styleId']),
      routeId: serializer.fromJson<String?>(json['routeId']),
      finish: serializer.fromJson<DateTime?>(json['finish']),
      start: serializer.fromJson<DateTime?>(json['start']),
      ascentTypeId: serializer.fromJson<int?>(json['ascentTypeId']),
      suspensionCount: serializer.fromJson<int>(json['suspensionCount']),
      fallCount: serializer.fromJson<int>(json['fallCount']),
      downClimbing: serializer.fromJson<bool>(json['downClimbing']),
      fail: serializer.fromJson<bool>(json['fail']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'treaningId': serializer.toJson<String>(treaningId),
      'categoryId': serializer.toJson<String>(categoryId),
      'styleId': serializer.toJson<String>(styleId),
      'routeId': serializer.toJson<String?>(routeId),
      'finish': serializer.toJson<DateTime?>(finish),
      'start': serializer.toJson<DateTime?>(start),
      'ascentTypeId': serializer.toJson<int?>(ascentTypeId),
      'suspensionCount': serializer.toJson<int>(suspensionCount),
      'fallCount': serializer.toJson<int>(fallCount),
      'downClimbing': serializer.toJson<bool>(downClimbing),
      'fail': serializer.toJson<bool>(fail),
    };
  }

  DriftHallAttempt copyWith(
          {int? id,
          String? treaningId,
          String? categoryId,
          String? styleId,
          Value<String?> routeId = const Value.absent(),
          Value<DateTime?> finish = const Value.absent(),
          Value<DateTime?> start = const Value.absent(),
          Value<int?> ascentTypeId = const Value.absent(),
          int? suspensionCount,
          int? fallCount,
          bool? downClimbing,
          bool? fail}) =>
      DriftHallAttempt(
        id: id ?? this.id,
        treaningId: treaningId ?? this.treaningId,
        categoryId: categoryId ?? this.categoryId,
        styleId: styleId ?? this.styleId,
        routeId: routeId.present ? routeId.value : this.routeId,
        finish: finish.present ? finish.value : this.finish,
        start: start.present ? start.value : this.start,
        ascentTypeId:
            ascentTypeId.present ? ascentTypeId.value : this.ascentTypeId,
        suspensionCount: suspensionCount ?? this.suspensionCount,
        fallCount: fallCount ?? this.fallCount,
        downClimbing: downClimbing ?? this.downClimbing,
        fail: fail ?? this.fail,
      );
  @override
  String toString() {
    return (StringBuffer('DriftHallAttempt(')
          ..write('id: $id, ')
          ..write('treaningId: $treaningId, ')
          ..write('categoryId: $categoryId, ')
          ..write('styleId: $styleId, ')
          ..write('routeId: $routeId, ')
          ..write('finish: $finish, ')
          ..write('start: $start, ')
          ..write('ascentTypeId: $ascentTypeId, ')
          ..write('suspensionCount: $suspensionCount, ')
          ..write('fallCount: $fallCount, ')
          ..write('downClimbing: $downClimbing, ')
          ..write('fail: $fail')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      treaningId,
      categoryId,
      styleId,
      routeId,
      finish,
      start,
      ascentTypeId,
      suspensionCount,
      fallCount,
      downClimbing,
      fail);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DriftHallAttempt &&
          other.id == this.id &&
          other.treaningId == this.treaningId &&
          other.categoryId == this.categoryId &&
          other.styleId == this.styleId &&
          other.routeId == this.routeId &&
          other.finish == this.finish &&
          other.start == this.start &&
          other.ascentTypeId == this.ascentTypeId &&
          other.suspensionCount == this.suspensionCount &&
          other.fallCount == this.fallCount &&
          other.downClimbing == this.downClimbing &&
          other.fail == this.fail);
}

class DriftHallAttemptsTableCompanion
    extends UpdateCompanion<DriftHallAttempt> {
  final Value<int> id;
  final Value<String> treaningId;
  final Value<String> categoryId;
  final Value<String> styleId;
  final Value<String?> routeId;
  final Value<DateTime?> finish;
  final Value<DateTime?> start;
  final Value<int?> ascentTypeId;
  final Value<int> suspensionCount;
  final Value<int> fallCount;
  final Value<bool> downClimbing;
  final Value<bool> fail;
  const DriftHallAttemptsTableCompanion({
    this.id = const Value.absent(),
    this.treaningId = const Value.absent(),
    this.categoryId = const Value.absent(),
    this.styleId = const Value.absent(),
    this.routeId = const Value.absent(),
    this.finish = const Value.absent(),
    this.start = const Value.absent(),
    this.ascentTypeId = const Value.absent(),
    this.suspensionCount = const Value.absent(),
    this.fallCount = const Value.absent(),
    this.downClimbing = const Value.absent(),
    this.fail = const Value.absent(),
  });
  DriftHallAttemptsTableCompanion.insert({
    this.id = const Value.absent(),
    required String treaningId,
    required String categoryId,
    required String styleId,
    this.routeId = const Value.absent(),
    this.finish = const Value.absent(),
    this.start = const Value.absent(),
    this.ascentTypeId = const Value.absent(),
    required int suspensionCount,
    required int fallCount,
    required bool downClimbing,
    required bool fail,
  })  : treaningId = Value(treaningId),
        categoryId = Value(categoryId),
        styleId = Value(styleId),
        suspensionCount = Value(suspensionCount),
        fallCount = Value(fallCount),
        downClimbing = Value(downClimbing),
        fail = Value(fail);
  static Insertable<DriftHallAttempt> custom({
    Expression<int>? id,
    Expression<String>? treaningId,
    Expression<String>? categoryId,
    Expression<String>? styleId,
    Expression<String>? routeId,
    Expression<DateTime>? finish,
    Expression<DateTime>? start,
    Expression<int>? ascentTypeId,
    Expression<int>? suspensionCount,
    Expression<int>? fallCount,
    Expression<bool>? downClimbing,
    Expression<bool>? fail,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (treaningId != null) 'treaning_id': treaningId,
      if (categoryId != null) 'category_id': categoryId,
      if (styleId != null) 'style_id': styleId,
      if (routeId != null) 'route_id': routeId,
      if (finish != null) 'finish': finish,
      if (start != null) 'start': start,
      if (ascentTypeId != null) 'ascent_type_id': ascentTypeId,
      if (suspensionCount != null) 'suspension_count': suspensionCount,
      if (fallCount != null) 'fall_count': fallCount,
      if (downClimbing != null) 'down_climbing': downClimbing,
      if (fail != null) 'fail': fail,
    });
  }

  DriftHallAttemptsTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? treaningId,
      Value<String>? categoryId,
      Value<String>? styleId,
      Value<String?>? routeId,
      Value<DateTime?>? finish,
      Value<DateTime?>? start,
      Value<int?>? ascentTypeId,
      Value<int>? suspensionCount,
      Value<int>? fallCount,
      Value<bool>? downClimbing,
      Value<bool>? fail}) {
    return DriftHallAttemptsTableCompanion(
      id: id ?? this.id,
      treaningId: treaningId ?? this.treaningId,
      categoryId: categoryId ?? this.categoryId,
      styleId: styleId ?? this.styleId,
      routeId: routeId ?? this.routeId,
      finish: finish ?? this.finish,
      start: start ?? this.start,
      ascentTypeId: ascentTypeId ?? this.ascentTypeId,
      suspensionCount: suspensionCount ?? this.suspensionCount,
      fallCount: fallCount ?? this.fallCount,
      downClimbing: downClimbing ?? this.downClimbing,
      fail: fail ?? this.fail,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (treaningId.present) {
      map['treaning_id'] = Variable<String>(treaningId.value);
    }
    if (categoryId.present) {
      map['category_id'] = Variable<String>(categoryId.value);
    }
    if (styleId.present) {
      map['style_id'] = Variable<String>(styleId.value);
    }
    if (routeId.present) {
      map['route_id'] = Variable<String>(routeId.value);
    }
    if (finish.present) {
      map['finish'] = Variable<DateTime>(finish.value);
    }
    if (start.present) {
      map['start'] = Variable<DateTime>(start.value);
    }
    if (ascentTypeId.present) {
      map['ascent_type_id'] = Variable<int>(ascentTypeId.value);
    }
    if (suspensionCount.present) {
      map['suspension_count'] = Variable<int>(suspensionCount.value);
    }
    if (fallCount.present) {
      map['fall_count'] = Variable<int>(fallCount.value);
    }
    if (downClimbing.present) {
      map['down_climbing'] = Variable<bool>(downClimbing.value);
    }
    if (fail.present) {
      map['fail'] = Variable<bool>(fail.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DriftHallAttemptsTableCompanion(')
          ..write('id: $id, ')
          ..write('treaningId: $treaningId, ')
          ..write('categoryId: $categoryId, ')
          ..write('styleId: $styleId, ')
          ..write('routeId: $routeId, ')
          ..write('finish: $finish, ')
          ..write('start: $start, ')
          ..write('ascentTypeId: $ascentTypeId, ')
          ..write('suspensionCount: $suspensionCount, ')
          ..write('fallCount: $fallCount, ')
          ..write('downClimbing: $downClimbing, ')
          ..write('fail: $fail')
          ..write(')'))
        .toString();
  }
}

class $DriftHallAttemptsTableTable extends DriftHallAttemptsTable
    with TableInfo<$DriftHallAttemptsTableTable, DriftHallAttempt> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DriftHallAttemptsTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _treaningIdMeta = const VerificationMeta('treaningId');
  @override
  late final GeneratedColumn<String> treaningId = GeneratedColumn<String>(
      'treaning_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: 'REFERENCES "drift_hall_treanings_table" ("id")');
  final VerificationMeta _categoryIdMeta = const VerificationMeta('categoryId');
  @override
  late final GeneratedColumn<String> categoryId = GeneratedColumn<String>(
      'category_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _styleIdMeta = const VerificationMeta('styleId');
  @override
  late final GeneratedColumn<String> styleId = GeneratedColumn<String>(
      'style_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _routeIdMeta = const VerificationMeta('routeId');
  @override
  late final GeneratedColumn<String> routeId = GeneratedColumn<String>(
      'route_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _finishMeta = const VerificationMeta('finish');
  @override
  late final GeneratedColumn<DateTime> finish = GeneratedColumn<DateTime>(
      'finish', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  final VerificationMeta _startMeta = const VerificationMeta('start');
  @override
  late final GeneratedColumn<DateTime> start = GeneratedColumn<DateTime>(
      'start', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  final VerificationMeta _ascentTypeIdMeta =
      const VerificationMeta('ascentTypeId');
  @override
  late final GeneratedColumn<int> ascentTypeId = GeneratedColumn<int>(
      'ascent_type_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  final VerificationMeta _suspensionCountMeta =
      const VerificationMeta('suspensionCount');
  @override
  late final GeneratedColumn<int> suspensionCount = GeneratedColumn<int>(
      'suspension_count', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _fallCountMeta = const VerificationMeta('fallCount');
  @override
  late final GeneratedColumn<int> fallCount = GeneratedColumn<int>(
      'fall_count', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _downClimbingMeta =
      const VerificationMeta('downClimbing');
  @override
  late final GeneratedColumn<bool> downClimbing = GeneratedColumn<bool>(
      'down_climbing', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK ("down_climbing" IN (0, 1))');
  final VerificationMeta _failMeta = const VerificationMeta('fail');
  @override
  late final GeneratedColumn<bool> fail = GeneratedColumn<bool>(
      'fail', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK ("fail" IN (0, 1))');
  @override
  List<GeneratedColumn> get $columns => [
        id,
        treaningId,
        categoryId,
        styleId,
        routeId,
        finish,
        start,
        ascentTypeId,
        suspensionCount,
        fallCount,
        downClimbing,
        fail
      ];
  @override
  String get aliasedName => _alias ?? 'drift_hall_attempts_table';
  @override
  String get actualTableName => 'drift_hall_attempts_table';
  @override
  VerificationContext validateIntegrity(Insertable<DriftHallAttempt> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('treaning_id')) {
      context.handle(
          _treaningIdMeta,
          treaningId.isAcceptableOrUnknown(
              data['treaning_id']!, _treaningIdMeta));
    } else if (isInserting) {
      context.missing(_treaningIdMeta);
    }
    if (data.containsKey('category_id')) {
      context.handle(
          _categoryIdMeta,
          categoryId.isAcceptableOrUnknown(
              data['category_id']!, _categoryIdMeta));
    } else if (isInserting) {
      context.missing(_categoryIdMeta);
    }
    if (data.containsKey('style_id')) {
      context.handle(_styleIdMeta,
          styleId.isAcceptableOrUnknown(data['style_id']!, _styleIdMeta));
    } else if (isInserting) {
      context.missing(_styleIdMeta);
    }
    if (data.containsKey('route_id')) {
      context.handle(_routeIdMeta,
          routeId.isAcceptableOrUnknown(data['route_id']!, _routeIdMeta));
    }
    if (data.containsKey('finish')) {
      context.handle(_finishMeta,
          finish.isAcceptableOrUnknown(data['finish']!, _finishMeta));
    }
    if (data.containsKey('start')) {
      context.handle(
          _startMeta, start.isAcceptableOrUnknown(data['start']!, _startMeta));
    }
    if (data.containsKey('ascent_type_id')) {
      context.handle(
          _ascentTypeIdMeta,
          ascentTypeId.isAcceptableOrUnknown(
              data['ascent_type_id']!, _ascentTypeIdMeta));
    }
    if (data.containsKey('suspension_count')) {
      context.handle(
          _suspensionCountMeta,
          suspensionCount.isAcceptableOrUnknown(
              data['suspension_count']!, _suspensionCountMeta));
    } else if (isInserting) {
      context.missing(_suspensionCountMeta);
    }
    if (data.containsKey('fall_count')) {
      context.handle(_fallCountMeta,
          fallCount.isAcceptableOrUnknown(data['fall_count']!, _fallCountMeta));
    } else if (isInserting) {
      context.missing(_fallCountMeta);
    }
    if (data.containsKey('down_climbing')) {
      context.handle(
          _downClimbingMeta,
          downClimbing.isAcceptableOrUnknown(
              data['down_climbing']!, _downClimbingMeta));
    } else if (isInserting) {
      context.missing(_downClimbingMeta);
    }
    if (data.containsKey('fail')) {
      context.handle(
          _failMeta, fail.isAcceptableOrUnknown(data['fail']!, _failMeta));
    } else if (isInserting) {
      context.missing(_failMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DriftHallAttempt map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DriftHallAttempt(
      id: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      treaningId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}treaning_id'])!,
      categoryId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}category_id'])!,
      styleId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}style_id'])!,
      routeId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}route_id']),
      finish: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}finish']),
      start: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}start']),
      ascentTypeId: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}ascent_type_id']),
      suspensionCount: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}suspension_count'])!,
      fallCount: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}fall_count'])!,
      downClimbing: attachedDatabase.options.types
          .read(DriftSqlType.bool, data['${effectivePrefix}down_climbing'])!,
      fail: attachedDatabase.options.types
          .read(DriftSqlType.bool, data['${effectivePrefix}fail'])!,
    );
  }

  @override
  $DriftHallAttemptsTableTable createAlias(String alias) {
    return $DriftHallAttemptsTableTable(attachedDatabase, alias);
  }
}

class DriftCardioTreanings extends DataClass
    implements Insertable<DriftCardioTreanings> {
  final String id;
  final String exercise;
  final DateTime date;
  final DateTime? finish;
  final DateTime? start;
  final int duration;
  final double length;
  const DriftCardioTreanings(
      {required this.id,
      required this.exercise,
      required this.date,
      this.finish,
      this.start,
      required this.duration,
      required this.length});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['exercise'] = Variable<String>(exercise);
    map['date'] = Variable<DateTime>(date);
    if (!nullToAbsent || finish != null) {
      map['finish'] = Variable<DateTime>(finish);
    }
    if (!nullToAbsent || start != null) {
      map['start'] = Variable<DateTime>(start);
    }
    map['duration'] = Variable<int>(duration);
    map['length'] = Variable<double>(length);
    return map;
  }

  DriftCardioTreaningsTableCompanion toCompanion(bool nullToAbsent) {
    return DriftCardioTreaningsTableCompanion(
      id: Value(id),
      exercise: Value(exercise),
      date: Value(date),
      finish:
          finish == null && nullToAbsent ? const Value.absent() : Value(finish),
      start:
          start == null && nullToAbsent ? const Value.absent() : Value(start),
      duration: Value(duration),
      length: Value(length),
    );
  }

  factory DriftCardioTreanings.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DriftCardioTreanings(
      id: serializer.fromJson<String>(json['id']),
      exercise: serializer.fromJson<String>(json['exercise']),
      date: serializer.fromJson<DateTime>(json['date']),
      finish: serializer.fromJson<DateTime?>(json['finish']),
      start: serializer.fromJson<DateTime?>(json['start']),
      duration: serializer.fromJson<int>(json['duration']),
      length: serializer.fromJson<double>(json['length']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'exercise': serializer.toJson<String>(exercise),
      'date': serializer.toJson<DateTime>(date),
      'finish': serializer.toJson<DateTime?>(finish),
      'start': serializer.toJson<DateTime?>(start),
      'duration': serializer.toJson<int>(duration),
      'length': serializer.toJson<double>(length),
    };
  }

  DriftCardioTreanings copyWith(
          {String? id,
          String? exercise,
          DateTime? date,
          Value<DateTime?> finish = const Value.absent(),
          Value<DateTime?> start = const Value.absent(),
          int? duration,
          double? length}) =>
      DriftCardioTreanings(
        id: id ?? this.id,
        exercise: exercise ?? this.exercise,
        date: date ?? this.date,
        finish: finish.present ? finish.value : this.finish,
        start: start.present ? start.value : this.start,
        duration: duration ?? this.duration,
        length: length ?? this.length,
      );
  @override
  String toString() {
    return (StringBuffer('DriftCardioTreanings(')
          ..write('id: $id, ')
          ..write('exercise: $exercise, ')
          ..write('date: $date, ')
          ..write('finish: $finish, ')
          ..write('start: $start, ')
          ..write('duration: $duration, ')
          ..write('length: $length')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, exercise, date, finish, start, duration, length);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DriftCardioTreanings &&
          other.id == this.id &&
          other.exercise == this.exercise &&
          other.date == this.date &&
          other.finish == this.finish &&
          other.start == this.start &&
          other.duration == this.duration &&
          other.length == this.length);
}

class DriftCardioTreaningsTableCompanion
    extends UpdateCompanion<DriftCardioTreanings> {
  final Value<String> id;
  final Value<String> exercise;
  final Value<DateTime> date;
  final Value<DateTime?> finish;
  final Value<DateTime?> start;
  final Value<int> duration;
  final Value<double> length;
  const DriftCardioTreaningsTableCompanion({
    this.id = const Value.absent(),
    this.exercise = const Value.absent(),
    this.date = const Value.absent(),
    this.finish = const Value.absent(),
    this.start = const Value.absent(),
    this.duration = const Value.absent(),
    this.length = const Value.absent(),
  });
  DriftCardioTreaningsTableCompanion.insert({
    required String id,
    required String exercise,
    required DateTime date,
    this.finish = const Value.absent(),
    this.start = const Value.absent(),
    required int duration,
    required double length,
  })  : id = Value(id),
        exercise = Value(exercise),
        date = Value(date),
        duration = Value(duration),
        length = Value(length);
  static Insertable<DriftCardioTreanings> custom({
    Expression<String>? id,
    Expression<String>? exercise,
    Expression<DateTime>? date,
    Expression<DateTime>? finish,
    Expression<DateTime>? start,
    Expression<int>? duration,
    Expression<double>? length,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (exercise != null) 'exercise': exercise,
      if (date != null) 'date': date,
      if (finish != null) 'finish': finish,
      if (start != null) 'start': start,
      if (duration != null) 'duration': duration,
      if (length != null) 'length': length,
    });
  }

  DriftCardioTreaningsTableCompanion copyWith(
      {Value<String>? id,
      Value<String>? exercise,
      Value<DateTime>? date,
      Value<DateTime?>? finish,
      Value<DateTime?>? start,
      Value<int>? duration,
      Value<double>? length}) {
    return DriftCardioTreaningsTableCompanion(
      id: id ?? this.id,
      exercise: exercise ?? this.exercise,
      date: date ?? this.date,
      finish: finish ?? this.finish,
      start: start ?? this.start,
      duration: duration ?? this.duration,
      length: length ?? this.length,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (exercise.present) {
      map['exercise'] = Variable<String>(exercise.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (finish.present) {
      map['finish'] = Variable<DateTime>(finish.value);
    }
    if (start.present) {
      map['start'] = Variable<DateTime>(start.value);
    }
    if (duration.present) {
      map['duration'] = Variable<int>(duration.value);
    }
    if (length.present) {
      map['length'] = Variable<double>(length.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DriftCardioTreaningsTableCompanion(')
          ..write('id: $id, ')
          ..write('exercise: $exercise, ')
          ..write('date: $date, ')
          ..write('finish: $finish, ')
          ..write('start: $start, ')
          ..write('duration: $duration, ')
          ..write('length: $length')
          ..write(')'))
        .toString();
  }
}

class $DriftCardioTreaningsTableTable extends DriftCardioTreaningsTable
    with TableInfo<$DriftCardioTreaningsTableTable, DriftCardioTreanings> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DriftCardioTreaningsTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: 'UNIQUE');
  final VerificationMeta _exerciseMeta = const VerificationMeta('exercise');
  @override
  late final GeneratedColumn<String> exercise = GeneratedColumn<String>(
      'exercise', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
      'date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _finishMeta = const VerificationMeta('finish');
  @override
  late final GeneratedColumn<DateTime> finish = GeneratedColumn<DateTime>(
      'finish', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  final VerificationMeta _startMeta = const VerificationMeta('start');
  @override
  late final GeneratedColumn<DateTime> start = GeneratedColumn<DateTime>(
      'start', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  final VerificationMeta _durationMeta = const VerificationMeta('duration');
  @override
  late final GeneratedColumn<int> duration = GeneratedColumn<int>(
      'duration', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _lengthMeta = const VerificationMeta('length');
  @override
  late final GeneratedColumn<double> length = GeneratedColumn<double>(
      'length', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, exercise, date, finish, start, duration, length];
  @override
  String get aliasedName => _alias ?? 'drift_cardio_treanings_table';
  @override
  String get actualTableName => 'drift_cardio_treanings_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<DriftCardioTreanings> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('exercise')) {
      context.handle(_exerciseMeta,
          exercise.isAcceptableOrUnknown(data['exercise']!, _exerciseMeta));
    } else if (isInserting) {
      context.missing(_exerciseMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('finish')) {
      context.handle(_finishMeta,
          finish.isAcceptableOrUnknown(data['finish']!, _finishMeta));
    }
    if (data.containsKey('start')) {
      context.handle(
          _startMeta, start.isAcceptableOrUnknown(data['start']!, _startMeta));
    }
    if (data.containsKey('duration')) {
      context.handle(_durationMeta,
          duration.isAcceptableOrUnknown(data['duration']!, _durationMeta));
    } else if (isInserting) {
      context.missing(_durationMeta);
    }
    if (data.containsKey('length')) {
      context.handle(_lengthMeta,
          length.isAcceptableOrUnknown(data['length']!, _lengthMeta));
    } else if (isInserting) {
      context.missing(_lengthMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DriftCardioTreanings map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DriftCardioTreanings(
      id: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      exercise: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}exercise'])!,
      date: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date'])!,
      finish: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}finish']),
      start: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}start']),
      duration: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}duration'])!,
      length: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}length'])!,
    );
  }

  @override
  $DriftCardioTreaningsTableTable createAlias(String alias) {
    return $DriftCardioTreaningsTableTable(attachedDatabase, alias);
  }
}

class DriftStrengthTreaning extends DataClass
    implements Insertable<DriftStrengthTreaning> {
  final String id;
  final DateTime date;
  final DateTime? finish;
  final DateTime? start;
  const DriftStrengthTreaning(
      {required this.id, required this.date, this.finish, this.start});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['date'] = Variable<DateTime>(date);
    if (!nullToAbsent || finish != null) {
      map['finish'] = Variable<DateTime>(finish);
    }
    if (!nullToAbsent || start != null) {
      map['start'] = Variable<DateTime>(start);
    }
    return map;
  }

  DriftStrengthTreaningsTableCompanion toCompanion(bool nullToAbsent) {
    return DriftStrengthTreaningsTableCompanion(
      id: Value(id),
      date: Value(date),
      finish:
          finish == null && nullToAbsent ? const Value.absent() : Value(finish),
      start:
          start == null && nullToAbsent ? const Value.absent() : Value(start),
    );
  }

  factory DriftStrengthTreaning.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DriftStrengthTreaning(
      id: serializer.fromJson<String>(json['id']),
      date: serializer.fromJson<DateTime>(json['date']),
      finish: serializer.fromJson<DateTime?>(json['finish']),
      start: serializer.fromJson<DateTime?>(json['start']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'date': serializer.toJson<DateTime>(date),
      'finish': serializer.toJson<DateTime?>(finish),
      'start': serializer.toJson<DateTime?>(start),
    };
  }

  DriftStrengthTreaning copyWith(
          {String? id,
          DateTime? date,
          Value<DateTime?> finish = const Value.absent(),
          Value<DateTime?> start = const Value.absent()}) =>
      DriftStrengthTreaning(
        id: id ?? this.id,
        date: date ?? this.date,
        finish: finish.present ? finish.value : this.finish,
        start: start.present ? start.value : this.start,
      );
  @override
  String toString() {
    return (StringBuffer('DriftStrengthTreaning(')
          ..write('id: $id, ')
          ..write('date: $date, ')
          ..write('finish: $finish, ')
          ..write('start: $start')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, date, finish, start);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DriftStrengthTreaning &&
          other.id == this.id &&
          other.date == this.date &&
          other.finish == this.finish &&
          other.start == this.start);
}

class DriftStrengthTreaningsTableCompanion
    extends UpdateCompanion<DriftStrengthTreaning> {
  final Value<String> id;
  final Value<DateTime> date;
  final Value<DateTime?> finish;
  final Value<DateTime?> start;
  const DriftStrengthTreaningsTableCompanion({
    this.id = const Value.absent(),
    this.date = const Value.absent(),
    this.finish = const Value.absent(),
    this.start = const Value.absent(),
  });
  DriftStrengthTreaningsTableCompanion.insert({
    required String id,
    required DateTime date,
    this.finish = const Value.absent(),
    this.start = const Value.absent(),
  })  : id = Value(id),
        date = Value(date);
  static Insertable<DriftStrengthTreaning> custom({
    Expression<String>? id,
    Expression<DateTime>? date,
    Expression<DateTime>? finish,
    Expression<DateTime>? start,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (date != null) 'date': date,
      if (finish != null) 'finish': finish,
      if (start != null) 'start': start,
    });
  }

  DriftStrengthTreaningsTableCompanion copyWith(
      {Value<String>? id,
      Value<DateTime>? date,
      Value<DateTime?>? finish,
      Value<DateTime?>? start}) {
    return DriftStrengthTreaningsTableCompanion(
      id: id ?? this.id,
      date: date ?? this.date,
      finish: finish ?? this.finish,
      start: start ?? this.start,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (finish.present) {
      map['finish'] = Variable<DateTime>(finish.value);
    }
    if (start.present) {
      map['start'] = Variable<DateTime>(start.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DriftStrengthTreaningsTableCompanion(')
          ..write('id: $id, ')
          ..write('date: $date, ')
          ..write('finish: $finish, ')
          ..write('start: $start')
          ..write(')'))
        .toString();
  }
}

class $DriftStrengthTreaningsTableTable extends DriftStrengthTreaningsTable
    with TableInfo<$DriftStrengthTreaningsTableTable, DriftStrengthTreaning> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DriftStrengthTreaningsTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: 'UNIQUE');
  final VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
      'date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _finishMeta = const VerificationMeta('finish');
  @override
  late final GeneratedColumn<DateTime> finish = GeneratedColumn<DateTime>(
      'finish', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  final VerificationMeta _startMeta = const VerificationMeta('start');
  @override
  late final GeneratedColumn<DateTime> start = GeneratedColumn<DateTime>(
      'start', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, date, finish, start];
  @override
  String get aliasedName => _alias ?? 'drift_strength_treanings_table';
  @override
  String get actualTableName => 'drift_strength_treanings_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<DriftStrengthTreaning> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('finish')) {
      context.handle(_finishMeta,
          finish.isAcceptableOrUnknown(data['finish']!, _finishMeta));
    }
    if (data.containsKey('start')) {
      context.handle(
          _startMeta, start.isAcceptableOrUnknown(data['start']!, _startMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DriftStrengthTreaning map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DriftStrengthTreaning(
      id: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      date: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date'])!,
      finish: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}finish']),
      start: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}start']),
    );
  }

  @override
  $DriftStrengthTreaningsTableTable createAlias(String alias) {
    return $DriftStrengthTreaningsTableTable(attachedDatabase, alias);
  }
}

class DriftStrengthTreaningLine extends DataClass
    implements Insertable<DriftStrengthTreaningLine> {
  final int? id;
  final String repetitions;
  final String treaningId;
  final String exercise;
  const DriftStrengthTreaningLine(
      {this.id,
      required this.repetitions,
      required this.treaningId,
      required this.exercise});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    map['repetitions'] = Variable<String>(repetitions);
    map['treaning_id'] = Variable<String>(treaningId);
    map['exercise'] = Variable<String>(exercise);
    return map;
  }

  DriftStrengthTreaningLinesTableCompanion toCompanion(bool nullToAbsent) {
    return DriftStrengthTreaningLinesTableCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      repetitions: Value(repetitions),
      treaningId: Value(treaningId),
      exercise: Value(exercise),
    );
  }

  factory DriftStrengthTreaningLine.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DriftStrengthTreaningLine(
      id: serializer.fromJson<int?>(json['id']),
      repetitions: serializer.fromJson<String>(json['repetitions']),
      treaningId: serializer.fromJson<String>(json['treaningId']),
      exercise: serializer.fromJson<String>(json['exercise']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'repetitions': serializer.toJson<String>(repetitions),
      'treaningId': serializer.toJson<String>(treaningId),
      'exercise': serializer.toJson<String>(exercise),
    };
  }

  DriftStrengthTreaningLine copyWith(
          {Value<int?> id = const Value.absent(),
          String? repetitions,
          String? treaningId,
          String? exercise}) =>
      DriftStrengthTreaningLine(
        id: id.present ? id.value : this.id,
        repetitions: repetitions ?? this.repetitions,
        treaningId: treaningId ?? this.treaningId,
        exercise: exercise ?? this.exercise,
      );
  @override
  String toString() {
    return (StringBuffer('DriftStrengthTreaningLine(')
          ..write('id: $id, ')
          ..write('repetitions: $repetitions, ')
          ..write('treaningId: $treaningId, ')
          ..write('exercise: $exercise')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, repetitions, treaningId, exercise);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DriftStrengthTreaningLine &&
          other.id == this.id &&
          other.repetitions == this.repetitions &&
          other.treaningId == this.treaningId &&
          other.exercise == this.exercise);
}

class DriftStrengthTreaningLinesTableCompanion
    extends UpdateCompanion<DriftStrengthTreaningLine> {
  final Value<int?> id;
  final Value<String> repetitions;
  final Value<String> treaningId;
  final Value<String> exercise;
  const DriftStrengthTreaningLinesTableCompanion({
    this.id = const Value.absent(),
    this.repetitions = const Value.absent(),
    this.treaningId = const Value.absent(),
    this.exercise = const Value.absent(),
  });
  DriftStrengthTreaningLinesTableCompanion.insert({
    this.id = const Value.absent(),
    required String repetitions,
    required String treaningId,
    required String exercise,
  })  : repetitions = Value(repetitions),
        treaningId = Value(treaningId),
        exercise = Value(exercise);
  static Insertable<DriftStrengthTreaningLine> custom({
    Expression<int>? id,
    Expression<String>? repetitions,
    Expression<String>? treaningId,
    Expression<String>? exercise,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (repetitions != null) 'repetitions': repetitions,
      if (treaningId != null) 'treaning_id': treaningId,
      if (exercise != null) 'exercise': exercise,
    });
  }

  DriftStrengthTreaningLinesTableCompanion copyWith(
      {Value<int?>? id,
      Value<String>? repetitions,
      Value<String>? treaningId,
      Value<String>? exercise}) {
    return DriftStrengthTreaningLinesTableCompanion(
      id: id ?? this.id,
      repetitions: repetitions ?? this.repetitions,
      treaningId: treaningId ?? this.treaningId,
      exercise: exercise ?? this.exercise,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (repetitions.present) {
      map['repetitions'] = Variable<String>(repetitions.value);
    }
    if (treaningId.present) {
      map['treaning_id'] = Variable<String>(treaningId.value);
    }
    if (exercise.present) {
      map['exercise'] = Variable<String>(exercise.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DriftStrengthTreaningLinesTableCompanion(')
          ..write('id: $id, ')
          ..write('repetitions: $repetitions, ')
          ..write('treaningId: $treaningId, ')
          ..write('exercise: $exercise')
          ..write(')'))
        .toString();
  }
}

class $DriftStrengthTreaningLinesTableTable
    extends DriftStrengthTreaningLinesTable
    with
        TableInfo<$DriftStrengthTreaningLinesTableTable,
            DriftStrengthTreaningLine> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DriftStrengthTreaningLinesTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _repetitionsMeta =
      const VerificationMeta('repetitions');
  @override
  late final GeneratedColumn<String> repetitions = GeneratedColumn<String>(
      'repetitions', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _treaningIdMeta = const VerificationMeta('treaningId');
  @override
  late final GeneratedColumn<String> treaningId = GeneratedColumn<String>(
      'treaning_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: 'REFERENCES "drift_strength_treanings_table" ("id")');
  final VerificationMeta _exerciseMeta = const VerificationMeta('exercise');
  @override
  late final GeneratedColumn<String> exercise = GeneratedColumn<String>(
      'exercise', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: 'REFERENCES "drift_strength_exercises_table" ("id")');
  @override
  List<GeneratedColumn> get $columns => [id, repetitions, treaningId, exercise];
  @override
  String get aliasedName => _alias ?? 'drift_strength_treaning_lines_table';
  @override
  String get actualTableName => 'drift_strength_treaning_lines_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<DriftStrengthTreaningLine> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('repetitions')) {
      context.handle(
          _repetitionsMeta,
          repetitions.isAcceptableOrUnknown(
              data['repetitions']!, _repetitionsMeta));
    } else if (isInserting) {
      context.missing(_repetitionsMeta);
    }
    if (data.containsKey('treaning_id')) {
      context.handle(
          _treaningIdMeta,
          treaningId.isAcceptableOrUnknown(
              data['treaning_id']!, _treaningIdMeta));
    } else if (isInserting) {
      context.missing(_treaningIdMeta);
    }
    if (data.containsKey('exercise')) {
      context.handle(_exerciseMeta,
          exercise.isAcceptableOrUnknown(data['exercise']!, _exerciseMeta));
    } else if (isInserting) {
      context.missing(_exerciseMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DriftStrengthTreaningLine map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DriftStrengthTreaningLine(
      id: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}id']),
      repetitions: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}repetitions'])!,
      treaningId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}treaning_id'])!,
      exercise: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}exercise'])!,
    );
  }

  @override
  $DriftStrengthTreaningLinesTableTable createAlias(String alias) {
    return $DriftStrengthTreaningLinesTableTable(attachedDatabase, alias);
  }
}

class DriftIceTreanings extends DataClass
    implements Insertable<DriftIceTreanings> {
  final String id;
  final String districtId;
  final DateTime date;
  final DateTime? finish;
  final DateTime? start;
  const DriftIceTreanings(
      {required this.id,
      required this.districtId,
      required this.date,
      this.finish,
      this.start});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['district_id'] = Variable<String>(districtId);
    map['date'] = Variable<DateTime>(date);
    if (!nullToAbsent || finish != null) {
      map['finish'] = Variable<DateTime>(finish);
    }
    if (!nullToAbsent || start != null) {
      map['start'] = Variable<DateTime>(start);
    }
    return map;
  }

  DriftIceTreaningsTableCompanion toCompanion(bool nullToAbsent) {
    return DriftIceTreaningsTableCompanion(
      id: Value(id),
      districtId: Value(districtId),
      date: Value(date),
      finish:
          finish == null && nullToAbsent ? const Value.absent() : Value(finish),
      start:
          start == null && nullToAbsent ? const Value.absent() : Value(start),
    );
  }

  factory DriftIceTreanings.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DriftIceTreanings(
      id: serializer.fromJson<String>(json['id']),
      districtId: serializer.fromJson<String>(json['districtId']),
      date: serializer.fromJson<DateTime>(json['date']),
      finish: serializer.fromJson<DateTime?>(json['finish']),
      start: serializer.fromJson<DateTime?>(json['start']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'districtId': serializer.toJson<String>(districtId),
      'date': serializer.toJson<DateTime>(date),
      'finish': serializer.toJson<DateTime?>(finish),
      'start': serializer.toJson<DateTime?>(start),
    };
  }

  DriftIceTreanings copyWith(
          {String? id,
          String? districtId,
          DateTime? date,
          Value<DateTime?> finish = const Value.absent(),
          Value<DateTime?> start = const Value.absent()}) =>
      DriftIceTreanings(
        id: id ?? this.id,
        districtId: districtId ?? this.districtId,
        date: date ?? this.date,
        finish: finish.present ? finish.value : this.finish,
        start: start.present ? start.value : this.start,
      );
  @override
  String toString() {
    return (StringBuffer('DriftIceTreanings(')
          ..write('id: $id, ')
          ..write('districtId: $districtId, ')
          ..write('date: $date, ')
          ..write('finish: $finish, ')
          ..write('start: $start')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, districtId, date, finish, start);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DriftIceTreanings &&
          other.id == this.id &&
          other.districtId == this.districtId &&
          other.date == this.date &&
          other.finish == this.finish &&
          other.start == this.start);
}

class DriftIceTreaningsTableCompanion
    extends UpdateCompanion<DriftIceTreanings> {
  final Value<String> id;
  final Value<String> districtId;
  final Value<DateTime> date;
  final Value<DateTime?> finish;
  final Value<DateTime?> start;
  const DriftIceTreaningsTableCompanion({
    this.id = const Value.absent(),
    this.districtId = const Value.absent(),
    this.date = const Value.absent(),
    this.finish = const Value.absent(),
    this.start = const Value.absent(),
  });
  DriftIceTreaningsTableCompanion.insert({
    required String id,
    required String districtId,
    required DateTime date,
    this.finish = const Value.absent(),
    this.start = const Value.absent(),
  })  : id = Value(id),
        districtId = Value(districtId),
        date = Value(date);
  static Insertable<DriftIceTreanings> custom({
    Expression<String>? id,
    Expression<String>? districtId,
    Expression<DateTime>? date,
    Expression<DateTime>? finish,
    Expression<DateTime>? start,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (districtId != null) 'district_id': districtId,
      if (date != null) 'date': date,
      if (finish != null) 'finish': finish,
      if (start != null) 'start': start,
    });
  }

  DriftIceTreaningsTableCompanion copyWith(
      {Value<String>? id,
      Value<String>? districtId,
      Value<DateTime>? date,
      Value<DateTime?>? finish,
      Value<DateTime?>? start}) {
    return DriftIceTreaningsTableCompanion(
      id: id ?? this.id,
      districtId: districtId ?? this.districtId,
      date: date ?? this.date,
      finish: finish ?? this.finish,
      start: start ?? this.start,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (districtId.present) {
      map['district_id'] = Variable<String>(districtId.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (finish.present) {
      map['finish'] = Variable<DateTime>(finish.value);
    }
    if (start.present) {
      map['start'] = Variable<DateTime>(start.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DriftIceTreaningsTableCompanion(')
          ..write('id: $id, ')
          ..write('districtId: $districtId, ')
          ..write('date: $date, ')
          ..write('finish: $finish, ')
          ..write('start: $start')
          ..write(')'))
        .toString();
  }
}

class $DriftIceTreaningsTableTable extends DriftIceTreaningsTable
    with TableInfo<$DriftIceTreaningsTableTable, DriftIceTreanings> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DriftIceTreaningsTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: 'UNIQUE');
  final VerificationMeta _districtIdMeta = const VerificationMeta('districtId');
  @override
  late final GeneratedColumn<String> districtId = GeneratedColumn<String>(
      'district_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
      'date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _finishMeta = const VerificationMeta('finish');
  @override
  late final GeneratedColumn<DateTime> finish = GeneratedColumn<DateTime>(
      'finish', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  final VerificationMeta _startMeta = const VerificationMeta('start');
  @override
  late final GeneratedColumn<DateTime> start = GeneratedColumn<DateTime>(
      'start', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, districtId, date, finish, start];
  @override
  String get aliasedName => _alias ?? 'drift_ice_treanings_table';
  @override
  String get actualTableName => 'drift_ice_treanings_table';
  @override
  VerificationContext validateIntegrity(Insertable<DriftIceTreanings> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('district_id')) {
      context.handle(
          _districtIdMeta,
          districtId.isAcceptableOrUnknown(
              data['district_id']!, _districtIdMeta));
    } else if (isInserting) {
      context.missing(_districtIdMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('finish')) {
      context.handle(_finishMeta,
          finish.isAcceptableOrUnknown(data['finish']!, _finishMeta));
    }
    if (data.containsKey('start')) {
      context.handle(
          _startMeta, start.isAcceptableOrUnknown(data['start']!, _startMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DriftIceTreanings map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DriftIceTreanings(
      id: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      districtId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}district_id'])!,
      date: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date'])!,
      finish: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}finish']),
      start: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}start']),
    );
  }

  @override
  $DriftIceTreaningsTableTable createAlias(String alias) {
    return $DriftIceTreaningsTableTable(attachedDatabase, alias);
  }
}

class DriftIceAttempt extends DataClass implements Insertable<DriftIceAttempt> {
  final String id;
  final String sector;
  final String treaningId;
  final String category;
  final String style;
  final DateTime? finishTime;
  final DateTime? startTime;
  final int wayLength;
  final int suspensionCount;
  final int fallCount;
  final bool downClimbing;
  final bool fail;
  final bool installedIceScrews;
  final int iceScrewsCount;
  final int toolsCount;
  const DriftIceAttempt(
      {required this.id,
      required this.sector,
      required this.treaningId,
      required this.category,
      required this.style,
      this.finishTime,
      this.startTime,
      required this.wayLength,
      required this.suspensionCount,
      required this.fallCount,
      required this.downClimbing,
      required this.fail,
      required this.installedIceScrews,
      required this.iceScrewsCount,
      required this.toolsCount});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['sector'] = Variable<String>(sector);
    map['treaning_id'] = Variable<String>(treaningId);
    map['category'] = Variable<String>(category);
    map['style'] = Variable<String>(style);
    if (!nullToAbsent || finishTime != null) {
      map['finish_time'] = Variable<DateTime>(finishTime);
    }
    if (!nullToAbsent || startTime != null) {
      map['start_time'] = Variable<DateTime>(startTime);
    }
    map['way_length'] = Variable<int>(wayLength);
    map['suspension_count'] = Variable<int>(suspensionCount);
    map['fall_count'] = Variable<int>(fallCount);
    map['down_climbing'] = Variable<bool>(downClimbing);
    map['fail'] = Variable<bool>(fail);
    map['installed_ice_screws'] = Variable<bool>(installedIceScrews);
    map['ice_screws_count'] = Variable<int>(iceScrewsCount);
    map['tools_count'] = Variable<int>(toolsCount);
    return map;
  }

  DriftIceAttemptsTableCompanion toCompanion(bool nullToAbsent) {
    return DriftIceAttemptsTableCompanion(
      id: Value(id),
      sector: Value(sector),
      treaningId: Value(treaningId),
      category: Value(category),
      style: Value(style),
      finishTime: finishTime == null && nullToAbsent
          ? const Value.absent()
          : Value(finishTime),
      startTime: startTime == null && nullToAbsent
          ? const Value.absent()
          : Value(startTime),
      wayLength: Value(wayLength),
      suspensionCount: Value(suspensionCount),
      fallCount: Value(fallCount),
      downClimbing: Value(downClimbing),
      fail: Value(fail),
      installedIceScrews: Value(installedIceScrews),
      iceScrewsCount: Value(iceScrewsCount),
      toolsCount: Value(toolsCount),
    );
  }

  factory DriftIceAttempt.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DriftIceAttempt(
      id: serializer.fromJson<String>(json['id']),
      sector: serializer.fromJson<String>(json['sector']),
      treaningId: serializer.fromJson<String>(json['treaningId']),
      category: serializer.fromJson<String>(json['category']),
      style: serializer.fromJson<String>(json['style']),
      finishTime: serializer.fromJson<DateTime?>(json['finishTime']),
      startTime: serializer.fromJson<DateTime?>(json['startTime']),
      wayLength: serializer.fromJson<int>(json['wayLength']),
      suspensionCount: serializer.fromJson<int>(json['suspensionCount']),
      fallCount: serializer.fromJson<int>(json['fallCount']),
      downClimbing: serializer.fromJson<bool>(json['downClimbing']),
      fail: serializer.fromJson<bool>(json['fail']),
      installedIceScrews: serializer.fromJson<bool>(json['installedIceScrews']),
      iceScrewsCount: serializer.fromJson<int>(json['iceScrewsCount']),
      toolsCount: serializer.fromJson<int>(json['toolsCount']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'sector': serializer.toJson<String>(sector),
      'treaningId': serializer.toJson<String>(treaningId),
      'category': serializer.toJson<String>(category),
      'style': serializer.toJson<String>(style),
      'finishTime': serializer.toJson<DateTime?>(finishTime),
      'startTime': serializer.toJson<DateTime?>(startTime),
      'wayLength': serializer.toJson<int>(wayLength),
      'suspensionCount': serializer.toJson<int>(suspensionCount),
      'fallCount': serializer.toJson<int>(fallCount),
      'downClimbing': serializer.toJson<bool>(downClimbing),
      'fail': serializer.toJson<bool>(fail),
      'installedIceScrews': serializer.toJson<bool>(installedIceScrews),
      'iceScrewsCount': serializer.toJson<int>(iceScrewsCount),
      'toolsCount': serializer.toJson<int>(toolsCount),
    };
  }

  DriftIceAttempt copyWith(
          {String? id,
          String? sector,
          String? treaningId,
          String? category,
          String? style,
          Value<DateTime?> finishTime = const Value.absent(),
          Value<DateTime?> startTime = const Value.absent(),
          int? wayLength,
          int? suspensionCount,
          int? fallCount,
          bool? downClimbing,
          bool? fail,
          bool? installedIceScrews,
          int? iceScrewsCount,
          int? toolsCount}) =>
      DriftIceAttempt(
        id: id ?? this.id,
        sector: sector ?? this.sector,
        treaningId: treaningId ?? this.treaningId,
        category: category ?? this.category,
        style: style ?? this.style,
        finishTime: finishTime.present ? finishTime.value : this.finishTime,
        startTime: startTime.present ? startTime.value : this.startTime,
        wayLength: wayLength ?? this.wayLength,
        suspensionCount: suspensionCount ?? this.suspensionCount,
        fallCount: fallCount ?? this.fallCount,
        downClimbing: downClimbing ?? this.downClimbing,
        fail: fail ?? this.fail,
        installedIceScrews: installedIceScrews ?? this.installedIceScrews,
        iceScrewsCount: iceScrewsCount ?? this.iceScrewsCount,
        toolsCount: toolsCount ?? this.toolsCount,
      );
  @override
  String toString() {
    return (StringBuffer('DriftIceAttempt(')
          ..write('id: $id, ')
          ..write('sector: $sector, ')
          ..write('treaningId: $treaningId, ')
          ..write('category: $category, ')
          ..write('style: $style, ')
          ..write('finishTime: $finishTime, ')
          ..write('startTime: $startTime, ')
          ..write('wayLength: $wayLength, ')
          ..write('suspensionCount: $suspensionCount, ')
          ..write('fallCount: $fallCount, ')
          ..write('downClimbing: $downClimbing, ')
          ..write('fail: $fail, ')
          ..write('installedIceScrews: $installedIceScrews, ')
          ..write('iceScrewsCount: $iceScrewsCount, ')
          ..write('toolsCount: $toolsCount')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      sector,
      treaningId,
      category,
      style,
      finishTime,
      startTime,
      wayLength,
      suspensionCount,
      fallCount,
      downClimbing,
      fail,
      installedIceScrews,
      iceScrewsCount,
      toolsCount);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DriftIceAttempt &&
          other.id == this.id &&
          other.sector == this.sector &&
          other.treaningId == this.treaningId &&
          other.category == this.category &&
          other.style == this.style &&
          other.finishTime == this.finishTime &&
          other.startTime == this.startTime &&
          other.wayLength == this.wayLength &&
          other.suspensionCount == this.suspensionCount &&
          other.fallCount == this.fallCount &&
          other.downClimbing == this.downClimbing &&
          other.fail == this.fail &&
          other.installedIceScrews == this.installedIceScrews &&
          other.iceScrewsCount == this.iceScrewsCount &&
          other.toolsCount == this.toolsCount);
}

class DriftIceAttemptsTableCompanion extends UpdateCompanion<DriftIceAttempt> {
  final Value<String> id;
  final Value<String> sector;
  final Value<String> treaningId;
  final Value<String> category;
  final Value<String> style;
  final Value<DateTime?> finishTime;
  final Value<DateTime?> startTime;
  final Value<int> wayLength;
  final Value<int> suspensionCount;
  final Value<int> fallCount;
  final Value<bool> downClimbing;
  final Value<bool> fail;
  final Value<bool> installedIceScrews;
  final Value<int> iceScrewsCount;
  final Value<int> toolsCount;
  const DriftIceAttemptsTableCompanion({
    this.id = const Value.absent(),
    this.sector = const Value.absent(),
    this.treaningId = const Value.absent(),
    this.category = const Value.absent(),
    this.style = const Value.absent(),
    this.finishTime = const Value.absent(),
    this.startTime = const Value.absent(),
    this.wayLength = const Value.absent(),
    this.suspensionCount = const Value.absent(),
    this.fallCount = const Value.absent(),
    this.downClimbing = const Value.absent(),
    this.fail = const Value.absent(),
    this.installedIceScrews = const Value.absent(),
    this.iceScrewsCount = const Value.absent(),
    this.toolsCount = const Value.absent(),
  });
  DriftIceAttemptsTableCompanion.insert({
    required String id,
    required String sector,
    required String treaningId,
    required String category,
    required String style,
    this.finishTime = const Value.absent(),
    this.startTime = const Value.absent(),
    required int wayLength,
    required int suspensionCount,
    required int fallCount,
    required bool downClimbing,
    required bool fail,
    required bool installedIceScrews,
    required int iceScrewsCount,
    required int toolsCount,
  })  : id = Value(id),
        sector = Value(sector),
        treaningId = Value(treaningId),
        category = Value(category),
        style = Value(style),
        wayLength = Value(wayLength),
        suspensionCount = Value(suspensionCount),
        fallCount = Value(fallCount),
        downClimbing = Value(downClimbing),
        fail = Value(fail),
        installedIceScrews = Value(installedIceScrews),
        iceScrewsCount = Value(iceScrewsCount),
        toolsCount = Value(toolsCount);
  static Insertable<DriftIceAttempt> custom({
    Expression<String>? id,
    Expression<String>? sector,
    Expression<String>? treaningId,
    Expression<String>? category,
    Expression<String>? style,
    Expression<DateTime>? finishTime,
    Expression<DateTime>? startTime,
    Expression<int>? wayLength,
    Expression<int>? suspensionCount,
    Expression<int>? fallCount,
    Expression<bool>? downClimbing,
    Expression<bool>? fail,
    Expression<bool>? installedIceScrews,
    Expression<int>? iceScrewsCount,
    Expression<int>? toolsCount,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (sector != null) 'sector': sector,
      if (treaningId != null) 'treaning_id': treaningId,
      if (category != null) 'category': category,
      if (style != null) 'style': style,
      if (finishTime != null) 'finish_time': finishTime,
      if (startTime != null) 'start_time': startTime,
      if (wayLength != null) 'way_length': wayLength,
      if (suspensionCount != null) 'suspension_count': suspensionCount,
      if (fallCount != null) 'fall_count': fallCount,
      if (downClimbing != null) 'down_climbing': downClimbing,
      if (fail != null) 'fail': fail,
      if (installedIceScrews != null)
        'installed_ice_screws': installedIceScrews,
      if (iceScrewsCount != null) 'ice_screws_count': iceScrewsCount,
      if (toolsCount != null) 'tools_count': toolsCount,
    });
  }

  DriftIceAttemptsTableCompanion copyWith(
      {Value<String>? id,
      Value<String>? sector,
      Value<String>? treaningId,
      Value<String>? category,
      Value<String>? style,
      Value<DateTime?>? finishTime,
      Value<DateTime?>? startTime,
      Value<int>? wayLength,
      Value<int>? suspensionCount,
      Value<int>? fallCount,
      Value<bool>? downClimbing,
      Value<bool>? fail,
      Value<bool>? installedIceScrews,
      Value<int>? iceScrewsCount,
      Value<int>? toolsCount}) {
    return DriftIceAttemptsTableCompanion(
      id: id ?? this.id,
      sector: sector ?? this.sector,
      treaningId: treaningId ?? this.treaningId,
      category: category ?? this.category,
      style: style ?? this.style,
      finishTime: finishTime ?? this.finishTime,
      startTime: startTime ?? this.startTime,
      wayLength: wayLength ?? this.wayLength,
      suspensionCount: suspensionCount ?? this.suspensionCount,
      fallCount: fallCount ?? this.fallCount,
      downClimbing: downClimbing ?? this.downClimbing,
      fail: fail ?? this.fail,
      installedIceScrews: installedIceScrews ?? this.installedIceScrews,
      iceScrewsCount: iceScrewsCount ?? this.iceScrewsCount,
      toolsCount: toolsCount ?? this.toolsCount,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (sector.present) {
      map['sector'] = Variable<String>(sector.value);
    }
    if (treaningId.present) {
      map['treaning_id'] = Variable<String>(treaningId.value);
    }
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    if (style.present) {
      map['style'] = Variable<String>(style.value);
    }
    if (finishTime.present) {
      map['finish_time'] = Variable<DateTime>(finishTime.value);
    }
    if (startTime.present) {
      map['start_time'] = Variable<DateTime>(startTime.value);
    }
    if (wayLength.present) {
      map['way_length'] = Variable<int>(wayLength.value);
    }
    if (suspensionCount.present) {
      map['suspension_count'] = Variable<int>(suspensionCount.value);
    }
    if (fallCount.present) {
      map['fall_count'] = Variable<int>(fallCount.value);
    }
    if (downClimbing.present) {
      map['down_climbing'] = Variable<bool>(downClimbing.value);
    }
    if (fail.present) {
      map['fail'] = Variable<bool>(fail.value);
    }
    if (installedIceScrews.present) {
      map['installed_ice_screws'] = Variable<bool>(installedIceScrews.value);
    }
    if (iceScrewsCount.present) {
      map['ice_screws_count'] = Variable<int>(iceScrewsCount.value);
    }
    if (toolsCount.present) {
      map['tools_count'] = Variable<int>(toolsCount.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DriftIceAttemptsTableCompanion(')
          ..write('id: $id, ')
          ..write('sector: $sector, ')
          ..write('treaningId: $treaningId, ')
          ..write('category: $category, ')
          ..write('style: $style, ')
          ..write('finishTime: $finishTime, ')
          ..write('startTime: $startTime, ')
          ..write('wayLength: $wayLength, ')
          ..write('suspensionCount: $suspensionCount, ')
          ..write('fallCount: $fallCount, ')
          ..write('downClimbing: $downClimbing, ')
          ..write('fail: $fail, ')
          ..write('installedIceScrews: $installedIceScrews, ')
          ..write('iceScrewsCount: $iceScrewsCount, ')
          ..write('toolsCount: $toolsCount')
          ..write(')'))
        .toString();
  }
}

class $DriftIceAttemptsTableTable extends DriftIceAttemptsTable
    with TableInfo<$DriftIceAttemptsTableTable, DriftIceAttempt> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DriftIceAttemptsTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: 'UNIQUE');
  final VerificationMeta _sectorMeta = const VerificationMeta('sector');
  @override
  late final GeneratedColumn<String> sector = GeneratedColumn<String>(
      'sector', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _treaningIdMeta = const VerificationMeta('treaningId');
  @override
  late final GeneratedColumn<String> treaningId = GeneratedColumn<String>(
      'treaning_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: 'REFERENCES "drift_ice_treanings_table" ("id")');
  final VerificationMeta _categoryMeta = const VerificationMeta('category');
  @override
  late final GeneratedColumn<String> category = GeneratedColumn<String>(
      'category', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _styleMeta = const VerificationMeta('style');
  @override
  late final GeneratedColumn<String> style = GeneratedColumn<String>(
      'style', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _finishTimeMeta = const VerificationMeta('finishTime');
  @override
  late final GeneratedColumn<DateTime> finishTime = GeneratedColumn<DateTime>(
      'finish_time', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  final VerificationMeta _startTimeMeta = const VerificationMeta('startTime');
  @override
  late final GeneratedColumn<DateTime> startTime = GeneratedColumn<DateTime>(
      'start_time', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  final VerificationMeta _wayLengthMeta = const VerificationMeta('wayLength');
  @override
  late final GeneratedColumn<int> wayLength = GeneratedColumn<int>(
      'way_length', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _suspensionCountMeta =
      const VerificationMeta('suspensionCount');
  @override
  late final GeneratedColumn<int> suspensionCount = GeneratedColumn<int>(
      'suspension_count', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _fallCountMeta = const VerificationMeta('fallCount');
  @override
  late final GeneratedColumn<int> fallCount = GeneratedColumn<int>(
      'fall_count', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _downClimbingMeta =
      const VerificationMeta('downClimbing');
  @override
  late final GeneratedColumn<bool> downClimbing = GeneratedColumn<bool>(
      'down_climbing', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK ("down_climbing" IN (0, 1))');
  final VerificationMeta _failMeta = const VerificationMeta('fail');
  @override
  late final GeneratedColumn<bool> fail = GeneratedColumn<bool>(
      'fail', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK ("fail" IN (0, 1))');
  final VerificationMeta _installedIceScrewsMeta =
      const VerificationMeta('installedIceScrews');
  @override
  late final GeneratedColumn<bool> installedIceScrews = GeneratedColumn<bool>(
      'installed_ice_screws', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK ("installed_ice_screws" IN (0, 1))');
  final VerificationMeta _iceScrewsCountMeta =
      const VerificationMeta('iceScrewsCount');
  @override
  late final GeneratedColumn<int> iceScrewsCount = GeneratedColumn<int>(
      'ice_screws_count', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _toolsCountMeta = const VerificationMeta('toolsCount');
  @override
  late final GeneratedColumn<int> toolsCount = GeneratedColumn<int>(
      'tools_count', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        sector,
        treaningId,
        category,
        style,
        finishTime,
        startTime,
        wayLength,
        suspensionCount,
        fallCount,
        downClimbing,
        fail,
        installedIceScrews,
        iceScrewsCount,
        toolsCount
      ];
  @override
  String get aliasedName => _alias ?? 'drift_ice_attempts_table';
  @override
  String get actualTableName => 'drift_ice_attempts_table';
  @override
  VerificationContext validateIntegrity(Insertable<DriftIceAttempt> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('sector')) {
      context.handle(_sectorMeta,
          sector.isAcceptableOrUnknown(data['sector']!, _sectorMeta));
    } else if (isInserting) {
      context.missing(_sectorMeta);
    }
    if (data.containsKey('treaning_id')) {
      context.handle(
          _treaningIdMeta,
          treaningId.isAcceptableOrUnknown(
              data['treaning_id']!, _treaningIdMeta));
    } else if (isInserting) {
      context.missing(_treaningIdMeta);
    }
    if (data.containsKey('category')) {
      context.handle(_categoryMeta,
          category.isAcceptableOrUnknown(data['category']!, _categoryMeta));
    } else if (isInserting) {
      context.missing(_categoryMeta);
    }
    if (data.containsKey('style')) {
      context.handle(
          _styleMeta, style.isAcceptableOrUnknown(data['style']!, _styleMeta));
    } else if (isInserting) {
      context.missing(_styleMeta);
    }
    if (data.containsKey('finish_time')) {
      context.handle(
          _finishTimeMeta,
          finishTime.isAcceptableOrUnknown(
              data['finish_time']!, _finishTimeMeta));
    }
    if (data.containsKey('start_time')) {
      context.handle(_startTimeMeta,
          startTime.isAcceptableOrUnknown(data['start_time']!, _startTimeMeta));
    }
    if (data.containsKey('way_length')) {
      context.handle(_wayLengthMeta,
          wayLength.isAcceptableOrUnknown(data['way_length']!, _wayLengthMeta));
    } else if (isInserting) {
      context.missing(_wayLengthMeta);
    }
    if (data.containsKey('suspension_count')) {
      context.handle(
          _suspensionCountMeta,
          suspensionCount.isAcceptableOrUnknown(
              data['suspension_count']!, _suspensionCountMeta));
    } else if (isInserting) {
      context.missing(_suspensionCountMeta);
    }
    if (data.containsKey('fall_count')) {
      context.handle(_fallCountMeta,
          fallCount.isAcceptableOrUnknown(data['fall_count']!, _fallCountMeta));
    } else if (isInserting) {
      context.missing(_fallCountMeta);
    }
    if (data.containsKey('down_climbing')) {
      context.handle(
          _downClimbingMeta,
          downClimbing.isAcceptableOrUnknown(
              data['down_climbing']!, _downClimbingMeta));
    } else if (isInserting) {
      context.missing(_downClimbingMeta);
    }
    if (data.containsKey('fail')) {
      context.handle(
          _failMeta, fail.isAcceptableOrUnknown(data['fail']!, _failMeta));
    } else if (isInserting) {
      context.missing(_failMeta);
    }
    if (data.containsKey('installed_ice_screws')) {
      context.handle(
          _installedIceScrewsMeta,
          installedIceScrews.isAcceptableOrUnknown(
              data['installed_ice_screws']!, _installedIceScrewsMeta));
    } else if (isInserting) {
      context.missing(_installedIceScrewsMeta);
    }
    if (data.containsKey('ice_screws_count')) {
      context.handle(
          _iceScrewsCountMeta,
          iceScrewsCount.isAcceptableOrUnknown(
              data['ice_screws_count']!, _iceScrewsCountMeta));
    } else if (isInserting) {
      context.missing(_iceScrewsCountMeta);
    }
    if (data.containsKey('tools_count')) {
      context.handle(
          _toolsCountMeta,
          toolsCount.isAcceptableOrUnknown(
              data['tools_count']!, _toolsCountMeta));
    } else if (isInserting) {
      context.missing(_toolsCountMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DriftIceAttempt map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DriftIceAttempt(
      id: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      sector: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}sector'])!,
      treaningId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}treaning_id'])!,
      category: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}category'])!,
      style: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}style'])!,
      finishTime: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}finish_time']),
      startTime: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}start_time']),
      wayLength: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}way_length'])!,
      suspensionCount: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}suspension_count'])!,
      fallCount: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}fall_count'])!,
      downClimbing: attachedDatabase.options.types
          .read(DriftSqlType.bool, data['${effectivePrefix}down_climbing'])!,
      fail: attachedDatabase.options.types
          .read(DriftSqlType.bool, data['${effectivePrefix}fail'])!,
      installedIceScrews: attachedDatabase.options.types.read(
          DriftSqlType.bool, data['${effectivePrefix}installed_ice_screws'])!,
      iceScrewsCount: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}ice_screws_count'])!,
      toolsCount: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}tools_count'])!,
    );
  }

  @override
  $DriftIceAttemptsTableTable createAlias(String alias) {
    return $DriftIceAttemptsTableTable(attachedDatabase, alias);
  }
}

class DriftRockTreanings extends DataClass
    implements Insertable<DriftRockTreanings> {
  final String id;
  final String districtId;
  final String district;
  final DateTime date;
  final DateTime? finish;
  final DateTime? start;
  const DriftRockTreanings(
      {required this.id,
      required this.districtId,
      required this.district,
      required this.date,
      this.finish,
      this.start});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['district_id'] = Variable<String>(districtId);
    map['district'] = Variable<String>(district);
    map['date'] = Variable<DateTime>(date);
    if (!nullToAbsent || finish != null) {
      map['finish'] = Variable<DateTime>(finish);
    }
    if (!nullToAbsent || start != null) {
      map['start'] = Variable<DateTime>(start);
    }
    return map;
  }

  DriftRockTreaningsTableCompanion toCompanion(bool nullToAbsent) {
    return DriftRockTreaningsTableCompanion(
      id: Value(id),
      districtId: Value(districtId),
      district: Value(district),
      date: Value(date),
      finish:
          finish == null && nullToAbsent ? const Value.absent() : Value(finish),
      start:
          start == null && nullToAbsent ? const Value.absent() : Value(start),
    );
  }

  factory DriftRockTreanings.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DriftRockTreanings(
      id: serializer.fromJson<String>(json['id']),
      districtId: serializer.fromJson<String>(json['districtId']),
      district: serializer.fromJson<String>(json['district']),
      date: serializer.fromJson<DateTime>(json['date']),
      finish: serializer.fromJson<DateTime?>(json['finish']),
      start: serializer.fromJson<DateTime?>(json['start']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'districtId': serializer.toJson<String>(districtId),
      'district': serializer.toJson<String>(district),
      'date': serializer.toJson<DateTime>(date),
      'finish': serializer.toJson<DateTime?>(finish),
      'start': serializer.toJson<DateTime?>(start),
    };
  }

  DriftRockTreanings copyWith(
          {String? id,
          String? districtId,
          String? district,
          DateTime? date,
          Value<DateTime?> finish = const Value.absent(),
          Value<DateTime?> start = const Value.absent()}) =>
      DriftRockTreanings(
        id: id ?? this.id,
        districtId: districtId ?? this.districtId,
        district: district ?? this.district,
        date: date ?? this.date,
        finish: finish.present ? finish.value : this.finish,
        start: start.present ? start.value : this.start,
      );
  @override
  String toString() {
    return (StringBuffer('DriftRockTreanings(')
          ..write('id: $id, ')
          ..write('districtId: $districtId, ')
          ..write('district: $district, ')
          ..write('date: $date, ')
          ..write('finish: $finish, ')
          ..write('start: $start')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, districtId, district, date, finish, start);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DriftRockTreanings &&
          other.id == this.id &&
          other.districtId == this.districtId &&
          other.district == this.district &&
          other.date == this.date &&
          other.finish == this.finish &&
          other.start == this.start);
}

class DriftRockTreaningsTableCompanion
    extends UpdateCompanion<DriftRockTreanings> {
  final Value<String> id;
  final Value<String> districtId;
  final Value<String> district;
  final Value<DateTime> date;
  final Value<DateTime?> finish;
  final Value<DateTime?> start;
  const DriftRockTreaningsTableCompanion({
    this.id = const Value.absent(),
    this.districtId = const Value.absent(),
    this.district = const Value.absent(),
    this.date = const Value.absent(),
    this.finish = const Value.absent(),
    this.start = const Value.absent(),
  });
  DriftRockTreaningsTableCompanion.insert({
    required String id,
    required String districtId,
    required String district,
    required DateTime date,
    this.finish = const Value.absent(),
    this.start = const Value.absent(),
  })  : id = Value(id),
        districtId = Value(districtId),
        district = Value(district),
        date = Value(date);
  static Insertable<DriftRockTreanings> custom({
    Expression<String>? id,
    Expression<String>? districtId,
    Expression<String>? district,
    Expression<DateTime>? date,
    Expression<DateTime>? finish,
    Expression<DateTime>? start,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (districtId != null) 'district_id': districtId,
      if (district != null) 'district': district,
      if (date != null) 'date': date,
      if (finish != null) 'finish': finish,
      if (start != null) 'start': start,
    });
  }

  DriftRockTreaningsTableCompanion copyWith(
      {Value<String>? id,
      Value<String>? districtId,
      Value<String>? district,
      Value<DateTime>? date,
      Value<DateTime?>? finish,
      Value<DateTime?>? start}) {
    return DriftRockTreaningsTableCompanion(
      id: id ?? this.id,
      districtId: districtId ?? this.districtId,
      district: district ?? this.district,
      date: date ?? this.date,
      finish: finish ?? this.finish,
      start: start ?? this.start,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (districtId.present) {
      map['district_id'] = Variable<String>(districtId.value);
    }
    if (district.present) {
      map['district'] = Variable<String>(district.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (finish.present) {
      map['finish'] = Variable<DateTime>(finish.value);
    }
    if (start.present) {
      map['start'] = Variable<DateTime>(start.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DriftRockTreaningsTableCompanion(')
          ..write('id: $id, ')
          ..write('districtId: $districtId, ')
          ..write('district: $district, ')
          ..write('date: $date, ')
          ..write('finish: $finish, ')
          ..write('start: $start')
          ..write(')'))
        .toString();
  }
}

class $DriftRockTreaningsTableTable extends DriftRockTreaningsTable
    with TableInfo<$DriftRockTreaningsTableTable, DriftRockTreanings> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DriftRockTreaningsTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: 'UNIQUE');
  final VerificationMeta _districtIdMeta = const VerificationMeta('districtId');
  @override
  late final GeneratedColumn<String> districtId = GeneratedColumn<String>(
      'district_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _districtMeta = const VerificationMeta('district');
  @override
  late final GeneratedColumn<String> district = GeneratedColumn<String>(
      'district', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
      'date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _finishMeta = const VerificationMeta('finish');
  @override
  late final GeneratedColumn<DateTime> finish = GeneratedColumn<DateTime>(
      'finish', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  final VerificationMeta _startMeta = const VerificationMeta('start');
  @override
  late final GeneratedColumn<DateTime> start = GeneratedColumn<DateTime>(
      'start', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, districtId, district, date, finish, start];
  @override
  String get aliasedName => _alias ?? 'drift_rock_treanings_table';
  @override
  String get actualTableName => 'drift_rock_treanings_table';
  @override
  VerificationContext validateIntegrity(Insertable<DriftRockTreanings> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('district_id')) {
      context.handle(
          _districtIdMeta,
          districtId.isAcceptableOrUnknown(
              data['district_id']!, _districtIdMeta));
    } else if (isInserting) {
      context.missing(_districtIdMeta);
    }
    if (data.containsKey('district')) {
      context.handle(_districtMeta,
          district.isAcceptableOrUnknown(data['district']!, _districtMeta));
    } else if (isInserting) {
      context.missing(_districtMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('finish')) {
      context.handle(_finishMeta,
          finish.isAcceptableOrUnknown(data['finish']!, _finishMeta));
    }
    if (data.containsKey('start')) {
      context.handle(
          _startMeta, start.isAcceptableOrUnknown(data['start']!, _startMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DriftRockTreanings map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DriftRockTreanings(
      id: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      districtId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}district_id'])!,
      district: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}district'])!,
      date: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date'])!,
      finish: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}finish']),
      start: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}start']),
    );
  }

  @override
  $DriftRockTreaningsTableTable createAlias(String alias) {
    return $DriftRockTreaningsTableTable(attachedDatabase, alias);
  }
}

class DriftRockAttempt extends DataClass
    implements Insertable<DriftRockAttempt> {
  final String id;
  final String sector;
  final String sectorId;
  final String treaningId;
  final String category;
  final String? route;
  final String? routeId;
  final String style;
  final DateTime? finishTime;
  final DateTime? startTime;
  final int suspensionCount;
  final int fallCount;
  final bool downClimbing;
  final bool fail;
  const DriftRockAttempt(
      {required this.id,
      required this.sector,
      required this.sectorId,
      required this.treaningId,
      required this.category,
      this.route,
      this.routeId,
      required this.style,
      this.finishTime,
      this.startTime,
      required this.suspensionCount,
      required this.fallCount,
      required this.downClimbing,
      required this.fail});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['sector'] = Variable<String>(sector);
    map['sector_id'] = Variable<String>(sectorId);
    map['treaning_id'] = Variable<String>(treaningId);
    map['category'] = Variable<String>(category);
    if (!nullToAbsent || route != null) {
      map['route'] = Variable<String>(route);
    }
    if (!nullToAbsent || routeId != null) {
      map['route_id'] = Variable<String>(routeId);
    }
    map['style'] = Variable<String>(style);
    if (!nullToAbsent || finishTime != null) {
      map['finish_time'] = Variable<DateTime>(finishTime);
    }
    if (!nullToAbsent || startTime != null) {
      map['start_time'] = Variable<DateTime>(startTime);
    }
    map['suspension_count'] = Variable<int>(suspensionCount);
    map['fall_count'] = Variable<int>(fallCount);
    map['down_climbing'] = Variable<bool>(downClimbing);
    map['fail'] = Variable<bool>(fail);
    return map;
  }

  DriftRockAttemptsTableCompanion toCompanion(bool nullToAbsent) {
    return DriftRockAttemptsTableCompanion(
      id: Value(id),
      sector: Value(sector),
      sectorId: Value(sectorId),
      treaningId: Value(treaningId),
      category: Value(category),
      route:
          route == null && nullToAbsent ? const Value.absent() : Value(route),
      routeId: routeId == null && nullToAbsent
          ? const Value.absent()
          : Value(routeId),
      style: Value(style),
      finishTime: finishTime == null && nullToAbsent
          ? const Value.absent()
          : Value(finishTime),
      startTime: startTime == null && nullToAbsent
          ? const Value.absent()
          : Value(startTime),
      suspensionCount: Value(suspensionCount),
      fallCount: Value(fallCount),
      downClimbing: Value(downClimbing),
      fail: Value(fail),
    );
  }

  factory DriftRockAttempt.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DriftRockAttempt(
      id: serializer.fromJson<String>(json['id']),
      sector: serializer.fromJson<String>(json['sector']),
      sectorId: serializer.fromJson<String>(json['sectorId']),
      treaningId: serializer.fromJson<String>(json['treaningId']),
      category: serializer.fromJson<String>(json['category']),
      route: serializer.fromJson<String?>(json['route']),
      routeId: serializer.fromJson<String?>(json['routeId']),
      style: serializer.fromJson<String>(json['style']),
      finishTime: serializer.fromJson<DateTime?>(json['finishTime']),
      startTime: serializer.fromJson<DateTime?>(json['startTime']),
      suspensionCount: serializer.fromJson<int>(json['suspensionCount']),
      fallCount: serializer.fromJson<int>(json['fallCount']),
      downClimbing: serializer.fromJson<bool>(json['downClimbing']),
      fail: serializer.fromJson<bool>(json['fail']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'sector': serializer.toJson<String>(sector),
      'sectorId': serializer.toJson<String>(sectorId),
      'treaningId': serializer.toJson<String>(treaningId),
      'category': serializer.toJson<String>(category),
      'route': serializer.toJson<String?>(route),
      'routeId': serializer.toJson<String?>(routeId),
      'style': serializer.toJson<String>(style),
      'finishTime': serializer.toJson<DateTime?>(finishTime),
      'startTime': serializer.toJson<DateTime?>(startTime),
      'suspensionCount': serializer.toJson<int>(suspensionCount),
      'fallCount': serializer.toJson<int>(fallCount),
      'downClimbing': serializer.toJson<bool>(downClimbing),
      'fail': serializer.toJson<bool>(fail),
    };
  }

  DriftRockAttempt copyWith(
          {String? id,
          String? sector,
          String? sectorId,
          String? treaningId,
          String? category,
          Value<String?> route = const Value.absent(),
          Value<String?> routeId = const Value.absent(),
          String? style,
          Value<DateTime?> finishTime = const Value.absent(),
          Value<DateTime?> startTime = const Value.absent(),
          int? suspensionCount,
          int? fallCount,
          bool? downClimbing,
          bool? fail}) =>
      DriftRockAttempt(
        id: id ?? this.id,
        sector: sector ?? this.sector,
        sectorId: sectorId ?? this.sectorId,
        treaningId: treaningId ?? this.treaningId,
        category: category ?? this.category,
        route: route.present ? route.value : this.route,
        routeId: routeId.present ? routeId.value : this.routeId,
        style: style ?? this.style,
        finishTime: finishTime.present ? finishTime.value : this.finishTime,
        startTime: startTime.present ? startTime.value : this.startTime,
        suspensionCount: suspensionCount ?? this.suspensionCount,
        fallCount: fallCount ?? this.fallCount,
        downClimbing: downClimbing ?? this.downClimbing,
        fail: fail ?? this.fail,
      );
  @override
  String toString() {
    return (StringBuffer('DriftRockAttempt(')
          ..write('id: $id, ')
          ..write('sector: $sector, ')
          ..write('sectorId: $sectorId, ')
          ..write('treaningId: $treaningId, ')
          ..write('category: $category, ')
          ..write('route: $route, ')
          ..write('routeId: $routeId, ')
          ..write('style: $style, ')
          ..write('finishTime: $finishTime, ')
          ..write('startTime: $startTime, ')
          ..write('suspensionCount: $suspensionCount, ')
          ..write('fallCount: $fallCount, ')
          ..write('downClimbing: $downClimbing, ')
          ..write('fail: $fail')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      sector,
      sectorId,
      treaningId,
      category,
      route,
      routeId,
      style,
      finishTime,
      startTime,
      suspensionCount,
      fallCount,
      downClimbing,
      fail);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DriftRockAttempt &&
          other.id == this.id &&
          other.sector == this.sector &&
          other.sectorId == this.sectorId &&
          other.treaningId == this.treaningId &&
          other.category == this.category &&
          other.route == this.route &&
          other.routeId == this.routeId &&
          other.style == this.style &&
          other.finishTime == this.finishTime &&
          other.startTime == this.startTime &&
          other.suspensionCount == this.suspensionCount &&
          other.fallCount == this.fallCount &&
          other.downClimbing == this.downClimbing &&
          other.fail == this.fail);
}

class DriftRockAttemptsTableCompanion
    extends UpdateCompanion<DriftRockAttempt> {
  final Value<String> id;
  final Value<String> sector;
  final Value<String> sectorId;
  final Value<String> treaningId;
  final Value<String> category;
  final Value<String?> route;
  final Value<String?> routeId;
  final Value<String> style;
  final Value<DateTime?> finishTime;
  final Value<DateTime?> startTime;
  final Value<int> suspensionCount;
  final Value<int> fallCount;
  final Value<bool> downClimbing;
  final Value<bool> fail;
  const DriftRockAttemptsTableCompanion({
    this.id = const Value.absent(),
    this.sector = const Value.absent(),
    this.sectorId = const Value.absent(),
    this.treaningId = const Value.absent(),
    this.category = const Value.absent(),
    this.route = const Value.absent(),
    this.routeId = const Value.absent(),
    this.style = const Value.absent(),
    this.finishTime = const Value.absent(),
    this.startTime = const Value.absent(),
    this.suspensionCount = const Value.absent(),
    this.fallCount = const Value.absent(),
    this.downClimbing = const Value.absent(),
    this.fail = const Value.absent(),
  });
  DriftRockAttemptsTableCompanion.insert({
    required String id,
    required String sector,
    required String sectorId,
    required String treaningId,
    required String category,
    this.route = const Value.absent(),
    this.routeId = const Value.absent(),
    required String style,
    this.finishTime = const Value.absent(),
    this.startTime = const Value.absent(),
    required int suspensionCount,
    required int fallCount,
    required bool downClimbing,
    required bool fail,
  })  : id = Value(id),
        sector = Value(sector),
        sectorId = Value(sectorId),
        treaningId = Value(treaningId),
        category = Value(category),
        style = Value(style),
        suspensionCount = Value(suspensionCount),
        fallCount = Value(fallCount),
        downClimbing = Value(downClimbing),
        fail = Value(fail);
  static Insertable<DriftRockAttempt> custom({
    Expression<String>? id,
    Expression<String>? sector,
    Expression<String>? sectorId,
    Expression<String>? treaningId,
    Expression<String>? category,
    Expression<String>? route,
    Expression<String>? routeId,
    Expression<String>? style,
    Expression<DateTime>? finishTime,
    Expression<DateTime>? startTime,
    Expression<int>? suspensionCount,
    Expression<int>? fallCount,
    Expression<bool>? downClimbing,
    Expression<bool>? fail,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (sector != null) 'sector': sector,
      if (sectorId != null) 'sector_id': sectorId,
      if (treaningId != null) 'treaning_id': treaningId,
      if (category != null) 'category': category,
      if (route != null) 'route': route,
      if (routeId != null) 'route_id': routeId,
      if (style != null) 'style': style,
      if (finishTime != null) 'finish_time': finishTime,
      if (startTime != null) 'start_time': startTime,
      if (suspensionCount != null) 'suspension_count': suspensionCount,
      if (fallCount != null) 'fall_count': fallCount,
      if (downClimbing != null) 'down_climbing': downClimbing,
      if (fail != null) 'fail': fail,
    });
  }

  DriftRockAttemptsTableCompanion copyWith(
      {Value<String>? id,
      Value<String>? sector,
      Value<String>? sectorId,
      Value<String>? treaningId,
      Value<String>? category,
      Value<String?>? route,
      Value<String?>? routeId,
      Value<String>? style,
      Value<DateTime?>? finishTime,
      Value<DateTime?>? startTime,
      Value<int>? suspensionCount,
      Value<int>? fallCount,
      Value<bool>? downClimbing,
      Value<bool>? fail}) {
    return DriftRockAttemptsTableCompanion(
      id: id ?? this.id,
      sector: sector ?? this.sector,
      sectorId: sectorId ?? this.sectorId,
      treaningId: treaningId ?? this.treaningId,
      category: category ?? this.category,
      route: route ?? this.route,
      routeId: routeId ?? this.routeId,
      style: style ?? this.style,
      finishTime: finishTime ?? this.finishTime,
      startTime: startTime ?? this.startTime,
      suspensionCount: suspensionCount ?? this.suspensionCount,
      fallCount: fallCount ?? this.fallCount,
      downClimbing: downClimbing ?? this.downClimbing,
      fail: fail ?? this.fail,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (sector.present) {
      map['sector'] = Variable<String>(sector.value);
    }
    if (sectorId.present) {
      map['sector_id'] = Variable<String>(sectorId.value);
    }
    if (treaningId.present) {
      map['treaning_id'] = Variable<String>(treaningId.value);
    }
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    if (route.present) {
      map['route'] = Variable<String>(route.value);
    }
    if (routeId.present) {
      map['route_id'] = Variable<String>(routeId.value);
    }
    if (style.present) {
      map['style'] = Variable<String>(style.value);
    }
    if (finishTime.present) {
      map['finish_time'] = Variable<DateTime>(finishTime.value);
    }
    if (startTime.present) {
      map['start_time'] = Variable<DateTime>(startTime.value);
    }
    if (suspensionCount.present) {
      map['suspension_count'] = Variable<int>(suspensionCount.value);
    }
    if (fallCount.present) {
      map['fall_count'] = Variable<int>(fallCount.value);
    }
    if (downClimbing.present) {
      map['down_climbing'] = Variable<bool>(downClimbing.value);
    }
    if (fail.present) {
      map['fail'] = Variable<bool>(fail.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DriftRockAttemptsTableCompanion(')
          ..write('id: $id, ')
          ..write('sector: $sector, ')
          ..write('sectorId: $sectorId, ')
          ..write('treaningId: $treaningId, ')
          ..write('category: $category, ')
          ..write('route: $route, ')
          ..write('routeId: $routeId, ')
          ..write('style: $style, ')
          ..write('finishTime: $finishTime, ')
          ..write('startTime: $startTime, ')
          ..write('suspensionCount: $suspensionCount, ')
          ..write('fallCount: $fallCount, ')
          ..write('downClimbing: $downClimbing, ')
          ..write('fail: $fail')
          ..write(')'))
        .toString();
  }
}

class $DriftRockAttemptsTableTable extends DriftRockAttemptsTable
    with TableInfo<$DriftRockAttemptsTableTable, DriftRockAttempt> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DriftRockAttemptsTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: 'UNIQUE');
  final VerificationMeta _sectorMeta = const VerificationMeta('sector');
  @override
  late final GeneratedColumn<String> sector = GeneratedColumn<String>(
      'sector', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _sectorIdMeta = const VerificationMeta('sectorId');
  @override
  late final GeneratedColumn<String> sectorId = GeneratedColumn<String>(
      'sector_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _treaningIdMeta = const VerificationMeta('treaningId');
  @override
  late final GeneratedColumn<String> treaningId = GeneratedColumn<String>(
      'treaning_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: 'REFERENCES "drift_rock_treanings_table" ("id")');
  final VerificationMeta _categoryMeta = const VerificationMeta('category');
  @override
  late final GeneratedColumn<String> category = GeneratedColumn<String>(
      'category', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _routeMeta = const VerificationMeta('route');
  @override
  late final GeneratedColumn<String> route = GeneratedColumn<String>(
      'route', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _routeIdMeta = const VerificationMeta('routeId');
  @override
  late final GeneratedColumn<String> routeId = GeneratedColumn<String>(
      'route_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _styleMeta = const VerificationMeta('style');
  @override
  late final GeneratedColumn<String> style = GeneratedColumn<String>(
      'style', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _finishTimeMeta = const VerificationMeta('finishTime');
  @override
  late final GeneratedColumn<DateTime> finishTime = GeneratedColumn<DateTime>(
      'finish_time', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  final VerificationMeta _startTimeMeta = const VerificationMeta('startTime');
  @override
  late final GeneratedColumn<DateTime> startTime = GeneratedColumn<DateTime>(
      'start_time', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  final VerificationMeta _suspensionCountMeta =
      const VerificationMeta('suspensionCount');
  @override
  late final GeneratedColumn<int> suspensionCount = GeneratedColumn<int>(
      'suspension_count', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _fallCountMeta = const VerificationMeta('fallCount');
  @override
  late final GeneratedColumn<int> fallCount = GeneratedColumn<int>(
      'fall_count', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _downClimbingMeta =
      const VerificationMeta('downClimbing');
  @override
  late final GeneratedColumn<bool> downClimbing = GeneratedColumn<bool>(
      'down_climbing', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK ("down_climbing" IN (0, 1))');
  final VerificationMeta _failMeta = const VerificationMeta('fail');
  @override
  late final GeneratedColumn<bool> fail = GeneratedColumn<bool>(
      'fail', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK ("fail" IN (0, 1))');
  @override
  List<GeneratedColumn> get $columns => [
        id,
        sector,
        sectorId,
        treaningId,
        category,
        route,
        routeId,
        style,
        finishTime,
        startTime,
        suspensionCount,
        fallCount,
        downClimbing,
        fail
      ];
  @override
  String get aliasedName => _alias ?? 'drift_rock_attempts_table';
  @override
  String get actualTableName => 'drift_rock_attempts_table';
  @override
  VerificationContext validateIntegrity(Insertable<DriftRockAttempt> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('sector')) {
      context.handle(_sectorMeta,
          sector.isAcceptableOrUnknown(data['sector']!, _sectorMeta));
    } else if (isInserting) {
      context.missing(_sectorMeta);
    }
    if (data.containsKey('sector_id')) {
      context.handle(_sectorIdMeta,
          sectorId.isAcceptableOrUnknown(data['sector_id']!, _sectorIdMeta));
    } else if (isInserting) {
      context.missing(_sectorIdMeta);
    }
    if (data.containsKey('treaning_id')) {
      context.handle(
          _treaningIdMeta,
          treaningId.isAcceptableOrUnknown(
              data['treaning_id']!, _treaningIdMeta));
    } else if (isInserting) {
      context.missing(_treaningIdMeta);
    }
    if (data.containsKey('category')) {
      context.handle(_categoryMeta,
          category.isAcceptableOrUnknown(data['category']!, _categoryMeta));
    } else if (isInserting) {
      context.missing(_categoryMeta);
    }
    if (data.containsKey('route')) {
      context.handle(
          _routeMeta, route.isAcceptableOrUnknown(data['route']!, _routeMeta));
    }
    if (data.containsKey('route_id')) {
      context.handle(_routeIdMeta,
          routeId.isAcceptableOrUnknown(data['route_id']!, _routeIdMeta));
    }
    if (data.containsKey('style')) {
      context.handle(
          _styleMeta, style.isAcceptableOrUnknown(data['style']!, _styleMeta));
    } else if (isInserting) {
      context.missing(_styleMeta);
    }
    if (data.containsKey('finish_time')) {
      context.handle(
          _finishTimeMeta,
          finishTime.isAcceptableOrUnknown(
              data['finish_time']!, _finishTimeMeta));
    }
    if (data.containsKey('start_time')) {
      context.handle(_startTimeMeta,
          startTime.isAcceptableOrUnknown(data['start_time']!, _startTimeMeta));
    }
    if (data.containsKey('suspension_count')) {
      context.handle(
          _suspensionCountMeta,
          suspensionCount.isAcceptableOrUnknown(
              data['suspension_count']!, _suspensionCountMeta));
    } else if (isInserting) {
      context.missing(_suspensionCountMeta);
    }
    if (data.containsKey('fall_count')) {
      context.handle(_fallCountMeta,
          fallCount.isAcceptableOrUnknown(data['fall_count']!, _fallCountMeta));
    } else if (isInserting) {
      context.missing(_fallCountMeta);
    }
    if (data.containsKey('down_climbing')) {
      context.handle(
          _downClimbingMeta,
          downClimbing.isAcceptableOrUnknown(
              data['down_climbing']!, _downClimbingMeta));
    } else if (isInserting) {
      context.missing(_downClimbingMeta);
    }
    if (data.containsKey('fail')) {
      context.handle(
          _failMeta, fail.isAcceptableOrUnknown(data['fail']!, _failMeta));
    } else if (isInserting) {
      context.missing(_failMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DriftRockAttempt map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DriftRockAttempt(
      id: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      sector: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}sector'])!,
      sectorId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}sector_id'])!,
      treaningId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}treaning_id'])!,
      category: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}category'])!,
      route: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}route']),
      routeId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}route_id']),
      style: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}style'])!,
      finishTime: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}finish_time']),
      startTime: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}start_time']),
      suspensionCount: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}suspension_count'])!,
      fallCount: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}fall_count'])!,
      downClimbing: attachedDatabase.options.types
          .read(DriftSqlType.bool, data['${effectivePrefix}down_climbing'])!,
      fail: attachedDatabase.options.types
          .read(DriftSqlType.bool, data['${effectivePrefix}fail'])!,
    );
  }

  @override
  $DriftRockAttemptsTableTable createAlias(String alias) {
    return $DriftRockAttemptsTableTable(attachedDatabase, alias);
  }
}

abstract class _$DriftDBLocalDataSource extends GeneratedDatabase {
  _$DriftDBLocalDataSource(QueryExecutor e) : super(e);
  late final $DriftStrengthExercisesTableTable driftStrengthExercisesTable =
      $DriftStrengthExercisesTableTable(this);
  late final $DriftHallTreaningsTableTable driftHallTreaningsTable =
      $DriftHallTreaningsTableTable(this);
  late final $DriftHallAttemptsTableTable driftHallAttemptsTable =
      $DriftHallAttemptsTableTable(this);
  late final $DriftCardioTreaningsTableTable driftCardioTreaningsTable =
      $DriftCardioTreaningsTableTable(this);
  late final $DriftStrengthTreaningsTableTable driftStrengthTreaningsTable =
      $DriftStrengthTreaningsTableTable(this);
  late final $DriftStrengthTreaningLinesTableTable
      driftStrengthTreaningLinesTable =
      $DriftStrengthTreaningLinesTableTable(this);
  late final $DriftIceTreaningsTableTable driftIceTreaningsTable =
      $DriftIceTreaningsTableTable(this);
  late final $DriftIceAttemptsTableTable driftIceAttemptsTable =
      $DriftIceAttemptsTableTable(this);
  late final $DriftRockTreaningsTableTable driftRockTreaningsTable =
      $DriftRockTreaningsTableTable(this);
  late final $DriftRockAttemptsTableTable driftRockAttemptsTable =
      $DriftRockAttemptsTableTable(this);
  @override
  Iterable<TableInfo<Table, dynamic>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        driftStrengthExercisesTable,
        driftHallTreaningsTable,
        driftHallAttemptsTable,
        driftCardioTreaningsTable,
        driftStrengthTreaningsTable,
        driftStrengthTreaningLinesTable,
        driftIceTreaningsTable,
        driftIceAttemptsTable,
        driftRockTreaningsTable,
        driftRockAttemptsTable
      ];
}
