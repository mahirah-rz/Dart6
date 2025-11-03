class House{
  int id;
  String name;
  double price;

  House(this.id,this.name,this.price);

  @override
  String toString()
  {
    return 'House-> id:$id, name:$name, price:\$${price.toStringAsFixed(2)}';
  }
}
void main()
{
  var houses=[
    House(1,'Villa',450000),
    House(2,'Cottage',220000),
    House(3,'Penthouse',980000),
  ];
  for(var house in houses)
  {
    print(house);
  }
}