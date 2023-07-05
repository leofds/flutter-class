[Widgets](https://github.com/leofds/flutter-class/blob/master/flutter/widgets.md)

# StreamBuilder

```dart
StreamBuilder<QuerySnapshot>(
  stream: FirebaseFirestore.instance.collection("message").snapshots(),
  builder: (context, snapshot){
    switch(snapshot.connectionState){
      case ConnectionState.none:
      case ConnectionState.waiting:
        return Center(
	  child: CircularProgressIndicator(),
        );
      default:
        List<DocumentSnapshot> docs = snapshot.data!.docs;
        return ListView.builder(
	  itemCount: docs.length,
	  reverse: true,
	  itemBuilder: (context, index){

	  },
        );
    }
  },
)
```
