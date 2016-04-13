//
//  NotificationTableViewCell.m
//  Deemelo
//
//  Created by Pablo Branchi on 9/5/13.
//  Copyright (c) 2013 Acid. All rights reserved.
//

#import "NotificationTableViewCell.h"
#import "AppDelegate.h"

@implementation NotificationTableViewCell

@synthesize controller, tableView;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)awakeFromNib
{
    [super awakeFromNib];
    
    self.avatarImageContainerView.layer.borderColor = [[UIColor colorWithRed:109/255 green:103/255 blue:98/255 alpha:0.1] CGColor];
    self.avatarImageContainerView.layer.borderWidth = 1.0f;
    
    self.avatarImageContainerView.layer.shadowColor = [UIColor blackColor].CGColor;
    self.avatarImageContainerView.layer.shadowRadius = 2.0f;
    self.avatarImageContainerView.layer.shadowOffset = CGSizeMake(0.0f, 0.0f);
    self.avatarImageContainerView.layer.shadowOpacity = 0.4f;
}

- (IBAction)didSelectAvatar:(id)sender
{
    
    NSString *selector = NSStringFromSelector(_cmd);
        
    selector = [selector stringByAppendingString:@"atIndexPath:"];
        
    SEL newSelector = NSSelectorFromString(selector);
        
    NSIndexPath *indexPath = [[self tableView] indexPathForCell:self];
        
    if (indexPath)
    {
        if ([[self controller] respondsToSelector:newSelector])
        {
            [[self controller] performSelector:newSelector
                                    withObject:sender
                                    withObject:indexPath];
        }
    }
}

- (IBAction)didSelectNotificationMessage:(id)sender
{
    
    NSString *selector = NSStringFromSelector(_cmd);
    
    selector = [selector stringByAppendingString:@"atIndexPath:"];
    
    SEL newSelector = NSSelectorFromString(selector);
    
    NSIndexPath *indexPath = [[self tableView] indexPathForCell:self];
    
    if (indexPath)
    {
        if ([[self controller] respondsToSelector:newSelector])
        {
            [[self controller] performSelector:newSelector
                                    withObject:sender
                                    withObject:indexPath];
        }
    }
}
@end
