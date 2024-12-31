import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // 다크모드 배경
      appBar: AppBar(
        title: Text("영화 정보 앱"),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.network(
                'https://via.placeholder.com/300x200', // 가장 인기있는 영화 이미지 URL
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            _buildSection("현재 상영중", _buildMovieList()),
            _buildSection("인기순", _buildRankedMovieList()),
            _buildSection("평점 높은순", _buildMovieList()),
            _buildSection("개봉예정", _buildMovieList()),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String title, Widget content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 180, child: content),
      ],
    );
  }

  Widget _buildMovieList() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 20,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Image.network(
            'https://via.placeholder.com/100x180', // 영화 이미지 URL
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }

  Widget _buildRankedMovieList() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 20,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Stack(
            children: [
              Image.network(
                'https://via.placeholder.com/100x180', // 영화 이미지 URL
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 10,
                left: 10,
                child: CircleAvatar(
                  backgroundColor: Colors.black.withOpacity(0.7),
                  radius: 12,
                  child: Text(
                    '${index + 1}',
                    style: TextStyle(color: Colors.white, fontSize: 12.0),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}
