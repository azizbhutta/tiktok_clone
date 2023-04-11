import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final String uid;
  const ProfileScreen({Key? key, required this.uid}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Icon(Icons.person_add_alt),
        actions: const [
          Icon(Icons.more_horiz),
        ],
        title: const Text(
          'username',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipOval(
                      child: CachedNetworkImage(
                       fit: BoxFit.cover,
                       imageUrl: '',
                       height: 100,
                       width: 100,
                       placeholder: (context, url) =>
                        const CircularProgressIndicator(),
                       errorWidget: (context, url, error) => const Icon(
                      Icons.error,
                    ),
                  ))
                ],
              ),
              const SizedBox(
                height:  15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: const [
                      Text('10',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Following',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  Container(
                    color: Colors.black54,
                    height: 15,
                    width: 1,
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                  ),
                  Column(
                    children: const [
                      Text('8',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Followers',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  Container(
                    color: Colors.black54,
                    height: 15,
                    width: 1,
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                  ),
                  Column(
                    children: const [
                      Text('5',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Likes',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 47,
                width: 140,
                decoration: BoxDecoration(
                  border: Border.all(color :Colors.black12),
                ),
                child: Center(
                  child: InkWell(
                      onTap: (){},
                      child: const Text('Sign Out',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
                ),
              ),
            //  TODO Video list
              
            ])
          ],
        ),
      ),
    );
  }
}
