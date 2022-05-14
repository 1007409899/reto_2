import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:provider/provider.dart';
import 'package:reto_2/viewmodels/catalog.dart';

class ViewCar extends StatelessWidget {
  const ViewCar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final catalogInfo(index)= Provider.of<Catalog>(context).products[index].image;
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              foregroundColor: Colors.white,
              backgroundColor: Color.fromARGB(207, 238, 22, 7),
              shadowColor: Color.fromARGB(255, 172, 166, 166),
              title: Text("Cars"),
            ),
            drawer: Drawer(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 55,
              backgroundColor: Color.fromARGB(255, 36, 177, 212),
            ),
            body: Container(
                padding: EdgeInsets.all(19), child: galeria(context))));
  }

  galeria(BuildContext context) {
    return GridView.custom(
      gridDelegate: SliverWovenGridDelegate.count(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        pattern: [
          WovenGridTile(1),
          const WovenGridTile(
            5 / 7,
            crossAxisRatio: 0.9,
            alignment: AlignmentDirectional.centerEnd,
          ),
        ],
      ),
      childrenDelegate: SliverChildBuilderDelegate(
        (context, index) => Tile(
          index: index,
        ),
        childCount: Provider.of<Catalog>(context).products.length,
      ),
    );
  }

  Tile({index}) {
    return Consumer<Catalog>(builder: (context, Catalog dataimc, child) {
      return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/second');
        },
        child: Hero(
          tag: dataimc.products[index].image,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Stack(
              children: [
                Positioned(
                  top: 1,
                  left: 1,
                  right: 1,
                  bottom: 1,
                  child: FadeInImage(
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                    placeholder: AssetImage("assets/images/loading.gif"),
                    image: NetworkImage(dataimc.products[index].image),
                  ),
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
