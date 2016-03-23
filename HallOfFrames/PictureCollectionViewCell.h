//
//  PictureCollectionViewCell.h
//  HallOfFrames
//
//  Created by Mingu Chu on 3/23/16.
//  Copyright © 2016 Mingu Chu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Picture.h"

@class PictureCollectionViewCell;


@protocol PictureCollectionViewCellDelegate <NSObject>

- (void)pictureCollectionViewCell:(PictureCollectionViewCell *)cell didTapButton:(UITapGestureRecognizer *)sender;

@end

@interface PictureCollectionViewCell : UICollectionViewCell

@property (nonatomic, assign) id<PictureCollectionViewCellDelegate>delegate;


@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end
