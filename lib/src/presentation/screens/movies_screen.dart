import 'package:flutter/material.dart';
import 'package:migliori_film/src/core/app_color.dart';
import 'package:migliori_film/src/presentation/widgets/title_widget.dart';
import '../../data/data sources/remote/remote_data_source.dart';
import '../../data/models/movies_model.dart';
import 'detiels_screen.dart';

class MoviesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Movies>>(
        future: getRequest(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            return SafeArea(
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Image.network(snapshot.data![0].images![2]),
                      TitleWidget(),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 18, vertical: 20),
                        child: GridView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            // Number of columns in the grid
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 10,
                          ),
                          itemCount: 10,
                          // Number of elements in the grid
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => DetailsScreen(
                                          title: snapshot.data![index].title,
                                          year: snapshot.data![index].year,
                                          genre: snapshot.data![index].genre,
                                          plot: snapshot.data![index].plot,
                                          img: snapshot.data![index].images![3],
                                          img2: snapshot.data![index].images![2],
                                      ),
                                    ));
                              },
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: NetworkImage(snapshot
                                                  .data![index].images![0])),
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(20),
                                              topRight: Radius.circular(20))),
                                    ),
                                    flex: 2,
                                  ),
                                  Expanded(
                                      child: Container(
                                    child: Column(
                                      children: [
                                        Text(snapshot.data![index].title),
                                        Text(snapshot.data![index].year),
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                        color: AppColors.elmColor,
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(20),
                                            bottomRight: Radius.circular(20))),
                                    width: double.infinity,
                                  ))
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
