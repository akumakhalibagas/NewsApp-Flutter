import 'package:flutter/material.dart';
import 'package:newsapp_flutter/models/news_model.dart';
import 'package:newsapp_flutter/page/news_detail_page.dart';
import '../utils/const.dart';

class NewsPage extends StatefulWidget {
  final _scrolController = ScrollController();

  NewsPage({Key? key}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  void dispose() {
    widget._scrolController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: LayoutBuilder(
        builder: ((context, constraints) {
          if (constraints.maxWidth <= 600) {
            return _buildBodyList();
          } else {
            return _buildBodyGrid();
          }
        }),
      ),
    );
  }

  _buildBodyList() {
    return SafeArea(
      child: Scrollbar(
        controller: widget._scrolController,
        child: Container(
            color: Colors.white,
            child: ListView.builder(
              controller: widget._scrolController,
              itemBuilder: (context, i) {
                final NewsModel news = newsList[i];
                return _buildNewsItem(context, news);
              },
              itemCount: newsList.length,
            )),
      ),
    );
  }

  _buildBodyGrid() {
    return SafeArea(
      child: Scrollbar(
        controller: widget._scrolController,
        child: Container(
            color: Colors.white,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
              itemBuilder: (context, i) {
                final NewsModel news = newsList[i];
                return _buildNewsItemGrid(context, news);
              },
              itemCount: newsList.length,
            )),
      ),
    );
  }

  _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      title: const Text(
        "Daily News",
        style: TextStyle(color: Colors.black),
      ),
    );
  }

  _buildNewsItem(BuildContext context, NewsModel news) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return NewsDetailPage(
            news: news,
          );
        }));
      },
      child: Row(
        children: [_buildImage(context, news), _buildDescription(news)],
      ),
    );
  }

  _buildNewsItemGrid(BuildContext context, NewsModel news) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return NewsDetailPage(
            news: news,
          );
        }));
      },
      child: Column(
        children: [_buildImage(context, news)],
      ),
    );
  }

  _buildImage(BuildContext context, NewsModel news) {
    return Padding(
      padding: EdgeInsets.all(12),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          width: MediaQuery.of(context).size.width / 4,
          height: MediaQuery.of(context).size.height / 8,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.08),
          ),
          child: Image.network(
            news.urlImages,
            fit: BoxFit.cover,
            errorBuilder: (_, __, ___) {
              return const Center(
                child: Text(
                  '404\nNOT FOUND',
                  textAlign: TextAlign.center,
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  _buildDescription(NewsModel news) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              news.title,
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
              style: textStyle,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Text(
                news.description,
                maxLines: 2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Text(
                news.author,
                maxLines: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
