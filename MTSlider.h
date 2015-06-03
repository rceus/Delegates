//
//  MTSlider.h
//  Delegates
//
//  Created by Rishabh Jain on 6/3/15.
//  Copyright (c) 2015 Rishabh Jain. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MTSlider;
@protocol MTSliderDelegate <NSObject>
@optional
-(void)MTSliderDidChange:(MTSlider *)MTSlider withValue:(CGFloat)value;
@required
-(CGFloat)startPositionForMTSlider:(MTSlider *)MTSlider;
@end

@interface MTSlider : UISlider
{
    __weak id <MTSliderDelegate> sliderDelegate;
}
@property (nonatomic, weak) id <MTSliderDelegate> sliderDelegate;

- (id)initWithFrame:(CGRect)frame andDelegate:(id<MTSliderDelegate>)delegateObject;
@end

