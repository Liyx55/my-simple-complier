// //check 1
// int main(){
//     int b;
//     b=a+c;
//     return 0;
// }


// //check 2
// int main(){
//     int a;
//     a=10;
//     int a;
//     a=20;
// }


// //check 3
// int main(){
//     int a;
//     a=10;
//     if(a+2){
//         a-=2;
//     }
//     return 0;
// }

// //check 4
// int main(){
//     int a;
//     a=10+'0';
//     a=10+"0";
//     return 0;
// }

// //check 5
// int main(){
// 	b=10;
// 	int a=4,b=5;
// 	a = a + 1;
// 	return 0;
// }

// // //check 6
// // void main(){
// // 	return 0;
// // }

// int func() {
//   int ret;
//   scanf("%d",&ret);
//   return ret;
// }

// // int func() {
// //   int ret = 8;
// //   return ret;
// // }

// int main() {
//     int i = func();
//     int result = 1;
//     int j = 1;
//     for (j=1; j <= i; j=j+1) {
//         result = result * j;
//     }

//     printf("%d\n",result);
//     return 0;
// }
// int main(){
//     for(int i=0;i<10;i=i+1){
//         printf("%d\n",i);
//         if(i<5){
//             printf("Continue\n");
//             continue;
//         }
//         break;
//     }
//     return 0;
// }
int fact(int n) {
  if (n == 0) {
    return 1;
  }
  int nn;
  nn = n-1;
  return (n * fact(nn));
}

int main() {
  int n;
  n = 4;
  printf("%d\n",fact(n));
  return 0;
}