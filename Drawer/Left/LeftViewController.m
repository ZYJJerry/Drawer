//
//  LeftViewController.m
//  Drawer
//
//  Created by Jerry on 16/9/14.
//  Copyright © 2016年 周玉举. All rights reserved.
//

#import "LeftViewController.h"
#import "UIImage+ImageBlurEffect.h"
#import "HelperDefine.h"
#import "SubViewController.h"
#import "AppDelegate.h"
@interface LeftViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong)UITableView * myTableView;
@end

@implementation LeftViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view = [[UIView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    /**
     *  毛玻璃图片
     */
//    self.view.backgroundColor = [UIColor whiteColor];
//    [self setView:[[UIImageView alloc] initWithImage:[[UIImage imageNamed:@"001.jpg"] applyLightEffect]]];
    /**
     *  毛玻璃
     */
    UIBlurEffect *light = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
    UIVisualEffectView *lightView = [[UIVisualEffectView alloc]initWithEffect:light];
    lightView.frame = self.view.bounds;
    [self.view addSubview:lightView];
    [self initSubViews];
}

- (void)initSubViews{
    self.myTableView = [[UITableView alloc]initWithFrame:CGRectMake(100, 0,ScreenWidth - 100 , ScreenHeight) style:UITableViewStyleGrouped];
    self.myTableView.delegate = self;
    self.myTableView.dataSource = self;
    self.myTableView.scrollEnabled = NO;
    self.myTableView.backgroundColor = [UIColor clearColor];
    [self.myTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    [self.view addSubview:self.myTableView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 5;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString * identifier = @"cell";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:identifier forIndexPath:indexPath];
    cell.textLabel.text = @"测试";
    cell.backgroundColor = ClearColor;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    SubViewController * svc = [[SubViewController alloc]init];
    AppDelegate  *dele = [UIApplication sharedApplication].delegate;
    [dele.nav pushViewController:svc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
