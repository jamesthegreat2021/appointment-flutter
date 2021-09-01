import 'package:auntie_rafiki/models/event.dart';
import 'package:flutter/cupertino.dart';

class EventProvider extends ChangeNotifier {
  List<Event> _events = [
    Event(
        id: 1,
        name: "Event 1",
        category: "fund raising",
        description: "we want to buy a field bus by the end of field",
        location: "Qlicue",
        featuredImage: "https://placekitten.com/500/500",
        date: "08-31-2021",
        time: "12:15"),
    Event(
        id: 2,
        name: "Event 2",
        category: "fund raising",
        description: "we want to to help the disabled",
        location: "makumbusho",
        featuredImage: "https://placekitten.com/500/500",
        date: "08-31-2021",
        time: "12:30"),
  ];

  List<Event> get events => _events;

  //function that will be given the id of the event
  Event getEventById(int id) {
    final event = _events.firstWhere((element) => element.id == id);
    return event;
  }

  void addEvent() {
    final Event event = Event(
        id: 3,
        name: "Event 3",
        category: "local visit",
        description: "we want to know the surrounding environment",
        location: "makumbusho",
        featuredImage: "https://placekitten.com/500/500",
        date: "09-01-2021",
        time: "11:52");

    //add event function
    _events.add(event);

    notifyListeners();
  }

  bool deleteEvent(int id) {
    if (id < 1) return false;

    final event = _events.firstWhere((element) => element.id == id);

    if (event is Event) {
      _events.removeWhere((element) => element.id == id);

      notifyListeners();
      return true;
    }

    return false;
  }
}
