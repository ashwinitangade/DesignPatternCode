//
//  ViewController.m
//  DesignPatters
//
//  Created by Ashwini Tangade on 3/9/16.
//  Copyright © 2016 myCompany. All rights reserved.
//

#import "ViewController.h"
#import "SingletonClass.h"
#import "DelegateClass.h"
#import "ObserverClass.h"

@interface ViewController ()
@property(nonatomic,strong)ObserverClass *observerObj;
@end

@implementation ViewController
@synthesize observerObj;
- (void)viewDidLoad {
    [super viewDidLoad];

    NSMutableString *inputString = [NSMutableString stringWithString:@"Ashwini"];
    NSLog(@"Reversed string : %@",[[SingletonClass sharedInstance] reverseString:inputString]);
    NSMutableArray *inputArray = [NSMutableArray arrayWithObjects:@1,@3,@5,@7,@8,@2,@6, nil];
    NSLog(@"Reverse Array :%@",[[SingletonClass sharedInstance] reverseArray:inputArray]);
    NSLog(@"Fibonacci series : %@",[[SingletonClass sharedInstance] fibonacciSeries:5]);
    NSLog(@"Sorted array : %@",[[SingletonClass sharedInstance] sortedArray:inputArray]);
    
    DelegateClass *sampleDelegate = [[DelegateClass alloc]init];
    sampleDelegate.delegate = self;
    [sampleDelegate startSampleProcess];
    
    observerObj = [[ObserverClass alloc] init];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"observingObject" object:observerObj userInfo:@{@"string":@"This is it"}];
    [observerObj.dict setValue:@"\n *** Final Value *** \n" forKey:@"nameChanged"];
    
    NSString *inputStringForPalindrome = @"racecar";
    NSLog(@"is string  %@ a palindrom %@",inputStringForPalindrome,[[SingletonClass sharedInstance]isStringAPalindrome:inputStringForPalindrome]);
    
    int number = 123454321;
    NSLog(@"the reverse number is %d",[[SingletonClass sharedInstance]reverseNumber:number]);
    NSLog(@"is the number %d a palindrome %@",number,[[SingletonClass sharedInstance]isNumberAPalindrome:number]);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)processComplete{
    NSLog(@"Process Completed in viewController");
}

@end
