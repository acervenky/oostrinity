.class public Lcom/oneplus/plugin/OpPreventModeView;
.super Landroid/widget/RelativeLayout;
.source "OpPreventModeView.java"


# instance fields
.field private mConfig:Landroid/content/res/Configuration;

.field private mContext:Landroid/content/Context;

.field private mInnerView:Landroid/widget/LinearLayout;

.field mOrientatin:I

.field private mPhone:Landroid/widget/ImageView;

.field private mResources:Landroid/content/res/Resources;

.field private mRippleView:Lcom/oneplus/plugin/OpRippleView;

.field private mScrim:Landroid/view/View;

.field private mTag:Landroid/widget/TextView;

.field private mTag2:Landroid/widget/TextView;

.field private mTagNum1:Landroid/widget/TextView;

.field private mTagNum2:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleCancel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 74
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 82
    iput v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mOrientatin:I

    .line 75
    iput-object p1, p0, Lcom/oneplus/plugin/OpPreventModeView;->mContext:Landroid/content/Context;

    .line 77
    iget-object p1, p0, Lcom/oneplus/plugin/OpPreventModeView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/plugin/OpPreventModeView;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 82
    iput p2, p0, Lcom/oneplus/plugin/OpPreventModeView;->mOrientatin:I

    .line 67
    iput-object p1, p0, Lcom/oneplus/plugin/OpPreventModeView;->mContext:Landroid/content/Context;

    .line 69
    iget-object p1, p0, Lcom/oneplus/plugin/OpPreventModeView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/plugin/OpPreventModeView;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 82
    iput p2, p0, Lcom/oneplus/plugin/OpPreventModeView;->mOrientatin:I

    .line 59
    iput-object p1, p0, Lcom/oneplus/plugin/OpPreventModeView;->mContext:Landroid/content/Context;

    .line 61
    iget-object p1, p0, Lcom/oneplus/plugin/OpPreventModeView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/plugin/OpPreventModeView;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x1

    .line 82
    iput p2, p0, Lcom/oneplus/plugin/OpPreventModeView;->mOrientatin:I

    .line 51
    iput-object p1, p0, Lcom/oneplus/plugin/OpPreventModeView;->mContext:Landroid/content/Context;

    .line 53
    iget-object p1, p0, Lcom/oneplus/plugin/OpPreventModeView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/plugin/OpPreventModeView;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method private playRippleAniamor()V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mRippleView:Lcom/oneplus/plugin/OpRippleView;

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpRippleView;->prepare()V

    .line 184
    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mRippleView:Lcom/oneplus/plugin/OpRippleView;

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpRippleView;->startRipple()V

    return-void
.end method

.method private relayout()V
    .locals 0

    return-void
.end method

.method private updateLayout()V
    .locals 6

    .line 133
    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 135
    iget-object v1, p0, Lcom/oneplus/plugin/OpPreventModeView;->mInnerView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 136
    iget-object v2, p0, Lcom/oneplus/plugin/OpPreventModeView;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/systemui/R$dimen;->prevent_view_inner_view_margin_top:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 138
    iget-object v1, p0, Lcom/oneplus/plugin/OpPreventModeView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 139
    iget-object v2, p0, Lcom/oneplus/plugin/OpPreventModeView;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/systemui/R$dimen;->prevent_view_title_margin_horizontal:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v2

    .line 140
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 141
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 143
    iget-object v1, p0, Lcom/oneplus/plugin/OpPreventModeView;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->prevent_view_title_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1, v0}, Lcom/oneplus/util/OpUtils;->convertSpToFixedPx(FF)I

    move-result v1

    .line 144
    iget-object v2, p0, Lcom/oneplus/plugin/OpPreventModeView;->mTitle:Landroid/widget/TextView;

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 146
    iget-object v1, p0, Lcom/oneplus/plugin/OpPreventModeView;->mPhone:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 147
    iget-object v2, p0, Lcom/oneplus/plugin/OpPreventModeView;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->prevent_view_img_margin_top:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 148
    iget-object v2, p0, Lcom/oneplus/plugin/OpPreventModeView;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->prevent_view_img_width:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 149
    iget-object v2, p0, Lcom/oneplus/plugin/OpPreventModeView;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->prevent_view_img_height:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 151
    iget-object v1, p0, Lcom/oneplus/plugin/OpPreventModeView;->mTitleCancel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 152
    iget-object v2, p0, Lcom/oneplus/plugin/OpPreventModeView;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->prevent_view_title_cancel_margin_top:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 153
    iget-object v2, p0, Lcom/oneplus/plugin/OpPreventModeView;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->prevent_view_cancel_margin_horizontal:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v2

    .line 154
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 155
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 157
    iget-object v1, p0, Lcom/oneplus/plugin/OpPreventModeView;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->prevent_view_title_cancel_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1, v0}, Lcom/oneplus/util/OpUtils;->convertSpToFixedPx(FF)I

    move-result v1

    .line 158
    iget-object v2, p0, Lcom/oneplus/plugin/OpPreventModeView;->mTitleCancel:Landroid/widget/TextView;

    int-to-float v1, v1

    invoke-virtual {v2, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 160
    iget-object v1, p0, Lcom/oneplus/plugin/OpPreventModeView;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->prevent_view_top_tag_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1, v0}, Lcom/oneplus/util/OpUtils;->convertSpToFixedPx(FF)I

    move-result v0

    .line 162
    sget v1, Lcom/android/systemui/R$id;->prevent_view_top_tag_view1:I

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 163
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 164
    iget-object v2, p0, Lcom/oneplus/plugin/OpPreventModeView;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->prevent_view_top_tag_view1_margin_top:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 165
    iget-object v2, p0, Lcom/oneplus/plugin/OpPreventModeView;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->prevent_view_cancel_margin_horizontal:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v2

    .line 166
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 167
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 169
    iget-object v1, p0, Lcom/oneplus/plugin/OpPreventModeView;->mTag:Landroid/widget/TextView;

    int-to-float v0, v0

    invoke-virtual {v1, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 170
    iget-object v1, p0, Lcom/oneplus/plugin/OpPreventModeView;->mTagNum1:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 172
    sget v1, Lcom/android/systemui/R$id;->prevent_view_top_tag_view2:I

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 173
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 174
    iget-object v4, p0, Lcom/oneplus/plugin/OpPreventModeView;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/android/systemui/R$dimen;->prevent_view_top_tag_view2_margin_top:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-static {v4}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 175
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 176
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 177
    iget-object v1, p0, Lcom/oneplus/plugin/OpPreventModeView;->mTag2:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 178
    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mTagNum2:Landroid/widget/TextView;

    invoke-virtual {p0, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    .line 101
    sget v0, Lcom/android/systemui/R$id;->prevent_mode_inner_view:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mInnerView:Landroid/widget/LinearLayout;

    .line 102
    sget v0, Lcom/android/systemui/R$id;->prevent_view_title:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mTitle:Landroid/widget/TextView;

    .line 103
    sget v0, Lcom/android/systemui/R$id;->prevent_mode_phone:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mPhone:Landroid/widget/ImageView;

    .line 104
    sget v0, Lcom/android/systemui/R$id;->prevent_view_title_cancel:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mTitleCancel:Landroid/widget/TextView;

    .line 105
    sget v0, Lcom/android/systemui/R$id;->prevent_view_top_tag_cancel:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mTag:Landroid/widget/TextView;

    .line 106
    sget v0, Lcom/android/systemui/R$id;->prevent_view_top_tag_cancel2:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mTag2:Landroid/widget/TextView;

    .line 107
    sget v0, Lcom/android/systemui/R$id;->prevent_view_top_tag_number1:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mTagNum1:Landroid/widget/TextView;

    .line 108
    sget v0, Lcom/android/systemui/R$id;->prevent_view_top_tag_number2:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mTagNum2:Landroid/widget/TextView;

    .line 109
    sget v0, Lcom/android/systemui/R$id;->rippleview_first:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/plugin/OpRippleView;

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mRippleView:Lcom/oneplus/plugin/OpRippleView;

    .line 110
    new-instance v0, Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/oneplus/plugin/OpPreventModeView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mConfig:Landroid/content/res/Configuration;

    .line 111
    sget v0, Lcom/android/systemui/R$id;->scrim_view:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mScrim:Landroid/view/View;

    .line 112
    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mPhone:Landroid/widget/ImageView;

    sget v1, Lcom/android/systemui/R$drawable;->prevent_mode_img:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 114
    invoke-direct {p0}, Lcom/oneplus/plugin/OpPreventModeView;->relayout()V

    .line 116
    invoke-direct {p0}, Lcom/oneplus/plugin/OpPreventModeView;->updateLayout()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mTitle:Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/R$string;->prevent_view_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 86
    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mTitleCancel:Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/R$string;->prevent_view_title_cancel:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 87
    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mTag:Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/R$string;->prevent_view_top_tag_cancel:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 88
    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mTag2:Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/R$string;->prevent_view_top_tag_cancel2:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 90
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mConfig:Landroid/content/res/Configuration;

    .line 92
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iget v0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mOrientatin:I

    if-eq p1, v0, :cond_0

    .line 93
    iput p1, p0, Lcom/oneplus/plugin/OpPreventModeView;->mOrientatin:I

    .line 95
    invoke-direct {p0}, Lcom/oneplus/plugin/OpPreventModeView;->relayout()V

    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 189
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 191
    iget-object p1, p0, Lcom/oneplus/plugin/OpPreventModeView;->mTitleCancel:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/plugin/OpPreventModeView;->mTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/plugin/OpPreventModeView;->mTag:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 193
    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeView;->mRippleView:Lcom/oneplus/plugin/OpRippleView;

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpRippleView;->stopRipple()V

    goto :goto_0

    .line 195
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/plugin/OpPreventModeView;->playRippleAniamor()V

    :cond_1
    :goto_0
    return-void
.end method
