import 'package:flutter/material.dart';
import 'package:movie_app/presentation/pages/detail/detail_view_model.dart';
import 'package:movie_app/presentation/pages/detail/widgets/movie_sub_info.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DetailPage extends ConsumerStatefulWidget {
  final int id;
  const DetailPage(this.id, {super.key});

  @override
  ConsumerState<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends ConsumerState<DetailPage> {
  @override
  void initState() {
    super.initState();
    // 영화 세부 정보를 가져옵니다.
    ref.read(detailpageViewModel.notifier).fetchMovieDetail(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    print(widget.id);
    return Scaffold(
      body: Consumer(
        builder: (context, ref, child) {
          final movieInfo = ref.watch(detailpageViewModel);
          return ListView(
            children: [
              Hero(
                tag: 'main-image',
                child: AspectRatio(
                  aspectRatio: 2 / 3,
                  child: Image.network(
                    'https://image.tmdb.org/t/p/w400${movieInfo?.posterPath}',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(movieInfo!.title),
                        Text(movieInfo!.releaseDate.toString())
                      ],
                    ),
                    Text(movieInfo!.tagline),
                    Text('${movieInfo!.runtime.toString()}분'),
                    Divider(height: 10),
                    SizedBox(
                      height: 30,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: movieInfo.genres.length,
                          itemBuilder: (context, index) {
                            final genre = movieInfo.genres[index]['name'];
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 3),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        width: 0.5, color: Colors.white)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 5,
                                  ),
                                  child: SizedBox(
                                    child: FittedBox(
                                      fit: BoxFit.contain,
                                      child: Text(
                                        genre,
                                        style: TextStyle(color: Colors.blue),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                    Divider(height: 10),
                    Text(movieInfo!.overview),
                    Divider(height: 10),
                    Text('흥행정보'),
                    SizedBox(
                      height: 80,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          MovieSubInfo(label: '평점', value: movieInfo.voteAverage.toString()),
                          MovieSubInfo(label: '투표수', value: movieInfo.voteCount.toString()),
                          MovieSubInfo(label: '인기점수', value: movieInfo.popularity.toString()),
                          MovieSubInfo(label: '수익', value: movieInfo.revenue.toString()),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}