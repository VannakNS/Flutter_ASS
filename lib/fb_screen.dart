import 'package:flutter/material.dart';
import 'image.dart';

class FBScreen extends StatelessWidget {
  // const FBScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "FB Screen",
          style: TextStyle(
              fontFamily: 'Jetbrain-mono',
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue[900],
        foregroundColor: Colors.black,
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return _Main();
  }

  Widget _Main() {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: [
        _buildStoryListView(),
        _buildGridViewBuilder(),
        _buildPostListView(),
        _buildStoryListView(),
        _buildPostListView(),
      ],
    );
  }

  Widget _buildGridViewBuilder() {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 4 / 6,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
      ),
      itemCount: imageList.length,
      itemBuilder: (context, index) {
        return Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(imageList[index], fit: BoxFit.cover),
          ),
        );
      },
    );
  }

  Widget _buildStoryListView() {
    return Container(
      padding: EdgeInsets.all(10),
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: imageList.length,
        itemBuilder: (context, index) {
          return Container(
            width: 180,
            padding: EdgeInsets.only(right: 5),
            child: Image.network(
              imageList[index],
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }

  Widget _buildPostListView() {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: imageList.length,
      itemBuilder: (context, index) {
        return Image.network(
          imageList[index],
          fit: BoxFit.cover,
        );
      },
    );
  }
}
