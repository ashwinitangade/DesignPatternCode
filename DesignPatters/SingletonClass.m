//
//  SingletonClass.m
//  DesignPatters
//
//  Created by Ashwini Tangade on 3/9/16.
//  Copyright © 2016 myCompany. All rights reserved.
//

#import "SingletonClass.h"

@implementation SingletonClass
+(SingletonClass*)sharedInstance
{
    static SingletonClass *sharedInstance;
    @synchronized(self) {
        if(sharedInstance == nil)
        {
            sharedInstance = [[SingletonClass alloc] init];
        }
    }
    return sharedInstance;
}

-(NSString*)reverseString:(NSMutableString*)inputString
{
    int strLength = (int)inputString.length;
    for (int i=0; i<strLength/2; i++) {
        NSString *startChar = [inputString substringWithRange:NSMakeRange(i, 1)];
        NSRange endRange = NSMakeRange(strLength - i-1, 1);
        
        [inputString replaceCharactersInRange:NSMakeRange(i,1) withString:[inputString substringWithRange:endRange]];
        [inputString replaceCharactersInRange:endRange withString:startChar];
    }
    return inputString;
}
-(NSArray*)reverseArray:(NSMutableArray*)inputArray
{
    int count = (int)[inputArray count];
    for(int i=0;i<count/2;i++)
    {
        int j = count-i-1;
        [inputArray exchangeObjectAtIndex:i withObjectAtIndex:j];
    }
    return inputArray;
}

-(NSArray*)fibonacciSeries:(int)count
{
    NSMutableArray *fibonacciArray = [NSMutableArray array];
    int a=0;
    int b=1;
    int result = a+b;
    [fibonacciArray addObject:[NSNumber numberWithInt:a]];
    [fibonacciArray addObject:[NSNumber numberWithInt:b]];
    [fibonacciArray addObject:[NSNumber numberWithInt:result]];
    for(int i=0;i<count;i++)
    {
        a=b;
        b=result;
        result=a+b;
        [fibonacciArray addObject:[NSNumber numberWithInt:result]];
    }
    return fibonacciArray;
}
-(NSArray*)sortedArray:(NSMutableArray*)inputArray
{
    return [inputArray sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        if ([obj1 intValue] < [obj2 intValue]) return NSOrderedAscending;
        else return NSOrderedDescending;
    }];
}
-(NSString*)isStringAPalindrome:(NSString*)inputString
{
    int strLength = (int)inputString.length;
    for (int i=0; i<strLength/2; ) {
        NSString *startChar = [inputString substringWithRange:NSMakeRange(i, 1)];
        NSString *endChar  = [inputString substringWithRange:NSMakeRange(strLength - i-1, 1)];
        if(startChar == endChar)
        {
            i++;
        }
        else{
            return @"NO";
        }
    }
    return @"YES";
    
}
-(int)reverseNumber:(int)inputNumber
{
    int reverseNumber = 0;
    int number = inputNumber;
    while (number !=0) {
        reverseNumber = reverseNumber*10 + number%10;
        number = number/10;
    }
    return reverseNumber;
}
-(NSString*)isNumberAPalindrome:(int)inputNumber
{
    if (inputNumber == [self reverseNumber:inputNumber]) {
        return @"YES";
    }else{
        return @"NO";
    }
}
@end
