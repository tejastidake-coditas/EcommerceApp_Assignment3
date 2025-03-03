import 'package:ecommerceapp_assignment3/presentation/widgets/build_app_bar.dart';
import 'package:ecommerceapp_assignment3/presentation/widgets/listing_layout.dart';
import 'package:flutter/material.dart';

import '../../core/constants/strings.dart';
import '../../core/constants/text_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: AppStrings.tabs.length,
      child: Scaffold(
        appBar: buildAppBar(Colors.black, Colors.white, context),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(AppStrings.womenCategory, style: AppTextStyles.category),
              ),
              TabBar(
                labelStyle: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Colors.black87),
                unselectedLabelColor: Colors.black38,
                dividerColor: Colors.transparent,
                indicator: UnderlineTabIndicator(
                    insets: EdgeInsets.only(right: 32),
                    borderSide: BorderSide(width: 2.4)),
                tabs: AppStrings.tabs.map((title) => Tab(text: title)).toList(),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    const ListingLayout(),
                    for (int i = 1; i < AppStrings.tabs.length; i++)
                      Center(child: Text(AppStrings.tabs[i])),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
