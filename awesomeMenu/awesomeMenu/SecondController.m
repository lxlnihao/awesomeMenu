//
//  SecondController.m
//  awesomeMenu
//
//  Created by 刘晓龙 on 2018/9/27.
//  Copyright © 2018年 wajiu. All rights reserved.
//

#import "SecondController.h"
#import "AwesomeMenu.h"
@interface SecondController ()<AwesomeMenuDelegate>

@end

@implementation SecondController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"第二种实现方式";

    UIImage *storyMenuItemImage = [UIImage imageNamed:@"bg-menuitem.png"];
    UIImage *storyMenuItemImagePressed = [UIImage imageNamed:@"bg-menuitem-highlighted.png"];
    
    UIImage *starImage = [UIImage imageNamed:@"icon-star.png"];
    
     AwesomeMenuItem *starMenuItem1 = [[AwesomeMenuItem alloc] initWithImage:storyMenuItemImage
     highlightedImage:storyMenuItemImagePressed
     ContentImage:starImage
     highlightedContentImage:nil];
    
     AwesomeMenuItem *starMenuItem2 = [[AwesomeMenuItem alloc] initWithImage:storyMenuItemImage
     highlightedImage:storyMenuItemImagePressed
     ContentImage:starImage
     highlightedContentImage:nil];
    
     AwesomeMenuItem *starMenuItem3 = [[AwesomeMenuItem alloc] initWithImage:storyMenuItemImage
     highlightedImage:storyMenuItemImagePressed
     ContentImage:starImage
     highlightedContentImage:nil];
    
     AwesomeMenuItem *starMenuItem4 = [[AwesomeMenuItem alloc] initWithImage:storyMenuItemImage
     highlightedImage:storyMenuItemImagePressed
     ContentImage:starImage
     highlightedContentImage:nil];
    
     AwesomeMenuItem *starMenuItem5 = [[AwesomeMenuItem alloc] initWithImage:storyMenuItemImage
     highlightedImage:storyMenuItemImagePressed
     ContentImage:starImage
     highlightedContentImage:nil];
     
     NSArray *menus = [NSArray arrayWithObjects:starMenuItem1, starMenuItem2, starMenuItem3, starMenuItem4, starMenuItem5, nil];
     
     AwesomeMenuItem *startItem = [[AwesomeMenuItem alloc] initWithImage:[UIImage imageNamed:@"bg-addbutton.png"]
     highlightedImage:[UIImage imageNamed:@"bg-addbutton-highlighted.png"]
     ContentImage:[UIImage imageNamed:@"icon-plus.png"]
     highlightedContentImage:[UIImage imageNamed:@"icon-plus-highlighted.png"]];
     
     AwesomeMenu *menu = [[AwesomeMenu alloc] initWithFrame:self.view.bounds startItem:startItem optionMenus:menus];
    
     menu.delegate = self;
     
     menu.menuWholeAngle = -M_PI_2;
//    menu.menuWholeAngle = -M_PI;
     menu.farRadius = 110.0f;
     menu.endRadius = 100.0f;
     menu.nearRadius = 90.0f;
     menu.animationDuration = 0.3f;
     menu.startPoint = CGPointMake(414-50, 410.0);
    [self.view addSubview:menu];
    
    
}

- (void)awesomeMenu:(AwesomeMenu *)menu didSelectIndex:(NSInteger)idx
{
    NSLog(@"Select the index : %d",idx);
}
- (void)awesomeMenuDidFinishAnimationClose:(AwesomeMenu *)menu {
    NSLog(@"Menu was closed!");
    menu.backgroundColor = [UIColor clearColor];
}
- (void)awesomeMenuDidFinishAnimationOpen:(AwesomeMenu *)menu {
    NSLog(@"Menu is open!");
}
-(void)awesomeMenuWillAnimateOpen:(AwesomeMenu *)menu{
    menu.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.3];
}
-(void)awesomeMenuWillAnimateClose:(AwesomeMenu *)menu{
    
}

@end
