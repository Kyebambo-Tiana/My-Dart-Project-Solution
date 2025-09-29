// Program to determine grade based on score
// 0-39: failed, 40-44: E, 45-49: D, 50-60: C, 60-70: B, 70+: A

void main(){
  var score = 80;

  if(score <= 39){
    print("f");
  }if(score < 45){
    print("E");
  }if(score < 50){
    print("D");
  }if(score < 60){
    print("C");
  }if(score < 70){
    print("B");
  }if(score >= 70){
    print("A");
  }
}