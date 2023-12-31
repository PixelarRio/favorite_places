import 'package:favorite_places/provider/user_places.dart';
import 'package:favorite_places/screens/add_place.dart';
import 'package:favorite_places/widgets/places_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PlaceListScreen extends ConsumerWidget{

  @override
  Widget build(BuildContext context,WidgetRef ref) {

    final userPlaces = ref.watch(userPlacesProvider);
    return Scaffold(
      appBar: AppBar(
         title: const Text("Your Places"),
        actions: [
          IconButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=> const AddPlaceScreen()));
          }, icon: const Icon(Icons.add))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: PlaceList(places: userPlaces,),
      ),
    );
  }

}