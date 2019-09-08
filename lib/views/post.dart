import 'package:flutter/material.dart';

class PostView extends StatefulWidget {
  @override
  PostViewState createState() => PostViewState();
}

class PostViewState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post Title'),
      ),
      body: Column(
        children: <Widget>[
          Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ultrices risus a justo sollicitudin, sit amet iaculis dolor scelerisque. Nunc congue congue arcu, sit amet vestibulum est faucibus in. Fusce lacinia eget odio sed consectetur. Ut mattis ac erat sit amet finibus. Curabitur in justo in dolor condimentum fringilla. Pellentesque placerat odio eu ligula aliquam, eu tristique orci gravida. Etiam libero odio, ultricies a dignissim nec, mattis eu velit. Suspendisse ex enim, porta in rhoncus a, pharetra non tortor. Maecenas lobortis aliquam ante, ac venenatis nulla interdum ac. Nulla facilisi. Etiam convallis, ligula mollis aliquam gravida, diam metus placerat massa, vel imperdiet magna nisi condimentum erat. Proin tempus posuere justo et posuere. Praesent leo odio, porta vel convallis ac, feugiat a nisl. Praesent scelerisque ultrices sagittis. Quisque aliquam lobortis egestas. Nam vitae orci at lacus vulputate convallis. '),
          BottomAppBar(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_upward),
                  color: Colors.cyan,
                  onPressed: () {},
                ),
                IconButton(
                    icon: Icon(Icons.arrow_downward),
                    onPressed: () {},
                    color: Colors.red),
              ],
            ),
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Comment'),
            minLines: 4,
            maxLines: 10,
          )
        ],
      ),
    );
  }
}
