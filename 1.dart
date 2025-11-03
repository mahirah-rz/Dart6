class Laptop {
  int id;
  String name;
  int ram;

  Laptop(this.id, this.name, this.ram);

  @override
  String toString()
  {
    return 'Laptop-> id:$id, name:$name, ram:$ram GB';
  }
}
void main()
{
  var laptop1=Laptop(1,'Dell',16);
  var laptop2=Laptop(2,'MacBook',8);
  var laptop3=Laptop(3,'HP',32);

  print(laptop1);
  print(laptop2);
  print(laptop3);
}