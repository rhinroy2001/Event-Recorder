import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Data {
  static final Data _data = Data._internal();
  List<Uint8List> imageAsBytesList = [];
  Uint8List signature = Uint8List(0);
  TextEditingController fireSafetyController = TextEditingController();
  TextEditingController signsAndPostingsController = TextEditingController();
  TextEditingController chemicalHygieneController = TextEditingController();
  TextEditingController labPracticesController = TextEditingController();
  TextEditingController chemicalUseController = TextEditingController();
  TextEditingController safetyEquipmentController = TextEditingController();
  TextEditingController hazardousWasteController = TextEditingController();
  TextEditingController personalProtectionController = TextEditingController();
  String faculty = "";
  String date = "";
  String room = "";
  String inspector = "";
  String department = "";
  String phone = "";
  String commentsFireSafety = "";
  String commentsSignsAndPostings = "";
  String commentsChemicalHygiene = "";
  String commentsLabPractices = "";
  String commentsChemicalUse = "";
  String commentsSafetyEquipment = "";
  String commentsHazardousWaste = "";
  String commentsPersonalProtection = "";
  bool one = false;
  bool two = false;
  bool three = false;
  bool four = false;
  bool five = false;
  bool six = false;
  bool seven = false;
  bool eight = false;
  bool nine = false;
  bool ten = false;
  bool eleven = false;
  bool twelve = false;
  bool thirteen = false;
  bool fourteen = false;
  bool fifteen = false;
  bool sixteen = false;
  bool seventeen = false;
  bool eighteen = false;
  bool eighteenA = false;
  bool eighteenB = false;
  bool nineteen = false;
  bool twenty = false;
  bool twentyone = false;
  bool twentytwo = false;
  bool twentythree = false;
  bool twentyfour = false;
  bool twentyfive = false;
  bool twentysix = false;
  bool twentyseven = false;
  bool twentyeight = false;
  bool twentynine = false;
  bool thirty = false;
  bool thirtyone = false;
  bool thirtytwo = false;
  bool thirtythree = false;
  bool thirtythreeA = false;
  bool thirtythreeB = false;
  bool thirtythreeC = false;
  bool thirtyfour = false;
  bool thirtyfive = false;
  bool thirtysix = false;
  bool thirtyseven = false;
  bool thirtyeight = false;
  bool thirtynine = false;
  bool forty = false;
  bool fortyA = false;
  bool fortyB = false;
  bool fortyone = false;
  bool fortytwo = false;
  bool fortythree = false;
  bool fortyfour = false;
  bool fortyfourA = false;
  bool fortyfourB = false;
  bool fortyfourC = false;
  bool fortyfourD = false;
  bool fortyfive = false;
  bool fortyfiveA = false;
  bool fortyfiveB = false;
  bool fortysix = false;
  bool fortysixA = false;
  bool fortysixB = false;
  bool fortysixC = false;
  bool fortyseven = false;
  bool fortysevenA = false;
  bool fortysevenB = false;
  bool fortysevenC = false;
  bool fortysevenD = false;
  bool fortyeight = false;
  bool fortyeightA = false;
  bool fortyeightB = false;
  bool fortyeightC = false;
  bool fortynine = false;
  bool fortynineA = false;
  bool fortynineB = false;
  bool fifty = false;
  bool fiftyone = false;
  bool fiftytwo = false;
  bool fiftythree = false;

  factory Data() {
    return _data;
  }

  reset() {
    fireSafetyController.text = "";
    signsAndPostingsController.text = "";
    chemicalHygieneController.text = "";
    labPracticesController.text = "";
    chemicalUseController.text = "";
    safetyEquipmentController.text = "";
    hazardousWasteController.text = "";
    personalProtectionController.text = "";
    imageAsBytesList = [];
    signature = Uint8List(0);
    faculty = "";
    date = "";
    room = "";
    inspector = "";
    department = "";
    phone = "";
    commentsFireSafety = "";
    commentsSignsAndPostings = "";
    commentsChemicalHygiene = "";
    commentsLabPractices = "";
    commentsChemicalUse = "";
    commentsSafetyEquipment = "";
    commentsHazardousWaste = "";
    commentsPersonalProtection = "";
    one = false;
    two = false;
    three = false;
    four = false;
    five = false;
    six = false;
    seven = false;
    eight = false;
    nine = false;
    ten = false;
    eleven = false;
    twelve = false;
    thirteen = false;
    fourteen = false;
    fifteen = false;
    sixteen = false;
    seventeen = false;
    eighteen = false;
    eighteenA = false;
    eighteenB = false;
    nineteen = false;
    twenty = false;
    twentyone = false;
    twentytwo = false;
    twentythree = false;
    twentyfour = false;
    twentyfive = false;
    twentysix = false;
    twentyseven = false;
    twentyeight = false;
    twentynine = false;
    thirty = false;
    thirtyone = false;
    thirtytwo = false;
    thirtythree = false;
    thirtythreeA = false;
    thirtythreeB = false;
    thirtythreeC = false;
    thirtyfour = false;
    thirtyfive = false;
    thirtysix = false;
    thirtyseven = false;
    thirtyeight = false;
    thirtynine = false;
    forty = false;
    fortyA = false;
    fortyB = false;
    fortyone = false;
    fortytwo = false;
    fortythree = false;
    fortyfour = false;
    fortyfourA = false;
    fortyfourB = false;
    fortyfourC = false;
    fortyfourD = false;
    fortyfive = false;
    fortyfiveA = false;
    fortyfiveB = false;
    fortysix = false;
    fortysixA = false;
    fortysixB = false;
    fortysixC = false;
    fortyseven = false;
    fortysevenA = false;
    fortysevenB = false;
    fortysevenC = false;
    fortysevenD = false;
    fortyeight = false;
    fortyeightA = false;
    fortyeightB = false;
    fortyeightC = false;
    fortynine = false;
    fortynineA = false;
    fortynineB = false;
    fifty = false;
    fiftyone = false;
    fiftytwo = false;
    fiftythree = false;
  }

  Data._internal();
}

var data = Data();
