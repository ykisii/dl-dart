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
    return Darray(data.toList());
  }

  Darray operator >(double num) {
    return Darray(_list.map((v) => v > num).toList());
  }

  Darray operator <(double num) {
    return Darray(_list.map((v) => v < num).toList());
  }

  Darray operator >=(double num) {
    return Darray(_list.map((v) => v >= num).toList());
  }

  Darray operator <=(double num) {
    return Darray(_list.map((v) => v <= num).toList());
  }

  Darray operator +(dynamic other) {
    if (other is num) {
      return Darray(_list.map((v) => v + other).toList());
    }
    else {
      throw ArgumentError('Unsupported operand type');
    }
  }  
}