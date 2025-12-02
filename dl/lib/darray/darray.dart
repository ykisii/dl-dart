class Darray {
  Darray(List<dynamic>? list) {
    if (list == null) {
      _list = List.empty(growable: true);
    }
    else {
    _list = list.toList();
    }
  }

  late List<dynamic> _list;
  
  List<dynamic> get list => _list;
  int get length => _list.length;

  static Darray arrange({double start = 0.0, double stop = 10.0, double step = 1.0}) {
    List<double> data = List.empty(growable: true);
    for (double i = start; i <= stop; i += step) {
      data.add(i);
    }
    List<dynamic> d = data.toList();
    return Darray(d);
  }
}