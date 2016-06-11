//
//  calConvertor.m
//  MeasuringUnit
//
//  Created by epita on 11/06/16.
//  Copyright © 2016 epita. All rights reserved.
//

#import "calConvertor.h"
#import "math.h"


@implementation calConvertor

-(double) conArea:(double)compArea1 :(double)compArea2 :(double)value
{
    
    if (compArea1 == 0)
    {
        if(compArea2 ==1)
        {
            return value*1000000;
        }
        else if (compArea2== 2)
        {
            return value*10763910.416;
        }
        else{
            return value;
        }
    }
    if (compArea1 == 1)
    {
        if(compArea2 ==0)
        {
            return value*0.0000010;
        }
        else if (compArea2== 2)
        {
            return value*10.7639;
        }
        else{
            return value;
        }
    }
    if (compArea1 == 2)
    {
        if(compArea2 ==0)
        {
            return value*0.00000009290304;;
        }
        else if (compArea2== 1)
        {
            return value*0.09290304;
        }
        else{
            return value;
        }
    }
    else
    {
        return value;
    }
}

-(double) conLen:(double)compLen1 :(double)compLen2 :(double)value
{
    if (compLen1 == 0)
    {
        if (compLen2 ==1)
        {
            return  value* 0.001;
        }
        else if (compLen2 ==2)
        {
            return value*0.00062137119223733;
        }
        else if (compLen2 == 3)
        {
            return value*3.2808398950131;
        }
        else{
            return value;
        }
    }
    if(compLen1==1)
    {
        if (compLen2 ==0)
        {
            return  value* 1000;
        }
        else if (compLen2 ==2)
        {
            return value*0.62137119223733;
        }
        else if (compLen2 == 3)
        {
            return value*3280.8398950131;
        }
        else{
            return value;
        }
    }
    if (compLen1==2)
    {
        if (compLen2 ==0)
        {
            return  value*1609.344;
        }
        else if (compLen2 ==1)
        {
            return value*1.609344;
        }
        else if (compLen2 == 3)
        {
            return value*5280;
        }
        else{
            return value;
        }
    }
    if (compLen1==3)
    {
        if (compLen2 ==0)
        {
            return  value* 0.3048;
        }
        else if (compLen2 ==1)
        {
            return value*0.0003048;
        }
        else if (compLen2 == 2)
        {
            return value*0.000189393939;
        }
        else{
            return value;
        }
    }
    else
    {
        return  value;
    }
}

-(double)conTemp:(double)compTemp1 :(double)compTemp2 :(double)value
{
if (compTemp1 ==0)
{
    if(compTemp2 ==1)
    {
        return value*1.8+32;
    }
    else if(compTemp2 ==2)
    {
        return value+273.15;
    }
    else{
        return value;
    }
}
    if(compTemp1==1)
    {
        if(compTemp2 ==0)
        {
            return ((value-32)/1.8);
        }
        else if(compTemp2 ==2)
        {
            return (((value+459.6)*5)/9);
        }
        else{
            return value;
        }
    }
    if(compTemp1==2)
    {
        
        if(compTemp2 ==0)
        {
            return value-273.15;
        }
        else if(compTemp2 ==1)
        {
            return ((value*1.8)-459.67);
        }
        else{
            return value;
        }
    }
    else{
        return value;
    }
    
    
}

@end
