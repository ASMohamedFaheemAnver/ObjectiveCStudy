//
//  main.m
//  objectivec
//
//  Created by Abdul Saleem Mohamed Faheem on 2024-12-29.
//

// Fundemental header for logging and stuff
#import <Foundation/Foundation.h>

// Importing custom defined class
#import "Animal.h"
#import "Koala.h"
#import "Animal+Exam.h"
#import "Animal+Vet.h"
#import "Dog.h"

int mainBasic(int argc, const char * argv[]) {
    // @autoreleasepool will handle memory for us like releasing memory if unused
    @autoreleasepool {
        NSLog(@"Hello, UDEV!");
        // Assigning nothing
        NSString *nothing = nil;
        NSLog(@"Location of nil : %p", nothing);
        // Create a actual string
        NSString *quote = @"Yo brah, what's up!";
        NSLog(@"Size of string : %d", (int)[quote length]);
        NSLog(@"Character at 5: %c", [quote characterAtIndex:5]);
        
        // Dynamic string
        char *name = "UDEV";
        NSString *dName = [NSString stringWithFormat:@"My name is : %s", name];
        // Defining boolean
        BOOL isStringEqual = [quote isEqualToString:dName];
        printf("Are strings equal : %d\n", isStringEqual);
        
        // Convert NSString to regular string
        const char *uCString = [[dName uppercaseString] UTF8String];
        printf("%s\n", uCString);
        
        // Combine strings
        NSString *wholeQuote = [quote stringByAppendingString:dName];
        
        // Search string
        NSRange searchResult = [wholeQuote rangeOfString:@"Hi"];
        // NSRange searchResult = [wholeQuote rangeOfString:@"UDEV"];
        if(searchResult.location == NSNotFound){
            NSLog(@"String not found!");
        }else printf("Hi is at index %lu and is %lu long\n", searchResult.location, searchResult.length);
        
        // Replacing sub string
        NSRange range = NSMakeRange(10, 5);
        const char *newQuote = [[wholeQuote stringByReplacingCharactersInRange:range withString:@"I did not say that"] UTF8String];
        printf("%s\n", newQuote);
        
        // Mutable string
        NSMutableString *groceryList = [NSMutableString stringWithCapacity:50];
        [groceryList appendFormat:@"%s", "Potato, Banana, Pasta"];
        NSLog(@"groceryList : %@", groceryList);
        // Remove string
        [groceryList deleteCharactersInRange:NSMakeRange(0, 8)];
        NSLog(@"groceryList : %@", groceryList);
        // Add string
        [groceryList insertString:@", Apple" atIndex:13];
        NSLog(@"groceryList : %@", groceryList);
        // Replace string
        [groceryList replaceCharactersInRange:NSMakeRange(15, 5) withString:@"Orange"];
        NSLog(@"groceryList : %@", groceryList);
    }
    return 0;
}

int mainArray(int argc, const char * argv[]) {
    // @autoreleasepool will handle memory for us like releasing memory if unused
    @autoreleasepool {
        // Array
        NSArray *officeSupplies = @[@"Pencils", @"Paper"];
        NSLog(@"First : %@", officeSupplies[0]);
        NSLog(@"Second : %@", officeSupplies[1]);
        NSLog(@"Office supplies : %@", officeSupplies);
        // Check if exist
        BOOL containsItem = [officeSupplies containsObject:@"Pencils"];
        NSLog(@"Need pencils: %d", containsItem);
        // Check length
        NSLog(@"Total : %d", (int)[officeSupplies count]);
        // Check index
        NSLog(@"Index of paper is at %lu", (unsigned long)[officeSupplies indexOfObject: @"Paper"]);
        
        // Mutable array
        NSMutableArray *heros = [NSMutableArray arrayWithCapacity:5];
        [heros addObject:@"Batman"];
        [heros addObject:@"Flash"];
        [heros addObject:@"Wonder women"];
        [heros addObject:@"Kid flash"];
        [heros insertObject:@"Superman" atIndex:2];
        NSLog(@"%@", heros);
        [heros removeObject:@"Flash"];
        [heros removeObjectAtIndex:0];
        [heros removeObjectIdenticalTo:@"Superman" inRange:NSMakeRange(0, 1)];
        
        // Iterate through array
        for (int i = 0; i<[heros count]; i++) {
            NSLog(@"%@", heros[i]);
        }
        
    }
    return 0;
}


int mainAnimal(int argc, const char * argv[]) {
    // @autoreleasepool will handle memory for us like releasing memory if unused
    @autoreleasepool {
        // Defalt initialize
        Animal *dog = [[Animal alloc] init];
        // Call method
        [dog getInfo];
        // Access variable
        NSLog(@"The dog name is %@", [dog name]);
        // Call setter method
        [dog setName:@"Spot"];
        NSLog(@"The dog name is %@", [dog name]);
        
        // Custom initialize
        Animal *cat = [[Animal alloc] initWithName:@"Whiskers"];
        // Access variable
        NSLog(@"The cat name is %@", [cat name]);
    }
    return 0;
}

int main(int argc, const char * argv[]) {
    // @autoreleasepool will handle memory for us like releasing memory if unused
    @autoreleasepool {
        Koala *herbie = [[Koala alloc] initWithName:@"Herbie"];
        NSLog(@"%@", [herbie talkToMe:@"Derek"]);
        NSLog(@"Did %@ received shots : %d", herbie.name, [herbie checkedByVet]);
        [herbie getShots];
        [herbie getInfo];
        [herbie lookCute];
        
        // Anonymous function
        float (^getArea) (float height, float width);
        getArea = ^float(float width, float height){
            return width*height;
        };
        NSLog(@"Area of 3 width and 50 height : %.1f", getArea(3, 50));
        // Enum
        enum Ratings {
            Poor = 1,
            Ok = 2,
            Great = 3
        };
        
        enum Ratings matrixRating = Great;
        NSLog(@"Matrix %u", matrixRating);
        
        // Dynamic binding
        Dog *grover = [[Dog alloc]initWithName:@"Grower"];
        NSArray *animals = [[NSArray alloc]initWithObjects:herbie, grover, nil];
        id object1 = [animals objectAtIndex:0];
        id object2 = [animals objectAtIndex:1];
        [object1 makeSound];
        [object2 makeSound];
        
    }
    return 0;
}
