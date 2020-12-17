class User {
  String _status;
  List<_ResultParameters> _result = [];

  User.fromJson(Map<String, dynamic> parsedJson) {
    _status = parsedJson['status'];
    List<_ResultParameters> temp = [];
    for (int i = 0; i < parsedJson['resultparameters'].length; i++) {
      _ResultParameters resultParameters =
          _ResultParameters(parsedJson['resultparameters'][i]);
      temp.add(resultParameters);
    }
    _result = temp;
  }
  List<_ResultParameters> get result => _result;
  String get status => _status;
}

class _ResultParameters {
  String _city;
  String _address2;
  String _address1;
  String _countrycode;
  String _countryname;
  String _issalesrep;
  String _isvendor;
  String _phone;
  String _iscustomer;
  String _regionname;
  String _name;
  String _postal;
  String _c_bpartner_location_id;
  String _c_bpartner_id;

  _ResultParameters(result) {
    _city = result['city'];
    _address2 = result['address2'];
    _address1 = result['address1'];
    _countrycode = result['countrycode'];
    _countryname = result['countryname'];
    _issalesrep = result['issalesrep'];
    _isvendor = result['isvendor'];
    _phone = result['phone'];
    _iscustomer = result['iscustomer'];
    _regionname = result['regionname'];
    _name = result['name'];
    _postal = result['postal'];
    _c_bpartner_location_id = result['c_bpartner_location_id'];
    _c_bpartner_id = result['c_bpartner_id'];
  }
  String get city => _city;
  String get address2 => _address2;
  String get address1 => _address1;
  String get countryCode => _countrycode;
  String get countryName => _countryname;
  String get isSales => _issalesrep;
  String get isVendor => _isvendor;
  String get phone => _phone;
  String get isCustomer => _iscustomer;
  String get regionName => _regionname;
  String get name => _name;
  String get postal => _postal;
  String get cBPaertnerLocationId => _c_bpartner_location_id;
  String get cBPartnerId => _c_bpartner_id;
}
