//
//  Animal.m
//  objectivec
//
//  Created by Abdul Saleem Mohamed Faheem on 2024-12-29.
//

#import "Animal.h"
#import "Animal+Vet.h"

@implementation Animal

-(instancetype)init{
    // This will call super class NSObject
    self = [super init];
    if(self){
        self.name = @"No name";
    }
    return self;
}

-(instancetype) initWithName:(NSString *)defaultName{
    // This will call super class NSObject
    self = [super init];
    if(self){
        self.name = defaultName;
    }
    return self;
}

-(void) getInfo{
    NSLog(@"Random info");
    [self getExamResults];
}

-(float) weightInKg:(float)weightInLbs{
    return weightInLbs * 0.4535;
}

-(int) getSum:(int)num1 nextNumber:(int)num2{
    return num1 + num2;
}

-(NSString *) talkToMe:(NSString *)myName{
    NSString *response = [NSString stringWithFormat:@"Hello %@", myName];
    return response;
}

-(void) makeSound{
    NSLog(@"%@ says default!", self.name);
}

@end
