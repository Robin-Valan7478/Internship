import 'dart:io';

void main(){
  //List<dynamic> a = [1,2,3,'Add'];
  List<List<dynamic?>> x = [[5,3,'add'],[10,2,'subtract'],[7,8,'multiply'], ['multiply']];
  int len = x.length;
  /*for (int l=0;l< len-1;l++){
   leng = x[l].length;
  print(leng);
  }*/
  int lenq = x[0].length; 
  print(len);
  
  print(x[0][1]);

  for (int i =0; i< len-1; i++){
    for(var j=0;j< lenq-1 ;j++){
    if(x[i][j]== 'add'){
      print('add');
      addition(x[i][j]);
      String temp= x[len] [lenq];
      if( temp == 'add'){
    int ans = count+count2+count3+count4;
  }
    }
    else if(x[i][j]== 'subtract'){
      print('subtract');
      sub(x[i][j]);
      String temp= x[len] [lenq];
  
   if( temp == 'subtract'){
    int ans = count+count2+count3+count4;
  }
    }
    else if(x[i][j]== 'multiply'){
      print('multiply');
      mul(x[i][j]);
      String temp= x[len] [lenq];

  if( temp == 'multiply'){
    int ans = count+count2+count3+count4;
  }

    }
    else if(x[i][j]== 'division'){
      print('division');
      div(x[i][j]);
      String temp= x[len] [lenq];

   if( temp == 'div'){
    int ans = count+count2+count3+count4;
  }
    }
    else {
      print("null");
    }
    }
  }
  
  
}

int? addition(List<dynamic> x[i][j]){
  for (int j =0;j<2;j++){
    var i;
    if(x[i][j] && x[i][j+1] is int){
      var count = x[i][j] + x[i][j+1];
       return count;

    }
    
  }

  }
  int? sub(List<dynamic> x[i][j]){
  for (int j =0;j<2;j++){
    var i;
    if(x[i][j] && x[i][j+1] is int){
      var count2 = x[i] - x[i+1];
       return count2;

    }

  }
   
}

int? mul(List<dynamic> x[i][j]){
  for (int j =0;j<2;j++){
    var i;
    if(x[i][j] && x[i][j+1] is int){
      var count3 = x[i] * x[i+1];
       return count3;

    }

  }
   
}

int? div(List<dynamic> x[i][j]){
  for (int j =0;j<2;j++){
    var i;
    if(x[i][j] && x[i][j+1] is int){
      var count4 = x[i] ~/ x[i+1];
       return count4;

    }

  }
   
}
