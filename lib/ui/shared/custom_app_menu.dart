

import 'package:flutter/material.dart';
import 'package:flutter_web_app/locator.dart';
import 'package:flutter_web_app/services/navigation_services.dart';
import 'package:flutter_web_app/ui/shared/custom_flat_button.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ( _ , constraints) {
        return (constraints.maxWidth > 520)
                ? const _TabletDesktopMenu() 
                : const _MobileMenu();
      },
    );
  }
}

class _TabletDesktopMenu extends StatelessWidget {
  const _TabletDesktopMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.lightBlue,
      height: 50,
      child: Row(
        children: [
          CustomFlatButton(
            text: '</FW>', 
            color: Colors.white, 
            // onPressed: () => Navigator.pushNamed(context, '/')
            // onPressed: () => navigationService.navigateTo('/')
            onPressed: () => locator<NavigationService>().navigateTo('/')
          ),
          const SizedBox(width: 20),
          CustomFlatButton(
            text: 'Counter Stateful', 
            color: Colors.white, 
            // onPressed: () => Navigator.pushNamed(context, '/stateful')
            // onPressed: () => navigationService.navigateTo('/stateful')
            onPressed: () => locator<NavigationService>().navigateTo('/stateful')
          ),
          const SizedBox(width: 5),
          CustomFlatButton(
            text: 'Counter provider', 
            color: Colors.white, 
            // onPressed: () => Navigator.pushNamed(context, '/provider')
            // onPressed: () => navigationService.navigateTo('/provider')
            onPressed: () => locator<NavigationService>().navigateTo('/provider')
          ),
          const SizedBox(width: 5),
          CustomFlatButton(
            text: 'Otra página', 
            color: Colors.white, 
            // onPressed: () => Navigator.pushNamed(context, '/Asd123')
            // onPressed: () => navigationService.navigateTo('/Adasd')
            onPressed: () => locator<NavigationService>().navigateTo('/Asd123')
          )
        ],
      ),
    );
  }
}
class _MobileMenu extends StatelessWidget {
  const _MobileMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.lightBlue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomFlatButton(
            text: '</FW>', 
            color: Colors.white, 
            onPressed: () => locator<NavigationService>().navigateTo('/')
          ),
          const SizedBox(width: 20),
          CustomFlatButton(
            text: 'Counter Stateful', 
            color: Colors.white, 
            onPressed: () => locator<NavigationService>().navigateTo('/stateful')
          ),
          const SizedBox(width: 5),
          CustomFlatButton(
            text: 'Counter provider', 
            color: Colors.white, 
            onPressed: () => locator<NavigationService>().navigateTo('/provider')
          ),
          const SizedBox(width: 5),
          CustomFlatButton(
            text: 'Otra página', 
            color: Colors.white, 
            onPressed: () => locator<NavigationService>().navigateTo('/Asd123')
          )
        ],
      ),
    );
  }
}