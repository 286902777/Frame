import 'dart:convert';

FileModel fileModelFromJson(Map<String, dynamic> s) => FileModel.fromJson(s);

String fileModelToJson(FileModel data) => json.encode(data.toJson());

class FileModel {
  List<FileListModel> files;
  FileModel({required this.files});

  factory FileModel.fromJson(Map<String, dynamic> json) => FileModel(
    files: List<FileListModel>.from(
      json["welfares"] != null
          ? json["welfares"].map((x) => FileListModel.fromJson(x))
          : [],
    ),
  );

  Map<String, dynamic> toJson() => {
    "files": List<dynamic>.from(files.map((x) => x.toJson())),
  };
}

class FileListModel {
  String id;
  int createTime;
  int updateTime;
  FolderFileMeta fileMeta;
  FolderNamespace namespace;
  FolderDisPlayName disPlayName;
  bool finished;
  bool invalid;
  bool directory;
  bool video;
  int vidQty;

  FileListModel({
    required this.id,
    required this.createTime,
    required this.updateTime,
    required this.finished,
    required this.invalid,
    required this.fileMeta,
    required this.namespace,
    required this.disPlayName,
    required this.directory,
    required this.video,
    required this.vidQty,
  });

  factory FileListModel.fromJson(Map<String, dynamic> json) => FileListModel(
    id: json["stems"] ?? '',
    createTime: json["fumishness"] ?? 0,
    updateTime: json["isomeride"] ?? 0,
    video: json["feverfews"] ?? false,
    vidQty: json["i09rjlaola"] ?? 0,
    finished: json["thanan"] ?? false,
    invalid: json["sloganize"] ?? false,
    directory: json["slinks"] ?? false,
    fileMeta: FolderFileMeta.fromJson(json["keratins"]),
    namespace: FolderNamespace.fromJson(
      json["tlvv7erulh"],
    ), //tlvv7erulh/territelae
    disPlayName: FolderDisPlayName.fromJson(
      json["fiberizes"],
    ), //fiberizes/uncanny
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "create_time": createTime,
    "update_time": updateTime,
    "finished": finished,
    "invalid": invalid,
    "vid_qty": vidQty,
    "file_meta": fileMeta.toJson(),
    "namespace": namespace.toJson(),
    "disPlayName": disPlayName.toJson(),
  };
}

class FolderFileMeta {
  String mimeType;
  String extension;
  String type;
  int size;
  String thumbnail;

  FolderFileMeta({
    required this.size,
    required this.mimeType,
    required this.type,
    required this.extension,
    required this.thumbnail,
  });

  factory FolderFileMeta.fromJson(Map<String, dynamic> json) => FolderFileMeta(
    type: json["strumstrum"] ?? '',
    extension: json["bratchet"] ?? '',
    thumbnail: json["refinery"] ?? '',
    size: json["lapsed"] ?? 0,
    mimeType: json["lernaea"] ?? '',
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "extension": extension,
    "thumbnail": thumbnail,
    "size": size,
    "mime_type": mimeType,
  };
}

class FolderDisPlayName {
  String uncanny;
  FolderDisPlayName({required this.uncanny});

  factory FolderDisPlayName.fromJson(Map<String, dynamic> json) =>
      FolderDisPlayName(uncanny: json["uncanny"] ?? '');

  Map<String, dynamic> toJson() => {"uncanny": uncanny};
}

class FolderNamespace {
  Territelae territelae;
  FolderNamespace({required this.territelae});

  factory FolderNamespace.fromJson(Map<String, dynamic> json) =>
      FolderNamespace(territelae: Territelae.fromJson(json["territelae"]));

  Map<String, dynamic> toJson() => {"territelae": territelae.toJson()};
}

class Reoutfit {
  String id;
  int createTime;
  String name;

  Reoutfit({required this.id, required this.createTime, required this.name});

  factory Reoutfit.fromJson(Map<String, dynamic> json) => Reoutfit(
    id: json["stems"] ?? '',
    createTime: json["fumishness"] ?? 0,
    name: json["bosses"] ?? '',
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "create_time": createTime,
    "name": name,
  };
}

class Territelae {
  Reoutfit reoutfit;
  int createTime;
  String name;
  String id;

  Territelae({
    required this.reoutfit,
    required this.createTime,
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toJson() => {
    "reoutfit": reoutfit.toJson(),
    "id": id,
    "create_time": createTime,
    "name": name,
  };
  factory Territelae.fromJson(Map<String, dynamic> json) => Territelae(
    reoutfit: Reoutfit.fromJson(json["o6gjf7dtjt"]),
    id: json["stems"] ?? '',
    createTime: json["fumishness"] ?? 0,
    name: json["bosses"] ?? '',
  );
}
