import 'package:vote/models/vote.dart';
import 'package:uuid/uuid.dart';
List<Vote> getVoteList() {
  List<Vote> voteList = List<Vote>();

  voteList.add(Vote(
    voteId: Uuid().v4(),
    voteTitle: "Best Mobile Frameworks",
    options: [
      {'Flutter':70},
      {'React Native':10},
      {'Vue':7},
    ],
  ));
  voteList.add(Vote(
      voteId: Uuid().v4(),
      voteTitle: "Best Web Frameworks",
      options: [
        {'Django':50},
        {'Laravel':10},
        {'Express.js':80},
      ],
  ));
  voteList.add(Vote(
    voteId: Uuid().v4(),
    voteTitle: 'Best Web Backend Frameworks?',
    options: [
      {'Django': 50},
      {'Laravel': 30},
      {'Express.js': 50},
    ],
  ));
  return voteList;
}


