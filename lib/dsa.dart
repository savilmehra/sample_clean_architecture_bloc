import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {

  StreamSubscription<int> myStreamSubscription = DSA().stream.listen((value) {
    // add code here
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        ElevatedButton(onPressed: (
            myStreamSubscription.cancel
        ), child: Text("close")),
        Card(
          child: Center(
            child: StreamBuilder<int>(
              stream: DSA().stream,

              builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
                if (snapshot.hasData) {
                  // Display the data from the stream
                  return Text('Number: ${snapshot.data}');
                } else if (snapshot.hasError) {
                  // Handle error case
                  return Text('Error: ${snapshot.error}');
                } else {
                  // Handle loading or initial state
                  return CircularProgressIndicator();
                }
              },
            )
            ,
          ),
        ),
      ],
    );
  }


}

class DSA {


  Stream<int> createFilteredStream() {
    final StreamController<int> controller = StreamController<int>();

    List<int> dataList = [1, 2, 3, 4, 5];
    for (int data in dataList) {
      if (data % 2 == 0) {
        controller.add(data);
      }
    }

    controller.close();
    return controller.stream;
  }
  final StreamController<int> controller = StreamController<int>();

  Stream<int> stream =
      Stream<int>.periodic(const Duration(seconds: 1), (int value) {
    return (value + 1) % 4;
  });


  loadTflite()
  {}



  findDuplicates(List<int> list) {
    Map<int, int> mp = {};

    for (var item in list) {
      if (mp.containsKey(item)) {
        mp[item] = 2;
      } else {
        mp[item] = 1;
      }
    }
    mp.forEach((key, value) {
      if (value > 1) {
        print(key);
      }
    });
  }

  List<int> merged = [];

  List<int> mergeSort(List<int> array) {
    // Stop recursion if array contains only one element
    if (array.length <= 1) {
      return array;
    }
    // split in the middle of the array
    int splitIndex =
        array.length ~/ 2; // ~/2 means Divide, returning an integer result

    // recursively call merge sort on left and right array
    List<int> leftArray = mergeSort(array.sublist(0, splitIndex));
    List<int> rightArray = mergeSort(array.sublist(splitIndex));
    return merge(leftArray, rightArray);
  }

  List<int> merge(left_array, right_array) {
    List<int> result = [];
    int? i = 0;
    int? j = 0;
    // Search for the smallest element in left and right arrays
    // array and insert it into result
    // After the loop only one array has remaining elements
    while (i! < left_array.length && j! < right_array.length) {
      if (left_array[i] <= right_array[j]) {
        result.add(left_array[i]);
        i++;
      } else {
        result.add(right_array[j]);
        j++;
      }
    }
    // Insert remaining elements of left array into result
    // as long as there are remaining elements
    while (i! < left_array.length) {
      result.add(left_array[i]);
      i++;
    }
    // Insert remaining elements of right array into result
    // as long as there are remaining elements
    while (j! < right_array.length) {
      result.add(right_array[j]);
      j++;
    }
    return result;
  }
}
