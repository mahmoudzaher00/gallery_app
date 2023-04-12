// import 'dart:ui';
//
// import 'package:flutter/material.dart';
// import 'package:power_maas/core/resources/color_manager.dart';
// import 'package:power_maas/core/resources/constants_manager.dart';
// import 'package:power_maas/core/utils/size_config.dart';
//
// import '../resources/values_manager.dart';
//
// customAlertDialog({
//   required BuildContext context,
//   TextStyle? titleTextStyle ,
//   String? titleText,
//   double? alertDialogHeight,
//   double? height,
//   Widget? imageOrIconWidget,
//   Widget? customWidget,
// })
// {
//   showGeneralDialog(
//       barrierColor: Colors.black.withOpacity(0.5),
//       transitionBuilder: (context, a1, a2, widget) {
//         return  Transform.scale(
//           scale: a1.value,
//           child: BackdropFilter(
//             filter: ImageFilter.blur(
//               sigmaX: 1.0,
//               sigmaY: 1.0,
//             ),
//             child: AlertDialog(
//               alignment: Alignment.bottomCenter,
//                 insetPadding: EdgeInsets.zero,
//                 contentPadding: EdgeInsets.zero,
//                 shape: const RoundedRectangleBorder(
//                     borderRadius: BorderRadius.only(
//                         topRight: Radius.circular(AppSize.s24),
//                         topLeft:  Radius.circular(AppSize.s24),
//                     )
//                 ),
//                 content:SizedBox(
//                   height: alertDialogHeight??AppSize.s171,
//                   width:  MediaQuery.of(context).size.width,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Container(
//                         height: AppSize.s4,
//                         width: SizeConfig.screenWidth!*0.3,
//                         decoration: BoxDecoration(
//                           color: ColorManager.secondaryOrange,
//                           borderRadius: BorderRadius.circular(AppSize.s8)
//                         ),
//
//                       ),
//                       Stack(
//                         alignment: AlignmentDirectional.centerEnd,
//                         children: [
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Text(titleText??'',style:titleTextStyle??Theme.of(context).textTheme.displayLarge!.copyWith(color: ColorManager.black) ,),
//                             ],
//                           ),
//                           IconButton(
//                                   onPressed: ()=>Navigator.pop(context),
//                                   icon: const Icon(Icons.cancel,color: ColorManager.secondaryOrange,)
//                               )
//                         ],
//
//                       ),
//                       imageOrIconWidget==null?const SizedBox.shrink():const SizedBox(height: AppSize.s18,),
//                       imageOrIconWidget??const SizedBox(),
//                       SizedBox(height:height?? AppSize.s20,),
//                       customWidget??const SizedBox(),
//
//
//                     ],
//                   ),
//                 )
//             ),
//           ),
//         );},
//       transitionDuration: const Duration(milliseconds: AppConstants.dialogAnimationTime),
//       barrierDismissible: true,
//       barrierLabel: '',
//       context: context,
//       pageBuilder: (context, animation1, animation2) {
//         return const SizedBox();
//       });
//
//
// }
//
