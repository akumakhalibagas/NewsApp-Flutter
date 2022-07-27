import 'package:flutter/material.dart';
import '../models/news_model.dart';
import '../utils/const.dart';

class NewsDetailPage extends StatelessWidget {
  final NewsModel news;
  const NewsDetailPage({
    Key? key,
    required this.news,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
    );
  }

  _buildBody(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            _buildImage(context),
            _buildDescription(context),
            _buildGridView(),
          ],
        ),
      ),
    );
  }

  _buildImage(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 3,
      child: Image.network(
        news.urlImages,
        fit: BoxFit.cover,
      ),
    );
  }

  _buildDescription(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          Text(
            news.title,
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
            style: textStyle,
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Text(news.author),
              const SizedBox(
                width: 12,
              ),
              Text(news.date),
            ],
          ),
          const SizedBox(height: 12),
          Text(news.description),
          const SizedBox(height: 24),
          Container(
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.centerLeft,
            child: const Text(
              'News Recomendation',
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 16, color: Colors.amber),
            ),
          ),
        ],
      ),
    );
  }

  _buildGridView() {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 6,
        mainAxisSpacing: 6,
        shrinkWrap: true,
        children: news.urlImagesAll.map((urlImages) {
          return Image.network(
            urlImages,
            fit: BoxFit.cover,
          );
        }).toList(),
      ),
    );
  }
}
