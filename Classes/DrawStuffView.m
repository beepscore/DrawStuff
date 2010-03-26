//
//  DrawStuffView.m
//  DrawStuff
//
//  Created by Steve Baker on 3/25/10.
//  Copyright 2010 Beepscore LLC. All rights reserved.
//

#import "DrawStuffView.h"
#include <math.h>     // for M_PI


@implementation DrawStuffView


- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        // Initialization code
    }
    return self;
}


#pragma mark Memory management methods
- (void)dealloc {
    [super dealloc];
}


void doClippedCircle(CGContextRef context)
{
    // adjust dimensions for phone window portrait orientation
    CGPoint circleCenter = {160., 100.};
    float circleRadius = 80.0;
    float startingAngle = 0.0, endingAngle = 2*M_PI;
    CGRect ourRect = { {90.,30.} , {140., 140.} };
    
    // ***** Filled Circle *****
    CGContextSetRGBFillColor(context, 0.663, 0., 0.031, 1.0);
    CGContextBeginPath(context);
    // Construct the circle path counterclockwise.
    CGContextAddArc(context, circleCenter.x, circleCenter.y, circleRadius,
                    startingAngle, endingAngle, 0);
    CGContextDrawPath(context, kCGPathFill);
    
    // ***** Stroked Square *****
    CGContextStrokeRect(context, ourRect);
    
    // Translate so that the next drawing doesn't overlap what
    // has already been drawn.
//    CGContextTranslateCTM(context,
//                          ourRect.size.width + circleRadius + 5., 0);
    CGContextTranslateCTM(context,
                          0, ourRect.size.height + circleRadius + 5.0);
    // Create a rectangular path and clip to that path.
    CGContextBeginPath(context);
    CGContextAddRect(context, ourRect);
    CGContextClip(context);
    
    // ***** Clipped Circle *****
    CGContextBeginPath(context);
    // Construct the circle path counterclockwise.
    CGContextAddArc(context, circleCenter.x, circleCenter.y, circleRadius,
                    startingAngle, endingAngle, 0);
    CGContextDrawPath(context, kCGPathFill);
}


- (void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
    doClippedCircle(context);
}

@end
