class Animal{
  int id;
  String name;
  String color;

  Animal(this.id,this.name,this.color);

  @override
  String toString()
  {
    return 'Animal-> id:$id, name:$name, color:$color';
  }
}

class Cat extends Animal
{
  String sound;

  Cat(int id,String name,String color,this.sound) : super(id, name, color);

  @override
  String toString()
  {
    return '${super.toString()},sound: $sound';
  }
}
void main()
{
  var cat = Cat(1,'Whiskers','Black','Meow!');
  print(cat);
}  