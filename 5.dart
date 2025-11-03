class Camera{
  int _id;
  String _brand;
  String _color;
  double _price;

  Camera(this._id,this._brand,this._color,this._price);

  int get id =>_id;
  String get brand =>_brand;
  String get color =>_color;
  double get price =>_price;

  set id(int value) =>_id =value;
  set brand(String value) =>_brand=value;
  set color(String value) =>_color=value;
  set price(double value) =>_price=value;

  @override
  String toString()
  {
    return 'Camera -> id:$_id,brand:$_brand,color:$_color, price:\$_price';
  }
}
void main()
{
  var cameras = [
    Camera(1,'Canon','Black',899.99),
    Camera(2,'Nikon','Silver',799.99),
    Camera(3,'Sony','White',1299.99),
  ];
  for(var camera in cameras)
  {
    print(camera);
  }
}
