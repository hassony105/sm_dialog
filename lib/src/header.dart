import 'package:flutter/material.dart';
import 'package:sm_dialog/sm_dialog.dart';
import 'package:sm_dialog/src/anims/rive_anim.dart';

///Header of the [SMDialog]
class SMDialogHeader extends StatelessWidget {
  ///Constructor of the [SMDialogHeader]
  const SMDialogHeader({
    required this.dialogType,
    required this.loop,
    Key? key,
  }) : super(key: key);

  ///Defines the type of [SMDialogHeader]
  final DialogType dialogType;

  ///Defines if the animation loops or not
  final bool loop;

  @override
  Widget build(BuildContext context) {
    switch (dialogType) {
      case DialogType.info:
        return RiveAssetAnimation(
          assetPath: 'packages/sm_dialog/assets/rive/info.riv',
          animName: loop ? 'appear_loop' : 'appear',
        );
      case DialogType.infoReverse:
        return RiveAssetAnimation(
          assetPath: 'packages/sm_dialog/assets/rive/info_reverse.riv',
          animName: loop ? 'appear_loop' : 'appear',
        );

      case DialogType.question:
        return RiveAssetAnimation(
          assetPath: 'packages/sm_dialog/assets/rive/question.riv',
          animName: loop ? 'appear_loop' : 'appear',
        );
      case DialogType.warning:
        return RiveAssetAnimation(
          assetPath: 'packages/sm_dialog/assets/rive/warning.riv',
          animName: loop ? 'appear_loop' : 'appear',
        );
      case DialogType.error:
        return RiveAssetAnimation(
          assetPath: 'packages/sm_dialog/assets/rive/error.riv',
          animName: loop ? 'appear_loop' : 'appear',
        );
      case DialogType.success:
        return RiveAssetAnimation(
          assetPath: 'packages/sm_dialog/assets/rive/success.riv',
          animName: loop ? 'appear_loop' : 'appear',
        );
      case DialogType.noHeader:
        return const SizedBox.shrink();
    }
  }
}
