enum Gender{male,female,others}
void main()
{
  print('Gender:');
  for(var gender in Gender.values)
  {
    print(gender);
  }
}