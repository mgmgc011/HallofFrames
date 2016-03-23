//
//  CustomView.h
//  HallOfFrames
//
//  Created by Mingu Chu on 3/23/16.
//  Copyright © 2016 Mingu Chu. All rights reserved.
//

#import <UIKit/UIKit.h>



@class CustomView;

@protocol CustomViewDelegate <NSObject>

-(void)customView:(CustomView *)view didTapButton:(UIButton *)button;

@end


@interface CustomView : UIView

@property (nonatomic, assign) id<CustomViewDelegate>delegate;

@end
