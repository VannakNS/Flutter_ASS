import 'package:flutter/material.dart';
import 'image.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: _buildBody(),
      bottomNavigationBar: _buildBottomAppBar(),
    );
  }

  Widget _buildBottomAppBar() {
    return BottomAppBar(
      color: Colors.orange,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.home)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.person)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
        ],
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text("Food App"),
      backgroundColor: Colors.orange,
      foregroundColor: Colors.white,
    );
  }

  Widget _buildTopMenu() {
    return Center(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(child: Text("Popular"), onTap: () {}),
            SizedBox(width: 10),
            InkWell(child: Text("Famous"), onTap: () {}),
            SizedBox(width: 10),
            InkWell(child: Text("Trending"), onTap: () {}),
            SizedBox(width: 10),
            InkWell(child: Text("Top 10"), onTap: () {}),
            SizedBox(width: 10),
            InkWell(child: Text("Surprise"), onTap: () {}),
            SizedBox(width: 10),
            InkWell(child: Text("My List"), onTap: () {}),
            SizedBox(width: 10),
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    return _buildMainListView();
  }

  Widget _buildMainListView() {
    return ListView(
      padding: EdgeInsets.all(10),
      physics: BouncingScrollPhysics(),
      children: [
        _buildIconRow(),
        Text("ម្ហូបពេញនិយម"),
        _buildListViewBuilderHorizontal(imageList, 250, 180),
        Text("ម្ហូបបញ្ចុះតម្លៃ50%"),
        _buildListViewBuilderHorizontal(imageList, 120, 200),
        Text("ម្ហូបពេលរាត្រី"),
        _buildListViewBuilderHorizontal(imageList, 150, 150),
        Text("អាហារសម្រន់"),
        _buildListViewBuilderHorizontal(imageList, 200, 250),
      ],
    );
  }

  Widget _buildIconRow() {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildMenuButton(text: "ម្ហូបធ្លាប់កុម៉្មង់", myPressed: () {}),
          _buildMenuButton(text: "ហាងជិតអ្នក", myPressed: () {}),
          _buildMenuButton(text: "អាហារលឿនៗ", myPressed: () {}),
          _buildMenuButton(text: "Free ដឹក", myPressed: () {}),
          _buildMenuButton(text: "បញ្ចុះតម្លៃ", myPressed: () {}),
          _buildMenuButton(text: "កន្ត្រក់", myPressed: () {}),
          _buildMenuButton(text: "កំណត់", myPressed: () {}),
        ],
      ),
    );
  }

  Widget _buildMenuButton(
      {required String text, required void Function()? myPressed}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, right: 10),
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Colors.orange,
          side: BorderSide(color: Colors.orange),
          textStyle: TextStyle(fontSize: 18),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        ),
        onPressed: myPressed,
        child: Text(text),
      ),
    );
  }

  Widget _buildListViewBuilderHorizontal(
      List<String> list, double h, double w) {
    return Container(
      height: h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Container(
            width: w,
            padding: const EdgeInsets.all(10),
            child: Image.network(list[index], fit: BoxFit.cover),
          );
        },
      ),
    );
  }

  Widget _buildListViewBuilder() {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: imageList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.network(
            imageList[index],
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }

  Widget _buildListViewHorizontal() {
    return Container(
      height: 300,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          Container(width: 170, height: 40, color: Colors.red),
          Container(width: 140, height: 130, color: Colors.blue),
          Container(width: 160, height: 60, color: Colors.orange),
          Container(width: 190, height: 150, color: Colors.pink),
          Container(width: 140, height: 70, color: Colors.lime),
          Container(width: 160, height: 160, color: Colors.orange),
          Container(width: 190, height: 150, color: Colors.pink),
          Container(width: 140, height: 180, color: Colors.lime),
        ],
      ),
    );
  }

  Widget _buildListView() {
    return ListView(
      // padding: EdgeInsets.all(10),
      physics: BouncingScrollPhysics(),
      // scrollDirection: Axis.vertical, //default
      children: [
        Container(width: 170, height: 40, color: Colors.red),
        Container(width: 140, height: 130, color: Colors.blue),
        Container(width: 160, height: 60, color: Colors.orange),
        Container(width: 190, height: 150, color: Colors.pink),
        Container(width: 140, height: 70, color: Colors.lime),
        Container(width: 160, height: 160, color: Colors.orange),
        Container(width: 190, height: 150, color: Colors.pink),
        Container(width: 140, height: 180, color: Colors.lime),
      ],
    );
  }

  Widget _buildIconLayout() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
          SizedBox(width: 10),
          IconButton(onPressed: () {}, icon: Icon(Icons.comment)),
          SizedBox(width: 10),
          IconButton(onPressed: () {}, icon: Icon(Icons.send)),
          Spacer(),
          IconButton(onPressed: () {}, icon: Icon(Icons.bookmark)),
        ],
      ),
    );
  }

  Widget _buildRow() {
    return Center(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(width: 170, height: 140, color: Colors.red),
            Container(width: 140, height: 130, color: Colors.blue),
            Container(width: 160, height: 160, color: Colors.orange),
            Container(width: 190, height: 150, color: Colors.pink),
            Container(width: 140, height: 180, color: Colors.lime),
            Container(width: 160, height: 160, color: Colors.orange),
            Container(width: 190, height: 150, color: Colors.pink),
            Container(width: 140, height: 180, color: Colors.lime),
          ],
        ),
      ),
    );
  }

  Widget _buildColumn() {
    return Center(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(width: 70, height: 140, color: Colors.red),
            Container(width: 40, height: 130, color: Colors.blue),
            Container(width: 60, height: 160, color: Colors.orange),
            Container(width: 90, height: 150, color: Colors.pink),
            Container(width: 40, height: 180, color: Colors.lime),
            Container(width: 60, height: 160, color: Colors.orange),
            Container(width: 90, height: 150, color: Colors.pink),
            Container(width: 40, height: 180, color: Colors.lime),
          ],
        ),
      ),
    );
  }

  Widget _buildStackImage() {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.network(
              "https://upload.wikimedia.org/wikipedia/en/2/21/Web_of_Spider-Man_Vol_1_129-1.png"),
          Icon(
            Icons.play_arrow,
            color: Colors.white.withOpacity(0.8),
            size: 100,
          ),
        ],
      ),
    );
  }

  Widget _buildStack() {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(width: 300, height: 400, color: Colors.red),
          Container(width: 200, height: 500, color: Colors.blue),
          Positioned(
            right: 10,
            bottom: 10,
            child: Container(width: 50, height: 50, color: Colors.yellow),
          ),
        ],
      ),
    );
  }
}
