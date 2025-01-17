import 'package:flutter/material.dart';
import 'package:talabat/core/manager/assets_manager.dart';
import 'package:talabat/core/styles/app_color.dart';
import 'package:talabat/core/styles/app_font.dart';

class TopSaversSectionMart extends StatelessWidget {
  const TopSaversSectionMart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: screenSize.width * .04,
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Top savers',
                style: AppFont.getTitleSmallFont(
                  context,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              const Icon(
                Icons.arrow_forward,
                color: AppColor.primary,
              ),
            ],
          ),
          SizedBox(
            height: screenSize.height * .02,
          ),
          SizedBox(
            height: screenSize.height * .23,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(
                            .1,
                          ),
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                        ),
                        child: Image.asset(
                          ImageAssetsManager.kiriProduct,
                          width: screenSize.width * .22,
                          height: screenSize.width * .22,
                        ),
                      ),
                      Card(
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                              10,
                            ),
                          ),
                          child: const Icon(
                            Icons.add,
                            color: AppColor.primary,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenSize.height * .01,
                  ),
                  SizedBox(
                    width: screenSize.width * .22,
                    child: Text(
                      'Kiri Creamy Tub Cheese 200 grame',
                      maxLines: 2,
                      style: AppFont.getCaptionFont(context,
                          height: 1.2,
                          fontColor: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    width: screenSize.width * .22,
                    child: Text(
                      'EGP 19.99',
                      maxLines: 2,
                      style: AppFont.getCaptionFont(
                        context,
                        height: 1.2,
                        fontColor: AppColor.primary,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height * .004,
                  ),
                  SizedBox(
                    width: screenSize.width * .22,
                    child: Text(
                      'EGP 28.99',
                      maxLines: 2,
                      style: AppFont.getCaptionFont(
                        context,
                        height: 1.2,
                        //  fontColor: AppColor.primary,
                        fontSize: 14,
                        decoration: TextDecoration.lineThrough,
                        //   fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              separatorBuilder: (context, index) => SizedBox(
                width: screenSize.width * .03,
              ),
              itemCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}
