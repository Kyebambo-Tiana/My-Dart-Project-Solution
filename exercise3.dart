//Create a program that finds the largest number in a list
void main(){
  var list = [2,3,4,6,7];

  int largestnumber = list[0];

  for( var i in list){
    if(i > largestnumber){
      largestnumber =i;
      print(largestnumber);
      
    }

  }
}