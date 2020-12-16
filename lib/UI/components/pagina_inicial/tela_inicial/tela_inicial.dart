import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:obstetricia/UI/components/amamentacao/amamentacao.dart';
import 'package:obstetricia/UI/components/anticoncepcao/anticoncepcao.dart';
import 'package:obstetricia/UI/components/cuidados/cuidados.dart';
import 'package:obstetricia/UI/components/pagina_inicial/controle_de_gestacao.dart/controle_de_gestacao.dart';
import 'package:obstetricia/UI/components/parto/parto.dart';
import 'package:obstetricia/UI/components/pre_natal/pre_natal.dart';
import 'package:obstetricia/UI/components/vacinacao/vacinacao.dart';

class TelaInicial extends StatefulWidget {
  @override
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 255, 70, 70),
              Color.fromRGBO(255, 180, 180, 1.0)
            ],
          )),
        ),
        CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              actions: <Widget>[
                Padding(
                    padding: EdgeInsets.only(right: 8),
                    child: IconButton(
                      icon: Icon(Icons.person_outline),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ControleGestacao()));
                      },
                    ))
              ],
              floating: true,
              snap: true,
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              flexibleSpace: FlexibleSpaceBar(
                title: const Text("Obstetrícia"),
                centerTitle: true,
              ),
            ),
            SliverStaggeredGrid.count(
              crossAxisCount: 4,
              mainAxisSpacing: 6.0,
              crossAxisSpacing: 6.0,
              staggeredTiles: [
                StaggeredTile.count(2, 4),
                StaggeredTile.count(2, 2),
                StaggeredTile.count(2, 2),
                StaggeredTile.count(4, 1),
                StaggeredTile.count(4, 1),
                StaggeredTile.count(4, 1),
              ],
              children: <Widget>[
                Material(
                  color: Colors.lightBlue,
                  child: InkWell(
                    child: Hero(
                      tag: "cuidados",
                      child: Center(
                        child: const Text(
                          "Cuidados",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Bebas Neue',
                              fontSize: 30,
                              color: Colors.white,
                              decoration: TextDecoration.none),
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Cuidados()));
                    },
                  ),
                ),
                Material(
                  color: Colors.pinkAccent,
                  child: InkWell(
                    child: Hero(
                      tag: "pre-natal",
                      child: Center(
                        child: const Text(
                          "Pré Natal",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Bebas Neue',
                              fontSize: 30,
                              color: Colors.white,
                              decoration: TextDecoration.none),
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => PreNatal()));
                    },
                  ),
                ),
                Material(
                  color: Colors.purpleAccent,
                  child: InkWell(
                    child: Hero(
                      tag: "parto",
                      child: Center(
                        child: const Text(
                          "Parto",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Bebas Neue',
                              fontSize: 30,
                              color: Colors.white,
                              decoration: TextDecoration.none),
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Parto()));
                    },
                  ),
                ),
                Material(
                  color: Colors.yellow,
                  child: InkWell(
                    child: Hero(
                      tag: "anticoncepcao",
                      child: Center(
                        child: const Text(
                          "Anticoncepção",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Bebas Neue',
                              fontSize: 30,
                              color: Colors.white,
                              decoration: TextDecoration.none),
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Anticoncepcao()));
                    },
                  ),
                ),
                Material(
                  color: Colors.deepOrange,
                  child: InkWell(
                    child: Hero(
                      tag: "vacinacao",
                      child: Center(
                        child: const Text(
                          "Vacinação",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Bebas Neue',
                              fontSize: 30,
                              color: Colors.white,
                              decoration: TextDecoration.none),
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Vacinacao()));
                    },
                  ),
                ),
                Material(
                  color: Colors.green,
                  child: InkWell(
                    child: Hero(
                      tag: "amamentacao",
                      child: Center(
                        child: const Text(
                          "Amamentação",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Bebas Neue',
                              fontSize: 30,
                              color: Colors.white,
                              decoration: TextDecoration.none),
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Amamentacao()));
                    },
                  ),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
