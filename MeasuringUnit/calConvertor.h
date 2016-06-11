//
//  calConvertor.h
//  MeasuringUnit
//
//  Created by epita on 11/06/16.
//  Copyright © 2016 epita. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface calConvertor : NSObject
-(double) conArea:(double)compArea1 :(double)compArea2 :(double)value;
-(double) conLen:(double)compLen1 :(double)compLen2 :(double)value;
-(double) conTemp:(double)compTemp1 :(double)compTemp2 :(double)value;


@end
