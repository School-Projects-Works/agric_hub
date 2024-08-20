import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';
import '../../../config/router/router.dart';
import '../../../config/router/router_info.dart';
import '../../../core/widget/app_bar_item.dart';
import '../../../core/widget/custom_dialog.dart';
import '../../../generated/assets.dart';
import '../../../utils/colors.dart';
import '../../auth/provider/login_provider.dart';
import '../components/side_bar.dart';
import '../provider/orders_provider.dart';
import '../provider/products_provider.dart';

class MainContainer extends ConsumerWidget {
  const MainContainer({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var breakPoint = ResponsiveBreakpoints.of(context);
    var ordersStream = ref.watch(orderStreamProvider);
    var productsStream = ref.watch(dashboardProductStreamProvider);
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: primaryColor,
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications, color: Colors.white),
              ),
              const SizedBox(width: 10),
              PopupMenuButton(
                  color: primaryColor,
                  offset: const Offset(0, 70),
                  child: CircleAvatar(
                    backgroundColor: secondaryColor,
                    backgroundImage: () {
                      var user = ref.watch(userProvider);
                      if (user.profileImage == null) {
                        return AssetImage(
                          user.gender == 'Male'
                              ? Assets.imagesMale
                              : Assets.imagesFemale,
                        );
                      } else {
                        NetworkImage(user.profileImage!);
                      }
                    }(),
                  ),
                  itemBuilder: (context) {
                    return [
                      PopupMenuItem(
                        child: BarItem(
                            padding: const EdgeInsets.only(
                                right: 40, top: 10, bottom: 10, left: 10),
                            icon: Icons.home,
                            title: 'Home Page',
                            onTap: () {
                              MyRouter(context: context, ref: ref)
                                  .navigateToRoute(RouterInfo.homeRoute);
                              Navigator.of(context).pop();
                            }),
                      ),
                      PopupMenuItem(
                        child: BarItem(
                            padding: const EdgeInsets.only(
                                right: 40, top: 10, bottom: 10, left: 10),
                            icon: Icons.logout,
                            title: 'Logout',
                            onTap: () {
                              CustomDialog.showInfo(
                                message: 'Are you sure you want to logout?',
                                buttonText: 'Logout',
                                onPressed: () {
                                  ref
                                      .read(loginProvider.notifier)
                                      .signOut(context: context, ref: ref);
                                  Navigator.of(context).pop();
                                },
                              );
                            }),
                      ),
                    ];
                  }),
              const SizedBox(width: 10),
            ],
            title: Row(
              children: [
                Image.asset(
                  Assets.imagesIcon,
                  height: 40,
                ),
                const SizedBox(width: 10),
                if (breakPoint.smallerOrEqualTo(TABLET))
                  //manu button
                  PopupMenuButton(
                      color: primaryColor,
                      offset: const Offset(0, 70),
                      itemBuilder: (context) {
                        return [
                          PopupMenuItem(
                            child: BarItem(
                                padding: const EdgeInsets.only(
                                    right: 40, top: 10, bottom: 10, left: 10),
                                icon: Icons.dashboard,
                                title: 'Dashboard',
                                onTap: () {
                                  MyRouter(context: context, ref: ref)
                                      .navigateToRoute(
                                          RouterInfo.dashboardRoute);
                                  Navigator.of(context).pop();
                                }),
                          ),
                          PopupMenuItem(
                            child: BarItem(
                                padding: const EdgeInsets.only(
                                    right: 40, top: 10, bottom: 10, left: 10),
                                icon: Icons.local_hospital,
                                title: 'Products',
                                onTap: () {
                                  MyRouter(context: context, ref: ref)
                                      .navigateToRoute(RouterInfo.productRoute);
                                  Navigator.of(context).pop();
                                }),
                          ),
                          PopupMenuItem(
                            child: BarItem(
                                padding: const EdgeInsets.only(
                                    right: 40, top: 10, bottom: 10, left: 10),
                                icon: Icons.person,
                                title: 'Orders',
                                onTap: () {
                                  MyRouter(context: context, ref: ref)
                                      .navigateToRoute(RouterInfo.ordersRoute);
                                  Navigator.of(context).pop();
                                }),
                          ),
                          PopupMenuItem(
                            child: BarItem(
                                padding: const EdgeInsets.only(
                                    right: 40, top: 10, bottom: 10, left: 10),
                                icon: Icons.person,
                                title: 'Profile',
                                onTap: () {
                                  MyRouter(context: context, ref: ref)
                                      .navigateToRoute(RouterInfo.profileRoute);
                                  Navigator.of(context).pop();
                                }),
                          ),
                        ];
                      },
                      child: const Icon(
                        Icons.menu,
                        color: Colors.white,
                      )),
              ],
            ),
          ),
          body: breakPoint.smallerOrEqualTo(TABLET)
              ? child
              : Row(
                  children: [
                    const SideBar(),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: Container(
                            color: Colors.grey[100],
                            padding: const EdgeInsets.all(10),
                            child: productsStream.when(
                                data: (products) {
                                  return ordersStream.when(
                                      data: (orders) {
                                        return child;
                                      },
                                      error: (error, stack) {
                                        return Center(
                                            child: Text(error.toString()));
                                      },
                                      loading: () => const Center(
                                          child: CircularProgressIndicator()));
                                },
                                error: (error, stack) {
                                  return Center(child: Text(error.toString()));
                                },
                                loading: () => const Center(
                                    child: CircularProgressIndicator())))),
                  ],
                )),
    );
  }
}
