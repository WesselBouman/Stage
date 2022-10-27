import 'dart:convert';

class AppEvent {
  final String title;
  final String id;
  final String description;
  final String date;
  final String uerId;
  final String public;
  AppEvent({
    this.title,
    this.id,
    this.description,
    this.date,
    this.uerId,
    this.public,
  });

  AppEvent copyWith({
    String title,
    String id,
    String description,
    String date,
    String uerId,
    String public,
  }) {
    return AppEvent(
      title: title ?? this.title,
      id: id ?? this.id,
      description: description ?? this.description,
      date: date ?? this.date,
      uerId: uerId ?? this.uerId,
      public: public ?? this.public,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'id': id,
      'description': description,
      'date': date,
      'uerId': uerId,
      'public': public,
    };
  }

  factory AppEvent.fromMap(Map<String, dynamic> map) {
    return AppEvent(
      title: map['title'],
      id: map['id'],
      description: map['description'],
      date: map['date'],
      uerId: map['uerId'],
      public: map['public'],
    );
  }
  factory AppEvent.fromDS(String id,Map<String, dynamic> map) {
    return AppEvent(
      title: map['title'],
      id: id,
      description: map['description'],
      date: map['date'],
      uerId: map['uerId'],
      public: map['public'],
    );
  }

  String toJson() => json.encode(toMap());

  factory AppEvent.fromJson(String source) => AppEvent.fromMap(json.decode(source));

  @override
  String toString() {
    return 'AppEvent(title: $title, id: $id, description: $description, date: $date, uerId: $uerId, public: $public)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AppEvent &&
        other.title == title &&
        other.id == id &&
        other.description == description &&
        other.date == date &&
        other.uerId == uerId &&
        other.public == public;
  }

  @override
  int get hashCode {
    return title.hashCode ^
    id.hashCode ^
    description.hashCode ^
    date.hashCode ^
    uerId.hashCode ^
    public.hashCode;
  }
}
