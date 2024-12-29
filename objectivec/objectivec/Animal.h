//
//  Animal.h
//  objectivec
//
//  Created by Abdul Saleem Mohamed Faheem on 2024-12-29.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Animal : NSObject

// Strings are basically pointers of start
@property NSString *name;
@property NSString *favFood;
@property NSString *sound;
// Primitive
@property float weight;

//Methods
// - is mean to indicate it's an instance method, which can be accessed per object, (?I guess not like static but private once)
-(instancetype) initWithName:(NSString*) defaultName;
-(void) getInfo;
-(float) weightInKg:(float) weightInLbs;
-(NSString *) talkToMe: (NSString *) myName;
// Notice here first method paramter doesn't have any name infront of it, it's a convention I guess
-(int) getSum: (int) num1 nextNumber: (int) num2;


@end

NS_ASSUME_NONNULL_END
