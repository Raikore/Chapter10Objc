//
//  ItemStore.m
//  HomePwner
//
//  Created by Daniel Kwolek on 9/16/16.
//  Copyright © 2016 Arcore. All rights reserved.
//

#import "ItemStore.h"
#import "Item.h"

@interface ItemStore ()
@property (nonatomic) NSMutableArray *items;
@end

@implementation ItemStore
- (instancetype)init
{
    self = [super init];
    if (self) {
        _items = [NSMutableArray array];
        for (int i = 0; i < 5; i++) {
            [self createItem];
        }
    }
    return self;
}

// MARK: - Item Management
- (NSArray *)allItems {
    return [self.items copy];
}
- (Item *)createItem {
    Item *newItem = [[Item alloc] initWithRandomValues];
    [self.items addObject:newItem];
    return newItem;
}

@end

