import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context)

  {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0, // remove line between AppBar and Body
        titleSpacing: 20.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage('https://i2.wp.com/trondheim.makerfaire.com/wp-content/uploads/sites/166/2016/06/female-generic-icon-silhouette_95549.jpg?ssl=1'),
            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
              'Chats',
              style: TextStyle(
                color: Colors.black,
              ),
            )
          ],
        ),
        actions: [
          IconButton(
            icon: CircleAvatar(
              radius: 15.0,
              backgroundColor: Colors.blue,
              child: Icon(
              Icons.camera_alt,
                size: 16.0,
                color: Colors.white,
          ),
            ), onPressed: (){},),
          IconButton(
            icon: CircleAvatar(
              radius: 15.0,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.edit,
                size: 16.0,
                color: Colors.white,
              ),
            ), onPressed: (){},),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.grey[300], // [300] by2ll el color
                ),
                padding: EdgeInsets.all(5.0,),
                child: Row(
                  children:
                  [
                    Icon(
                      Icons.search,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text(
                      'Search'
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 110.0,
                child: ListView.separated(
                  shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => buildStoryItem(),
                    separatorBuilder: (context, index) => SizedBox(
                      width: 20.0,
                    ),
                    itemCount: 5,
                ),
              ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => buildChatItem(),
                  separatorBuilder: (context, index) => SizedBox(
                    height: 20.0,
                  ),
                  itemCount: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildChatItem() => Row(
  children: [
    Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.only(
            bottom: 3.0,
            end: 3.0,
          ),
          child: CircleAvatar(
            radius: 30.0,
            backgroundImage: NetworkImage('https://as1.ftcdn.net/v2/jpg/02/85/98/20/500_F_285982046_zzxKDt4O2ntMLBObfqU2bdEovgRclEqa.jpg'),
          ),
        ),
        CircleAvatar(
          radius: 7.0,
          backgroundColor: Colors.green,
        ),
      ],
    ),
    SizedBox(
      width: 20.0,
    ),
    Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Reyci Rodrigues',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(
            height: 5.0,
          ),
          Row(
            children:
            [
              Expanded(
                child: Text(
                  'Good Morning',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0,),
                child: Container(
                  width: 7.0,
                  height: 7.0,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Text(
                '02:00 pm',
              ),
            ],
          ),
        ],
      ),
    ),
  ],
);


  Widget buildStoryItem() => Container(
  width: 60.0,
  child: Column(
    children:
    [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.only(
              bottom: 3.0,
              end: 3.0,
            ),
            child: CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage('https://st2.depositphotos.com/2703645/5669/v/600/depositphotos_56695433-stock-illustration-female-avatar.jpg'),
            ),
          ),
          CircleAvatar(
            radius: 7.0,
            backgroundColor: Colors.green,
          ),
        ],
      ),
      SizedBox(
        height: 6.0,
      ),
      Text(
        'Reham Samir Abdallah',
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    ],
  ),
);

  }
