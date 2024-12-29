//
//  Animal+Exam.m
//  objectivec
//
//  Created by Abdul Saleem Mohamed Faheem on 2024-12-29.
//

#import "Animal+Exam.h"

@implementation Animal (Exam)

-(BOOL) checkedByVet{
    return 1;
}

-(void) getShots{
    NSLog(@"%@ got its shots", self.name);
}

@end
