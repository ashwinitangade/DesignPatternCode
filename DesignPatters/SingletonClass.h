//
//  SingletonClass.h
//  DesignPatters
//
//  Created by Ashwini Tangade on 3/9/16.
//  Copyright © 2016 myCompany. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SingletonClass : NSObject
+(SingletonClass*)sharedInstance;
-(NSString*)reverseString:(NSMutableString*)inputString;
-(NSArray*)reverseArray:(NSMutableArray*)inputArray;
-(NSArray*)fibonacciSeries:(int)count;
-(NSArray*)sortedArray:(NSMutableArray*)inputArray;
-(NSString*)isStringAPalindrome:(NSString*)inputString;
-(int)reverseNumber:(int)inputNumber;
-(NSString*)isNumberAPalindrome:(int)inputNumber;
@end
