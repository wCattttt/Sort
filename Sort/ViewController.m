//
//  ViewController.m
//  Sort
//
//  Created by 魏唯隆 on 2018/3/16.
//  Copyright © 2018年 魏唯隆. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSMutableArray *values = @[@37,@33,@24,@4,@58,@35,@40,@98,@76,@82].mutableCopy;
    NSLog(@"排序前： %@", values);
    
//    [self selectSort:values];
    [self insertSort:values];
    NSLog(@"排序后： %@", values);
    
}

#pragma mark 冒泡排序
/*----------------------冒泡---------------------*/
- (void)lowBubbleSort:(NSMutableArray *)values {
    for (int i=0; i<values.count; i++) {
        for (int j=i; j<values.count; j++) {
            NSNumber *jValue = values[j];
            NSNumber *iValue = values[i];
            if(iValue.integerValue > jValue.integerValue){
                [values exchangeObjectAtIndex:i withObjectAtIndex:j];
            }
        }
        NSLog(@"第 %d 次排序： %@", i+1, values);
    }
}
- (void)bubbleSort:(NSMutableArray *)values {
    for (int i=0; i<values.count - 1; i++) {
        for (int j=0; j<values.count - i - 1; j++) {
            NSNumber *jValue = values[j];
            NSNumber *jUpValue = values[j+1];
            if(jValue.integerValue > jUpValue.integerValue){
                [values exchangeObjectAtIndex:j withObjectAtIndex:j + 1];
            }
        }
        NSLog(@"第 %d 次排序： %@", i+1, values);
    }
}
- (void)fastBubbleSort:(NSMutableArray *)values {
    BOOL flag = YES;
    for (int i=0; i<values.count - 1 && flag == YES; i++) {
        flag = NO;
        for (int j=0; j<values.count - i - 1; j++) {
            NSNumber *jValue = values[j];
            NSNumber *jUpValue = values[j+1];
            if(jValue.integerValue > jUpValue.integerValue){
                [values exchangeObjectAtIndex:j withObjectAtIndex:j + 1];
                flag = YES;
            }
        }
        NSLog(@"第 %d 次排序： %@", i+1, values);
    }
}

#pragma mark 选择排序
/*----------------------选择---------------------*/
- (void)selectSort:(NSMutableArray *)values {
    for (int i=0; i<values.count - 1; i++) {
        NSInteger index = i;
        for (int j=i; j<values.count; j++) {
            NSNumber *indexValue = values[index];
            NSNumber *jValue = values[j];
            
            if(indexValue.integerValue > jValue.integerValue){
                index = j;
            }
        }
        [values exchangeObjectAtIndex:i withObjectAtIndex:index];
        NSLog(@"第 %d 次排序： %@", i+1, values);
    }
}

#pragma mark 插入排序
/*----------------------插入---------------------*/
- (void)insertSort:(NSMutableArray *)values {
    for (int i=1; i < values.count; i++) {
        id iValue = values[i];
        int j = i-1;
        for (j=i-1; j >= 0 && iValue < values[j]; j--) {
            [values exchangeObjectAtIndex:j+1 withObjectAtIndex:j];
        }
        [values replaceObjectAtIndex:j+1 withObject:iValue];
        NSLog(@"第 %d 次排序： %@", i, values);
    }
}

@end
