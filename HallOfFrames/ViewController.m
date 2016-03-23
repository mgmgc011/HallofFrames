//
//  ViewController.m
//  HallOfFrames
//
//  Created by Mingu Chu on 3/23/16.
//  Copyright © 2016 Mingu Chu. All rights reserved.
//

#import "ViewController.h"
#import "Picture.h"
#import "PictureCollectionViewCell.h"
#import "CustomView.h"


@interface ViewController () <UICollectionViewDataSource, UICollectionViewDelegate, CustomViewDelegate>


@property (weak, nonatomic) IBOutlet UICollectionView *pictureCollectionView;
@property NSArray *pictureS;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Picture *p1 = [[Picture alloc] initWithImage:[UIImage imageNamed:@"Apple"] withFrameColor:[UIColor clearColor]];
    Picture *p2 = [[Picture alloc] initWithImage:[UIImage imageNamed:@"facebook"] withFrameColor:[UIColor clearColor]];
    Picture *p3 = [[Picture alloc] initWithImage:[UIImage imageNamed:@"Google"] withFrameColor:[UIColor clearColor]];
    Picture *p4 = [[Picture alloc] initWithImage:[UIImage imageNamed:@"Samsung"] withFrameColor:[UIColor clearColor]];
    Picture *p5 = [[Picture alloc] initWithImage:[UIImage imageNamed:@"Twitter"] withFrameColor:[UIColor clearColor]];

    
    
    self.pictureS = @[p1, p2, p3, p4, p5];
}



-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.pictureS.count;
}

-(UICollectionViewCell *) collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    PictureCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CellID" forIndexPath:indexPath];
    
    Picture *picture = self.pictureS[indexPath.row];
    cell.imageView.image =picture.image;
    cell.backgroundColor = picture.frameColor;
    
    return cell;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"tapped");
    
    PictureCollectionViewCell *cell = (PictureCollectionViewCell *)[collectionView cellForItemAtIndexPath:indexPath];
    CustomView *view = [[[NSBundle mainBundle] loadNibNamed:@"CustomizationView" owner:self options:nil] objectAtIndex:0];
    view.delegate = self;

    [cell addSubview:view];
    
}


-(void)customView:(CustomView *)view didTapButton:(UIButton *)button {
    NSIndexPath *indexPath = [[self.pictureCollectionView indexPathsForSelectedItems] firstObject];
    Picture *picture = self.pictureS[indexPath.row];
    if ([button.currentTitle isEqualToString:@"RED"]) {
        picture.frameColor = [UIColor redColor];
    } else if ([button.currentTitle isEqualToString:@"GREEN"])
        picture.frameColor = [UIColor greenColor];
    else {
        picture.frameColor = [UIColor blueColor];
    }
    
    [self.pictureCollectionView reloadItemsAtIndexPaths:@[indexPath]];
}


@end
