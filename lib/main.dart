import 'package:flutter/material.dart';
import 'package:flutter_app_hellow/widget/study_Align.dart';
import 'package:flutter_app_hellow/widget/study_AnimatedPadding.dart';
import 'package:flutter_app_hellow/widget/study_AnimatedSwitcher.dart';
import 'package:flutter_app_hellow/widget/study_AppBar.dart';
import 'package:flutter_app_hellow/widget/study_AssetsImage.dart';
import 'package:flutter_app_hellow/widget/study_BottomAppBar.dart';
import 'package:flutter_app_hellow/widget/study_BottomNavigationBar.dart';
import 'package:flutter_app_hellow/widget/study_BoxDecoration.dart';
import 'package:flutter_app_hellow/widget/study_ButtonBar.dart';
import 'package:flutter_app_hellow/widget/study_Card.dart';
import 'package:flutter_app_hellow/widget/study_CheckBox.dart';
import 'package:flutter_app_hellow/widget/study_CheckBoxListTitle.dart';
import 'package:flutter_app_hellow/widget/study_CheckPopupMenuItem.dart';
import 'package:flutter_app_hellow/widget/study_Chip.dart';
import 'package:flutter_app_hellow/widget/study_ConstrainedBox.dart';
import 'package:flutter_app_hellow/widget/study_Container.dart';
import 'package:flutter_app_hellow/widget/study_DatePicker.dart';
import 'package:flutter_app_hellow/widget/study_DecorationImage.dart';
import 'package:flutter_app_hellow/widget/study_Dialog.dart';
import 'package:flutter_app_hellow/widget/study_DropDownMenu.dart';
import 'package:flutter_app_hellow/widget/study_DropDownMenuItem.dart';
import 'package:flutter_app_hellow/widget/study_Expanded.dart';
import 'package:flutter_app_hellow/widget/study_Filemage.dart';
import 'package:flutter_app_hellow/widget/study_FittedBox.dart';
import 'package:flutter_app_hellow/widget/study_FlexiableSpaceBar.dart';
import 'package:flutter_app_hellow/widget/study_FloatingActionButton.dart';
import 'package:flutter_app_hellow/widget/study_GridTitle.dart';
import 'package:flutter_app_hellow/widget/study_GridView.dart';
import 'package:flutter_app_hellow/widget/study_Icon.dart';
import 'package:flutter_app_hellow/widget/study_IconButton.dart';
import 'package:flutter_app_hellow/widget/study_IconData.dart';
import 'package:flutter_app_hellow/widget/study_IconTheme.dart';
import 'package:flutter_app_hellow/widget/study_Image.dart';
import 'package:flutter_app_hellow/widget/study_IndexStack.dart';
import 'package:flutter_app_hellow/widget/study_ListBody.dart';
import 'package:flutter_app_hellow/widget/study_ListView.dart';
import 'package:flutter_app_hellow/widget/study_OutlineButton.dart';
import 'package:flutter_app_hellow/widget/study_Padding.dart';
import 'package:flutter_app_hellow/widget/study_PageView.dart';
import 'package:flutter_app_hellow/widget/study_PopupMenuButton.dart';
import 'package:flutter_app_hellow/widget/study_ProgressIndicator.dart';
import 'package:flutter_app_hellow/widget/study_Radio.dart';
import 'package:flutter_app_hellow/widget/study_RadioListTitle.dart';
import 'package:flutter_app_hellow/widget/study_RaiseButton.dart';
import 'package:flutter_app_hellow/widget/study_RawMaterButton.dart';
import 'package:flutter_app_hellow/widget/study_RichText.dart';
import 'package:flutter_app_hellow/widget/study_RotateBox.dart';
import 'package:flutter_app_hellow/widget/study_Row.dart';
import 'package:flutter_app_hellow/widget/study_Scanffold.dart';
import 'package:flutter_app_hellow/widget/study_SizeBox.dart';
import 'package:flutter_app_hellow/widget/study_Slider.dart';
import 'package:flutter_app_hellow/widget/study_SliderThemme.dart';
import 'package:flutter_app_hellow/widget/study_SliverAppBar.dart';
import 'package:flutter_app_hellow/widget/study_SnackBar.dart';
import 'package:flutter_app_hellow/widget/study_Stack.dart';
import 'package:flutter_app_hellow/widget/study_Switch.dart';
import 'package:flutter_app_hellow/widget/study_SwitchListTitle.dart';
import 'package:flutter_app_hellow/widget/study_TabBar.dart';
import 'package:flutter_app_hellow/widget/study_Table.dart';
import 'package:flutter_app_hellow/widget/study_Text.dart';
import 'package:flutter_app_hellow/widget/study_TextFiled.dart';
import 'package:flutter_app_hellow/widget/study_widget_lifecycle.dart';

import 'actualCombatProject/navigator/tab_navigator.dart';
import 'actualCombatProject/photo_app.dart';
import 'app_Lifecycle.dart';


void main() {
  runApp(AppTrip());
}

class AppTrip extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterTrip ',
      home: TabNavicator(),
    );
  }
}
