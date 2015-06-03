//
//  MTSlider.m
//  Delegates
//
//  Created by Rishabh Jain on 6/3/15.
//  Copyright (c) 2015 Rishabh Jain. All rights reserved.
//

#import "MTSlider.h"

@implementation MTSlider

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@synthesize sliderDelegate;

- (id)initWithFrame:(CGRect)frame andDelegate:(id<MTSliderDelegate>)delegateObject{
    self = [super initWithFrame:frame];
    if (self) {
        self.sliderDelegate = delegateObject;
        self.value = [sliderDelegate startPositionForMTSlider:self];
    }
    return self;
}

- (void)setValue:(float)value animated:(BOOL)animated{
    [super setValue:value animated:animated];
    //respondsToSelector
    if (sliderDelegate != nil && [sliderDelegate respondsToSelector:@selector(MTSliderDidChange:withValue:)]){
        [[self sliderDelegate] MTSliderDidChange:self withValue:value];
    }
}

@end
