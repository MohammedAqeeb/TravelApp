import 'package:flutter/material.dart';
import 'package:travel_app/app/place_recommend.dart';

import 'popular_places.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: _buildBody(context),
      bottomNavigationBar: _buildBottomNavigation(context),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.black,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
            ),
            iconSize: 36,
          ),
          CircleAvatar(
            backgroundColor: Colors.blue[300],
            child: const Icon(Icons.person),
          )
        ],
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Hello User',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'Find Your Dream \nDestination',
                      style: TextStyle(
                        fontSize: 27,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // const ExploreButtons(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Recommendation',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text('view all'),
                        ),
                      ],
                    ),
                    const PlacesRecommend(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Popular',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text('view all'),
                        ),
                      ],
                    ),
                    const PopularPlaces()
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildBottomNavigation(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          label: 'home',
          icon: Icon(
            Icons.home_outlined,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Bookmark',
          icon: Icon(
            Icons.bookmark_outline,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Discover',
          icon: Icon(
            Icons.explore_outlined,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Account',
          icon: Icon(
            Icons.person_outline,
          ),
        ),
      ],
    );
  }
}
