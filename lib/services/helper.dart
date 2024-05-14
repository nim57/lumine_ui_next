import 'package:flutter/services.dart' as the_bundel;
import 'package:lumine_project_la/models/sneaker_model.dart';


class Helper{

    //Electronic
    Future<List<Sneakers>> getElectronicSneakers() async{
        final data = await the_bundel.rootBundle.loadString("images/json/Electronic.json");

        final electtronicList = sneakersFromJson(data);

        return electtronicList;

    }
    //Furniture



    //Single electronic
    Future<Sneakers> getElectronicSneakersById(String id) async{
        final data = await the_bundel.rootBundle.loadString("images/json/Electronic.json");

        final electtronicList = sneakersFromJson(data);

        final sneaker = electtronicList.firstWhere((sneaker) => sneaker.id == id);

        return sneaker;

    }


}