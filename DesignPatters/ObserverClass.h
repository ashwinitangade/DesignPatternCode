//
//  ObserverClass.h
//  DesignPatters
//
//  Created by Ashwini Tangade on 3/9/16.
//  Copyright © 2016 myCompany. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ObserverClass : NSObject
@property(nonatomic,strong)NSMutableDictionary *dict;
-(void)observerApiCalled:(NSString*)outputString;
@end
