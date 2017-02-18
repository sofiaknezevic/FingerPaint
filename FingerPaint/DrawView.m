//
//  DrawView.m
//  FingerPaint
//
//  Created by Sofia Knezevic on 2017-02-17.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import "DrawView.h"

@implementation DrawView

- (instancetype)init:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        [self setMultipleTouchEnabled:NO];
        [self setBackgroundColor:[UIColor whiteColor]];
        
        _path = [[UIBezierPath alloc] init];
        
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        
        [self setMultipleTouchEnabled:NO];
        [self setBackgroundColor:[UIColor whiteColor]];
        
        _path = [[UIBezierPath alloc] init];
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    [[UIColor magentaColor]setStroke];
    [self.path setLineWidth:3.0];
    [self.path stroke];

}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self];
    [self.path moveToPoint:point];
    
    
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
    [super touchesBegan:touches withEvent:event];
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self];
    [self.path addLineToPoint:point];
    
    [self setNeedsDisplay];
    
}

//- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
//    [self setNeedsDisplay];
//    
//}
//
//- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
//    [self touchesEnded:touches withEvent:event];
//    
//}



@end
