class DuosModel {
  final String name;
  final String datetime;
  final String message;

  DuosModel({this.name, this.datetime, this.message});

  static final List<DuosModel> dummyData = [
    DuosModel(
      name: "Team 1",
      datetime: "20:18",
      message: "Team 1",
    ),
    DuosModel(
      name: "Team 1",
      datetime: "19:22",
      message: "Team 2",
    ),
    DuosModel(
      name: "Team 2",
      datetime: "14:34",
      message: "Team 3",
    ),
    DuosModel(
      name: "Team 3",
      datetime: "11:05",
      message: "Team 4",
    ),
    DuosModel(
      name: "Team 4",
      datetime: "09:46",
      message: "Team 5",
    ),
    DuosModel(
      name: "Team 5",
      datetime: "08:15",
      message: "Team 6",
    ),
    DuosModel(
      name: "Team 6",
      datetime: "08:15",
      message: "Team 6",
    ),
  ];
}
