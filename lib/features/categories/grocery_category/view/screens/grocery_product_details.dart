import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:talabat/core/manager/assets_manager.dart';
import 'package:talabat/core/shared/widgets/custom_button.dart';
import 'package:talabat/core/styles/app_color.dart';
import 'package:talabat/core/styles/app_font.dart';

class GroceryProductDetailsScreen extends StatelessWidget {
  const GroceryProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              Image.asset(
                ImageAssetsManager.remasProduct,
                height: screenSize.height * .4,
                width: screenSize.width,
                fit: BoxFit.fill,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.close,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: screenSize.height * .02,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenSize.width * .04,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'New Year Offer',
                  style: AppFont.getTitleSmallFont(
                    context,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: screenSize.height * .02,
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laboru',
                  maxLines: 10,
                  style: AppFont.getCaptionFont(
                    context,
                    fontWeight: FontWeight.bold,
                    fontColor: Colors.black.withOpacity(.6),
                  ),
                ),
                SizedBox(
                  height: screenSize.height * .02,
                ),
                Text(
                  'EGP 120.00',
                  style: AppFont.getSubtitle1(
                    context,
                  ),
                ),
                SizedBox(
                  height: screenSize.height * .01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: const Offset(
                              0,
                              2,
                            ), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          right: 10,
                          left: 10,
                          top: 5,
                          bottom: 5,
                        ),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: const Icon(
                                Icons.remove,
                                color: AppColor.primary,
                                size: 17,
                              ),
                            ),
                            SizedBox(
                              width: screenSize.width * 0.02,
                            ),
                            Text(
                              '1',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: screenSize.width * 0.05,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              width: screenSize.width * 0.02,
                            ),
                            InkWell(
                              onTap: () {},
                              child: const Icon(
                                Icons.add,
                                color: AppColor.primary,
                                size: 17,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenSize.height * .02,
                ),
                CustomButton(
                  text: 'Add to basket',
                ),
                SizedBox(
                  height: screenSize.height * .02,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
