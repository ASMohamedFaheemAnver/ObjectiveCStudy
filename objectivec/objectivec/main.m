//
//  main.m
//  objectivec
//
//  Created by Abdul Saleem Mohamed Faheem on 2024-12-29.
//

// Fundemental header for logging and stuff
#import <Foundation/Foundation.h>

int mainBasic1(int argc, const char * argv[]) {
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

int main(int argc, const char * argv[]) {
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
