//
//  Koala.h
//  objectivec
//
//  Created by Abdul Saleem Mohamed Faheem on 2024-12-29.
//

#import "Animal.h"

NS_ASSUME_NONNULL_BEGIN

@interface Koala : Animal
// Override super class talkToMe method
-(NSString*) talkToMe:(NSString *)myName;
-(void) performTrick;
-(void) makeSound;
@end

NS_ASSUME_NONNULL_END
