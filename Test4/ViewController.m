//
//  ViewController.m
//  Test4
//
//  Created by Jessen hsu on 2019/10/30.
//  Copyright © 2019 Jessen hsu. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"
#import "YYText.h"

@interface ViewController (){
    UIView *_containView;
    UIView *_videnceView;
    UIView *_desView;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"投诉";
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *lbl1 = [[UILabel alloc]init];
    lbl1.backgroundColor = [UIColor grayColor];
    lbl1.text = @"请填写投诉信息";
    [self.view addSubview:lbl1];
    [lbl1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.offset(0);
        make.top.offset(88);
        make.height.mas_equalTo(40);
    }];
    
    UILabel *lbl2 = [[UILabel alloc]init];
    lbl2.backgroundColor = [UIColor whiteColor];
    lbl2.text = @"商户名称";
    [self.view addSubview:lbl2];
    [lbl2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.offset(0);
        make.top.equalTo(lbl1.mas_bottom).offset(0);
        make.height.mas_equalTo(40);
    }];
    

    UILabel *lbl3 = [[UILabel alloc]init];
    lbl3.backgroundColor = [UIColor grayColor];
    lbl3.text = @"违规类型";
    [self.view addSubview:lbl3];
    [lbl3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.offset(0);
        make.top.equalTo(lbl2.mas_bottom).offset(0);
        make.height.mas_equalTo(40);
    }];
    
    UIView *containView = [[UIView alloc]init];
    containView.backgroundColor = [UIColor whiteColor];
    _containView = containView;
    [self.view addSubview:_containView];
    [_containView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(lbl3.mas_bottom);
        make.left.right.offset(0);
        make.height.mas_equalTo(120);
    }];
    
    UIButton *changBtn = [[UIButton alloc]init];
    changBtn.tag = 100;
    changBtn.backgroundColor = [UIColor whiteColor];
    [changBtn setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    [changBtn setImage:[UIImage imageNamed:@"timg"] forState:UIControlStateSelected];
    [changBtn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [_containView addSubview:changBtn];
    [changBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.offset(0);
        make.width.mas_equalTo(40);
        make.height.mas_equalTo(40);
    }];

    UILabel *changLbl = [[UILabel alloc]init];
    changLbl.text = @"商户更换老板/停业";
    changLbl.textColor = [UIColor blackColor];
    [_containView addSubview:changLbl];
    [changLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(changBtn.mas_right);
        make.right.offset(0);
        make.top.bottom.equalTo(changBtn);
    }];
    
    
    UIButton *addrErrBtn = [[UIButton alloc]init];
    addrErrBtn.tag = 200;
    addrErrBtn.backgroundColor = [UIColor whiteColor];
    [addrErrBtn setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    [addrErrBtn setImage:[UIImage imageNamed:@"timg"] forState:UIControlStateSelected];
    [addrErrBtn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [_containView addSubview:addrErrBtn];
    [addrErrBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.offset(0);
        make.top.equalTo(changBtn.mas_bottom);
        make.width.height.mas_equalTo(40);
    }];

    UILabel *addrErrLabel = [[UILabel alloc]init];
    addrErrLabel.text = @"商户地址错误";
    addrErrLabel.textColor = [UIColor blackColor];
    [_containView addSubview:addrErrLabel];
    [addrErrLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(addrErrBtn.mas_right);
        make.right.offset(0);
        make.top.equalTo(changLbl.mas_bottom);
        make.height.mas_equalTo(40);
    }];
    
    
    UIButton *otherBtn = [[UIButton alloc]init];
    otherBtn.tag = 300;
    otherBtn.backgroundColor = [UIColor whiteColor];
    [otherBtn setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    [otherBtn setImage:[UIImage imageNamed:@"timg"] forState:UIControlStateSelected];
    [otherBtn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [_containView addSubview:otherBtn];
    [otherBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(addrErrBtn.mas_bottom);
        make.left.offset(0);
        make.width.height.mas_equalTo(40);
    }];

    UILabel *otherLabel = [[UILabel alloc]init];
    otherLabel.text = @"其他";
    otherLabel.textColor = [UIColor blackColor];
    [_containView addSubview:otherLabel];
    [otherLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(addrErrLabel.mas_bottom);
        make.left.equalTo(otherBtn.mas_right);
        make.right.offset(0);
        make.height.mas_equalTo(40);
    }];
    
    _videnceView = [[UIView alloc]init];
    _videnceView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:_videnceView];
    [_videnceView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_containView.mas_bottom);
        make.left.right.offset(0);
        make.height.mas_equalTo(300);
    }];
    
    UILabel *videnceLabel = [[UILabel alloc]init];
    videnceLabel.text = @"投诉证据";
    videnceLabel.backgroundColor = [UIColor grayColor];
    [_videnceView addSubview:videnceLabel];
    [videnceLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.right.offset(0);
        make.height.mas_equalTo(40);
    }];
    
    UITextField *videnceTextField = [[UITextField alloc]init];
    videnceTextField.backgroundColor = [UIColor whiteColor];
    [_videnceView addSubview:videnceTextField];
    [videnceTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(videnceLabel.mas_bottom);
        make.left.right.offset(0);
    }];

    
}

- (void)btnClick:(UIButton *)btn{
    
    if (btn.isSelected) {
        return;
    }
    btn.selected = !btn.isSelected;
    [_containView.subviews enumerateObjectsUsingBlock:^(__kindof UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if ([obj isKindOfClass:[UIButton class]]) {
            UIButton *tmpBtn =(UIButton *)obj;
            if (![tmpBtn isEqual:btn]) {
                tmpBtn.selected = NO;
            }
        }
    }];
    
    if (btn.tag == 300 && btn.isSelected) {
        
        
        
        _desView = [[UIView alloc]init];
        _desView.backgroundColor = [UIColor whiteColor];
        [self.view addSubview:_desView];
        [_desView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(_containView.mas_bottom);
            make.left.right.offset(0);
            make.height.mas_equalTo(300);
        }];
        
        UILabel *disLabel = [[UILabel alloc]init];
            disLabel.backgroundColor = [UIColor grayColor];
            disLabel.text = @"投诉内容（必填）";
            [_desView addSubview:disLabel];
            [disLabel mas_makeConstraints:^(MASConstraintMaker *make) {
                make.top.left.right.offset(0);
                make.height.mas_equalTo(40);
            }];
            UITextField *disTextField = [[UITextField alloc]init];
            disTextField.backgroundColor = [UIColor whiteColor];
            disTextField.placeholder = @"请详细描述。。。。";
        //    disTextField.textAlignment = ;
            [_desView addSubview:disTextField];
            [disTextField mas_makeConstraints:^(MASConstraintMaker *make) {
                make.top.equalTo(disLabel.mas_bottom);
                make.left.right.offset(0);
                make.height.mas_equalTo(260);
            }];
        
        [_videnceView mas_remakeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(_desView.mas_bottom);
            make.left.right.offset(0);
            make.height.mas_equalTo(300);
        }];
        
        
        
        
        
    }
   
    
    if (btn.tag != 300) {
        if (_desView) {
            [_desView removeFromSuperview];
            [_videnceView mas_remakeConstraints:^(MASConstraintMaker *make) {
                make.top.equalTo(_containView.mas_bottom);
                make.left.right.offset(0);
                make.height.mas_equalTo(300);
            }];
        }
           
       }
       
}



@end
