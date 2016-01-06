//
//  main.m
//  SortingLHL
//
//  Created by Karlo Pagtakhan on 01/06/2016.
//  Copyright © 2016 AccessIT. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    
    NSInteger (^findLargestNumber)(NSArray *numbers);
    NSArray *numbersArray = @[@3, @7, @6, @8];
    
    //BLOCK: Get the largest number from an Array
    findLargestNumber = ^NSInteger(NSArray* numbers){
        __block NSInteger largestNumber = 0;
        
        //Loop through the contents of the array
        [numbers enumerateObjectsUsingBlock:^(id  number, NSUInteger idx, BOOL *stop) {
            //Compare the numbers
            if ([number intValue] > largestNumber){
                largestNumber = [number intValue];
            }
        }];
        
        return largestNumber;
    };
    
    NSLog(@"%ld",findLargestNumber(numbersArray));

}

