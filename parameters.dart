// optional position, named parameters, required named parameters, multiple 

void main(){
sayHello(name: "Antoni", age: "20");
}

void sayHello({required name, required age}){
  print("Hello $name");
}
