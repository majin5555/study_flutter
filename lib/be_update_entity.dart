/// code : 1
/// data : {"wgt":{"version_code":3,"wgt_name":"__UNI__687F706.wgt","wgt_url":" https://timages.weilaios.com/20210427174554__uni__687f706.wgt"}}

class BeUpdateEntity {
  String code;
  DataBean data;

  static BeUpdateEntity fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    BeUpdateEntity beUpdateEntityBean = BeUpdateEntity();
    beUpdateEntityBean.code = map['code'];
    beUpdateEntityBean.data = DataBean.fromMap(map['data']);
    return beUpdateEntityBean;
  }

  Map toJson() => {
    "code": code,
    "data": data,
  };
}

/// wgt : {"version_code":3,"wgt_name":"__UNI__687F706.wgt","wgt_url":" https://timages.weilaios.com/20210427174554__uni__687f706.wgt"}

class DataBean {
  WgtBean wgt;

  static DataBean fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    DataBean dataBean = DataBean();
    dataBean.wgt = WgtBean.fromMap(map['wgt']);
    return dataBean;
  }

  Map toJson() => {
    "wgt": wgt,
  };
}

/// version_code : 3
/// wgt_name : "__UNI__687F706.wgt"
/// wgt_url : " https://timages.weilaios.com/20210427174554__uni__687f706.wgt"

class WgtBean {
  String versionCode;
  String wgtName;
  String wgtUrl;

  static WgtBean fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    WgtBean wgtBean = WgtBean();
    wgtBean.versionCode = map['version_code'];
    wgtBean.wgtName = map['wgt_name'];
    wgtBean.wgtUrl = map['wgt_url'];
    return wgtBean;
  }

  Map toJson() => {
    "version_code": versionCode,
    "wgt_name": wgtName,
    "wgt_url": wgtUrl,
  };
}