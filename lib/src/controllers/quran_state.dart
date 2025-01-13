import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../models/quran_fonts_model/surahs_model.dart';

class QuranState {
  /// -------- [Variables] ----------
  List<SurahFontsModel> surahs = [];
  List<List<AyahFontsModel>> pages = [];
  List<AyahFontsModel> allAyahs = [];

  /// Page Controller
  PageController quranPageController = PageController();

  RxInt currentPageNumber = 1.obs;
  RxInt lastReadSurahNumber = 1.obs;
  var selectedAyahIndexes = <int>[].obs;
  bool isSelected = false;
  final ScrollController scrollIndicatorController = ScrollController();
  final ScrollController ayahsScrollController = ScrollController();
  RxInt selectedIndicatorIndex = 0.obs;
  // PreferDirection preferDirection = PreferDirection.topCenter;
  RxDouble textWidgetPosition = (-240.0).obs;
  RxBool isPlayExpanded = false.obs;
  RxBool isSajda = false.obs;
  RxInt isPages = 0.obs;
  RxInt isBold = 0.obs;
  RxBool isMoreOptions = false.obs;
  var moreOptionsMap = <String, bool>{}.obs;
  RxInt selectMushafSettingsPage = 0.obs;
  RxDouble ayahsWidgetHeight = 0.0.obs;
  RxInt currentListPage = 1.obs;
  RxDouble scaleFactor = 1.0.obs;
  RxDouble baseScaleFactor = 1.0.obs;
  final box = GetStorage();
  int? lastDisplayedHizbQuarter;
  Map<int, int> pageToHizbQuarterMap = {};

  double surahItemHeight = 90.0;
  ScrollController? surahController;
  ScrollController? juzListController;
  RxBool isPageMode = false.obs;

  RxBool isScrolling = false.obs;
  bool isQuranLoaded = false;
  // RxBool isFontsDownloaded = false.obs;
  RxBool isDownloadingFonts = false.obs;
  RxBool isDownloadedV2Fonts = false.obs;
  RxDouble fontsDownloadProgress = 0.0.obs;
  RxInt selectedAyahNumber = 0.obs;
  RxInt selectedSurahNumber = 0.obs;
}
