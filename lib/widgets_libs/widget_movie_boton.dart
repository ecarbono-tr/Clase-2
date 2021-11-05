import 'package:flutter/material.dart';
import 'package:proyecto_1/model/movie.dart';
import 'package:proyecto_1/widgets_libs/widget_pe_directo.dart';

class MovieBoton extends StatelessWidget {
  final Movie? movie;
  const MovieBoton({this.movie, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16, right: 16, top: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MovieDirector(
            label: 'Director: ',
            movie: movie!.directors,
          ),
          MovieDirector(label: 'Escritores: ', movie: movie!.writers),
          MovieDirector(label: 'Actores: ', movie: movie!.actors),
        ],
      ),
    );
  }
}
