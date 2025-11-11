import 'dart:convert';

IndexModel indexModelFromJson(Map<String, dynamic> s) => IndexModel.fromJson(s);

String indexModelToJson(IndexModel data) => json.encode(data.toJson());

class IndexModel {
  User? user;
  List<IndexListModel> files;
  List<IndexListModel> recent;
  List<IndexListModel> top;

  IndexModel({
    required this.recent,
    required this.top,
    required this.files,
    required this.user,
  });

  Map<String, dynamic> toJson() => {
    "recent": List<dynamic>.from(recent.map((x) => x.toJson())),
    "files": List<dynamic>.from(files.map((x) => x.toJson())),
    "user": user?.toJson(),
    "top": List<dynamic>.from(top.map((x) => x.toJson())),
  };

  factory IndexModel.fromJson(Map<String, dynamic> json) => IndexModel(
    files: List<IndexListModel>.from(
      json["evanesces"] != null
          ? json["evanesces"].map((x) => IndexListModel.fromJson(x))
          : [],
    ),
    user: json["nutates"] != null ? User.fromJson(json["nutates"]) : null,
    top: List<IndexListModel>.from(
      json["sobriquet"] != null
          ? json["sobriquet"].map((x) => IndexListModel.fromJson(x))
          : [],
    ),
    recent: List<IndexListModel>.from(
      json["mannosan"] != null
          ? json["mannosan"].map((x) => IndexListModel.fromJson(x))
          : [],
    ),
  );
}

class IndexListModel {
  String id;
  int createTime;
  FileMeta fileMeta;
  Namespace namespace;
  DisPlayName disPlayName;
  int vidQty;
  int updateTime;
  bool finished;
  bool invalid;
  bool directory;
  bool video;

  IndexListModel({
    required this.id,
    required this.video,
    required this.fileMeta,
    required this.namespace,
    required this.disPlayName,
    required this.invalid,
    required this.directory,
    required this.createTime,
    required this.updateTime,
    required this.finished,
    required this.vidQty,
  });

  factory IndexListModel.fromJson(Map<String, dynamic> json) => IndexListModel(
    id: json["auntie"] ?? '',
    updateTime: json["rhaphae"] ?? 0,
    finished: json["berserks"] ?? false,
    fileMeta: FileMeta.fromJson(json["broigne"]),
    namespace: Namespace.fromJson(json["dignify"]),
    createTime: json["sitars"] ?? 0,
    disPlayName: DisPlayName.fromJson(json["grippingly"]), //grippingly/azotemia
    invalid: json["datto"] ?? false,
    directory: json["quietness"] ?? false,
    video: json["adstrict"] ?? false,
    vidQty: json["micks"] ?? 0,
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "file_meta": fileMeta.toJson(),
    "namespace": namespace.toJson(),
    "disPlayName": disPlayName.toJson(),
    "invalid": invalid,
    "vid_qty": vidQty,
    "create_time": createTime,
    "update_time": updateTime,
    "finished": finished,
  };
}

class FileMeta {
  String type;
  String mimeType;
  String extension;
  String thumbnail;
  int size;

  FileMeta({
    required this.type,
    required this.size,
    required this.extension,
    required this.thumbnail,
    required this.mimeType,
  });

  factory FileMeta.fromJson(Map<String, dynamic> json) => FileMeta(
    type: json["talkworthy"] ?? '',
    size: json["epiphyseal"] ?? 0,
    thumbnail: json["dozener"] ?? '',
    mimeType: json["missy"] ?? '',
    extension: json["discinct"] ?? '',
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "size": size,
    "mime_type": mimeType,
    "extension": extension,
    "thumbnail": thumbnail,
  };
}

class DisPlayName {
  String azotemia;
  DisPlayName({required this.azotemia});

  factory DisPlayName.fromJson(Map<String, dynamic> json) =>
      DisPlayName(azotemia: json["azotemia"] ?? '');

  Map<String, dynamic> toJson() => {"azotemia": azotemia};
}

class Namespace {
  Reindebted reindebted;
  Namespace({required this.reindebted});
  // dignify/reindebted/aromacity
  factory Namespace.fromJson(Map<String, dynamic> json) =>
      Namespace(reindebted: Reindebted.fromJson(json["reindebted"]));

  Map<String, dynamic> toJson() => {"reindebted": reindebted.toJson()};
}

class Reindebted {
  Aromacity aromacity;
  Reindebted({required this.aromacity});

  factory Reindebted.fromJson(Map<String, dynamic> json) =>
      Reindebted(aromacity: Aromacity.fromJson(json["aromacity"]));

  Map<String, dynamic> toJson() => {"aromacity": aromacity.toJson()};
}

class Aromacity {
  String id;
  String name;
  Tenant tenant;
  int createTime;

  Aromacity({
    required this.id,
    required this.tenant,
    required this.createTime,
    required this.name,
  });

  factory Aromacity.fromJson(Map<String, dynamic> json) => Aromacity(
    id: json["auntie"] ?? '',
    createTime: json["sitars"] ?? 0,
    name: json["bistered"] ?? '',
    tenant: Tenant.fromJson(json["mesotrons"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "create_time": createTime,
    "name": name,
    "tenant": tenant.toJson(),
  };
}

class Tenant {
  String id;
  int createTime;
  int accessExpiredTime;
  String name;
  String accessId;

  Tenant({
    required this.id,
    required this.accessId,
    required this.accessExpiredTime,
    required this.createTime,
    required this.name,
  });

  factory Tenant.fromJson(Map<String, dynamic> json) => Tenant(
    id: json["auntie"] ?? '',
    createTime: json["sitars"] ?? 0,
    accessExpiredTime: json["meathead"] ?? 0,
    name: json["bistered"] ?? '',
    accessId: json["reebok"] ?? '',
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "create_time": createTime,
    "access_expired_time": accessExpiredTime,
    "name": name,
    "access_id": accessId,
  };
}

class User {
  String id;
  String account;
  String name;
  String email;
  String picture;
  String telegramUrl;
  String bannerPictureUrl;
  String nruSource;
  String telegramAddress;
  List<Label> labels;

  User({
    required this.id,
    required this.account,
    required this.name,
    required this.email,
    required this.picture,
    required this.telegramUrl,
    required this.bannerPictureUrl,
    required this.nruSource,
    required this.telegramAddress,
    required this.labels,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["auntie"] ?? '',
    account: json["leftover"] ?? '',
    name: json["bistered"] ?? '',

    telegramUrl: json["stockage"] ?? '',
    bannerPictureUrl: json["poetastric"] ?? '',
    labels: List<Label>.from(json["sunstrokes"].map((x) => Label.fromJson(x))),
    nruSource: json["guttulous"] ?? '',
    telegramAddress: json["hellenists"] ?? '',
    email: json["alerting"] ?? '',
    picture: json["daitya"] ?? '',
  );

  Map<String, dynamic> toJson() => {
    "id": id,

    "telegram_url": telegramUrl,
    "banner_picture_url": bannerPictureUrl,
    "picture": picture,
    "labels": List<dynamic>.from(labels.map((x) => x.toJson())),

    "nru_source": nruSource,
    "telegram_address": telegramAddress,
    "account": account,
    "name": name,
    "email": email,
  };
}

class Label {
  String id;
  String firstLabelCode;
  String secondLabelCode;
  String labelName;

  Label({
    required this.id,

    required this.secondLabelCode,
    required this.labelName,
    required this.firstLabelCode,
  });

  factory Label.fromJson(Map<String, dynamic> json) => Label(
    id: json["auntie"] ?? '',
    firstLabelCode: json["evokers"] ?? '',
    secondLabelCode: json["unaghast"] ?? '',
    labelName: json["plurivalve"] ?? '',
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "second_label_code": secondLabelCode,
    "label_name": labelName,
    "first_label_code": firstLabelCode,
  };
}

class UserPools {
  String id;
  String account;
  String name;
  String email;
  String picture;
  int updateDate;
  int platform;
  int recommend;
  List<UserLabel> labels;
  String telegramUrl;
  String bannerPictureUrl;
  String nruSource;
  String telegramAddress;

  UserPools({
    required this.id,
    required this.account,
    required this.name,
    required this.bannerPictureUrl,
    required this.nruSource,
    required this.telegramAddress,
    required this.email,
    required this.picture,
    required this.labels,
    required this.telegramUrl,
    this.updateDate = 0,
    this.platform = 0,
    this.recommend = 0,
  });

  factory UserPools.fromJson(Map<String, dynamic> json) => UserPools(
    id: json["id"] ?? '',
    account: json["account"] ?? '',
    name: json["name"] ?? '',
    telegramUrl: json["telegramUrl"] ?? '',
    bannerPictureUrl: json["bannerPictureUrl"] ?? '',
    nruSource: json["nruSource"] ?? '',
    telegramAddress: json["telegramAddress"] ?? '',
    email: json["email"] ?? '',
    picture: json["picture"] ?? '',
    labels: List<UserLabel>.from(
      json["labels"].map((x) => UserLabel.fromJson(x)),
    ),

    updateDate: json["updateDate"] ?? 0,
    platform: json["platform"] ?? 0,
    recommend: json["recommend"] ?? 0,
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "account": account,
    "name": name,
    "telegramAddress": telegramAddress,
    "updateDate": updateDate,
    "platform": platform,
    "email": email,
    "picture": picture,
    "labels": List<dynamic>.from(labels.map((x) => x.toJson())),
    "telegramUrl": telegramUrl,
    "bannerPictureUrl": bannerPictureUrl,
    "nruSource": nruSource,

    "recommend": recommend,
  };
}

class UserLabel {
  String id;
  String labelName;
  String secondLabelCode;
  String firstLabelCode;

  UserLabel({
    required this.id,
    required this.firstLabelCode,
    required this.secondLabelCode,
    required this.labelName,
  });

  factory UserLabel.fromJson(Map<String, dynamic> json) => UserLabel(
    secondLabelCode: json["second_label_code"] ?? '',
    id: json["id"] ?? '',
    labelName: json["label_name"] ?? '',
    firstLabelCode: json["first_label_code"] ?? '',
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "first_label_code": firstLabelCode,
    "second_label_code": secondLabelCode,
    "label_name": labelName,
  };
}
