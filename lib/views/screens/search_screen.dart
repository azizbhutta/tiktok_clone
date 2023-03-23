import 'package:flutter/material.dart';
import 'package:tiktok_clone/controllers/search_controller.dart';
import 'package:get/get.dart';
import '../../models/user.dart';


class SerachScreen extends StatelessWidget {
   SerachScreen({Key? key}) : super(key: key);

  final SearchController  searchController = Get.put(SearchController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: TextFormField(
          decoration: const InputDecoration(
            filled: false,
            hintText: 'Search',
            hintStyle: TextStyle(
              fontSize: 18, color: Colors.white,
            )
          ),
          onFieldSubmitted: (value) => searchController.serachUser(value),
        ),
      ),
      body: searchController.searchedUsers.isEmpty ? const Center(
        child: Text('Search for user!', style: TextStyle(
          fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold
        ),),
      ): ListView.builder(
          itemCount: searchController.searchedUsers.length,
          itemBuilder: (context, index){
            User user = searchController.searchedUsers[index];
            return InkWell(
              onTap: () {},
               child: ListTile(
                 leading: CircleAvatar(backgroundImage: NetworkImage(user.profilePhoto),),
               ),
            );
      })
    );
  }
}
