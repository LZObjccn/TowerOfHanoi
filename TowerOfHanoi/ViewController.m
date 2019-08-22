//
//  ViewController.m
//  TowerOfHanoi
//
//  Created by lizizhen on 2019/8/22.
//  Copyright © 2019 lizi' zhen. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    char ch1 = 'A';
    char ch2 = 'B';
    char ch3 = 'C';
    
    int var = 3;
    printf("请输入盘子的个数: %d\n", var);
    hannuota(var, ch1, ch2, ch3);
}

// n代表盘子的个数 A,B,C代表柱子
// A代表需要移动盘子的柱子 B代表需要借助的柱子  C代表最后要将盘子移动的目的柱子
void hannuota(int n, char A, char B, char C) {
    // 伪算法
    // 如果是一个盘子，直接将A柱子上的盘子从A移动到C
    // 否则，将A柱子上的n-1个盘子借助C移动到B，
    //      再将A柱子上的盘子移动到C
    //      最后将B柱子上的盘子借助A移动到C
    
    if (n == 1) {
        printf("将编号为%d的盘子从%c柱子移动到%c柱子\n", n, A, C);
    } else {
        hannuota(n-1, A, C, B);
        printf("将编号为%d的盘子从%c柱子移动到%c柱子\n", n, A, C);
        hannuota(n-1, B, A, C);
    }
}
@end

