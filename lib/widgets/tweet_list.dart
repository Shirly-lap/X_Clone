import 'package:flutter/material.dart';

class TweetList extends StatelessWidget {
  final List<Map<String, String>> tweets;

  const TweetList({Key? key, required this.tweets}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tweets.length,
      itemBuilder: (context, index) {
        final tweet = tweets[index];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: Card(
            color: Colors.grey[900],
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Text(
                          tweet["user"]![0],
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        tweet["user"]!,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    tweet["content"]!,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  if (tweet["image"]!.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.only(top: 10),

                      child: Image.network(tweet["image"]!,
                      width:MediaQuery.of(context).size.width * 0.85,
                        fit: BoxFit.contain,
                      ),
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
