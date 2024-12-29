//
//  Koala.m
//  objectivec
//
//  Created by Abdul Saleem Mohamed Faheem on 2024-12-29.
//

#import "Koala.h"

@implementation Koala
-(NSString *) talkToMe:(NSString *)myName{
    NSString *response = [NSString stringWithFormat:@"Hello %@ says %@", myName, self.name];
    return response;
}

-(void) performTrick{
    NSLog(@"%@ performs a hand stand", self.name);
}

-(void) makeSound{
    NSLog(@"%@ says udev!", self.name);
}

-(void) lookCute{
    NSLog(@"%@ act super cute", self.name);
}

@end
