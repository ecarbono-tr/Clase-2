import 'package:flutter/material.dart';
import 'package:proyecto_1/model/movie.dart';
import 'package:proyecto_1/widgets_libs/widget_movie_boton.dart';
import 'package:proyecto_1/widgets_libs/widget_movie_midle.dart';
import 'package:proyecto_1/widgets_libs/widget_movie_top.dart';

void main() => runApp(ScreanPeli());

class ScreanPeli extends StatelessWidget {
  final Movie movie = hercules;
  ScreanPeli({movie,Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MovieTop(movie: movie),
        MovieMidle(movie: movie),
        MovieBoton(movie: movie),
      ],
    );
  }
}
