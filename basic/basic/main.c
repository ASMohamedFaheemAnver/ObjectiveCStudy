//
//  main.c
//  basic
//
//  Created by Abdul Saleem Mohamed Faheem on 2024-12-29.
//

#include <stdio.h>

// 1 Basic
// To pass argc and argv to main function, we need to run the program from terminal
// gcc main.c -std=c99 -o main.out
// ./main.out I am happy
// argc means argument count, argv means argument vector (array of strings)
// first argument is the name of the program itself (./main.out)
//int main(int argc, const char * argv[]) {
//    for (int i = 0; i<argc; i++) {
//        printf("arg %d : %s\n", i, argv[i]);
//    }
//}

// 2 Scan
//int main(int argc, const char * argv[]) {
//    float fTemp;
//    printf("Enter temp in F : ");
//    scanf("%f", &fTemp);
//    float cTemp = (fTemp-32)/1.8;
//    printf("%.1f degrees Celsius\n", cTemp);
//    return 0;
//}
