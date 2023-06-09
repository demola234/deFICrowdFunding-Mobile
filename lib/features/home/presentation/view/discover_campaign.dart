part of '../_home.dart';

class DiscoverCampaign extends StatelessWidget {
  const DiscoverCampaign({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          VerticalMargin(20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    AppTexts.discoverCampaign,
                    style: TextStyle(
                        color: AppColors.black100,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          VerticalMargin(20),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            height: 100,
            width: context.screenWidth(),
            child: AnimationLimiter(
              child: ListView.builder(
                  itemCount: 8,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return AnimationConfiguration.staggeredList(
                        position: index,
                        duration: const Duration(milliseconds: 200),
                        child: FadeIn(
                            delay: Duration(milliseconds: 50),
                            // curve: Curves.easeOutQuint,
                            // horizontalOffset: 30,
                            // verticalOffset: 50.0,
                            child: FlipAnimation(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15.0),
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColors.grey200.withOpacity(0.5),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: SvgPicture.asset(
                                          AppIcons.education,
                                          color: AppColors.black100,
                                          height: 20,
                                          width: 20),
                                    ),
                                  ),
                                ),
                                VerticalMargin(5),
                                Text(
                                  AppTexts.education,
                                  style: Config.b1(context).copyWith(
                                    color: AppColors.grey100,
                                    fontSize: 10,
                                  ),
                                )
                              ],
                            ))));
                  }),
            ),
          )
        ],
      ),
    );
  }
}
