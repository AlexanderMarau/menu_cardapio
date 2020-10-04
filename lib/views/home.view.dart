import 'package:flutter/material.dart';
import 'package:menu_ifood/views/aperitivos.view.dart';
import 'package:menu_ifood/views/bebidas.view.dart';
import 'package:menu_ifood/views/lanches.view.dart';
import 'package:menu_ifood/views/sobremesas.view.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selectedPage;
  int menuSeleted;
  PageController _pageController = new PageController();
  ScrollController _scrollController = new ScrollController();

  List<String> itensMenu = ['Lanches', 'Bebidas', 'Aperitivos', 'Sobremesas'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Cardápio'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 80,
              child: menuCardapio(),
            ),
            Expanded(
              child: buildPageView(),
            )
          ],
        ),
      ),
    );
  }

  buildPageView() {
    return PageView(
      scrollDirection: Axis.vertical,
      pageSnapping: true,
      physics: BouncingScrollPhysics(),
      controller: _pageController,
      children: [
        LanchesView(),
        BebidasView(),
        AperitivosView(),
        SobremesasView(),
      ],
      onPageChanged: (value) {
        setState(() {
          selectedPage = value;
          _scrollController.jumpTo(_scrollController.offset);
        });
      },
    );
  }

  menuCardapio() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      controller: _scrollController,
      itemCount: itensMenu.length,
      itemBuilder: (BuildContext context, int index) {
        return itemMenuWidget(
          index,
          itensMenu[index],
        );
      },
    );
  }

  itemMenuWidget(int index, String title) {
    return FlatButton(
      onPressed: () {
        menuSeleted = index;
        _pageController.animateToPage(
          menuSeleted,
          curve: Curves.easeIn,
          duration: Duration(milliseconds: 500),
        );
      },
      child: Text(
        title,
        style: TextStyle(
          color: index == selectedPage
              ? Theme.of(context).primaryColor
              : Colors.black,
          fontSize: 18,
          fontWeight: index == selectedPage ? FontWeight.bold : FontWeight.w100,
          decoration: index == selectedPage
              ? TextDecoration.underline
              : TextDecoration.none,
        ),
      ),
    );
  }
}
