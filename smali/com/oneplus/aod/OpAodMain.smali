.class public Lcom/oneplus/aod/OpAodMain;
.super Landroid/widget/RelativeLayout;
.source "OpAodMain.java"


# instance fields
.field private mBatteryAnalogContainer:Landroid/widget/LinearLayout;

.field private mBatteryContainer:Landroid/widget/LinearLayout;

.field private mBatteryDefaultContainer:Landroid/widget/LinearLayout;

.field private mClockStyle:I

.field private mDateTimeView:Landroid/view/View;

.field private mKeyguardClockContainer:Landroid/widget/LinearLayout;

.field private mNotificationIconContainer:Landroid/widget/LinearLayout;

.field private mOwnerInfo:Landroid/widget/TextView;

.field private mSliceInfoContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lcom/oneplus/aod/OpAodMain;->mClockStyle:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lcom/oneplus/aod/OpAodMain;->mClockStyle:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lcom/oneplus/aod/OpAodMain;->mClockStyle:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lcom/oneplus/aod/OpAodMain;->mClockStyle:I

    return-void
.end method

.method private updateClockStyle()V
    .locals 7

    .line 201
    iget v0, p0, Lcom/oneplus/aod/OpAodMain;->mClockStyle:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne v0, v1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mNotificationIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 204
    iget-object p0, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v3, 0x3

    if-eq v0, v3, :cond_d

    const/4 v3, 0x7

    if-ne v0, v3, :cond_1

    goto/16 :goto_6

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mNotificationIconContainer:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 217
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 220
    :cond_2
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 221
    iget v5, p0, Lcom/oneplus/aod/OpAodMain;->mClockStyle:I

    const/16 v6, 0x28

    if-ne v5, v6, :cond_3

    goto :goto_0

    :cond_3
    move v1, v4

    .line 223
    :goto_0
    iget v5, p0, Lcom/oneplus/aod/OpAodMain;->mClockStyle:I

    if-eqz v5, :cond_a

    if-eqz v1, :cond_4

    goto/16 :goto_3

    :cond_4
    const/4 v1, 0x6

    if-eq v5, v1, :cond_9

    if-ne v5, v3, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x4

    if-ne v5, v1, :cond_6

    .line 237
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->aod_clock_typographic_battery_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 239
    iget-object v1, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryDefaultContainer:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5

    :cond_6
    const/16 v1, 0xa

    if-eq v5, v1, :cond_8

    const/16 v1, 0x9

    if-eq v5, v1, :cond_8

    if-eq v5, v2, :cond_8

    const/4 v1, 0x5

    if-ne v5, v1, :cond_7

    goto :goto_1

    :cond_7
    const/4 v1, 0x2

    if-ne v5, v1, :cond_c

    .line 247
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->aod_clock_digital2_battery_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 249
    iget-object v1, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryDefaultContainer:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    .line 244
    :cond_8
    :goto_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->aod_clock_analog_min2_battery_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 245
    iget-object v1, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryAnalogContainer:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    .line 234
    :cond_9
    :goto_2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->date_view_analog_marginTop:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 235
    iget-object v1, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryAnalogContainer:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    :cond_a
    :goto_3
    if-eqz v1, :cond_b

    .line 225
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->aod_mcl_battery_marginTop:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_4

    .line 227
    :cond_b
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->battery_empty_view_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 229
    :goto_4
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 230
    iget-object v1, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryDefaultContainer:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c
    :goto_5
    return-void

    .line 208
    :cond_d
    :goto_6
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mNotificationIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 209
    iget-object p0, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private updateLayout()V
    .locals 13

    .line 119
    iget v0, p0, Lcom/oneplus/aod/OpAodMain;->mClockStyle:I

    const v1, 0x800005

    const/16 v2, 0x11

    const v3, 0x800003

    const/4 v4, 0x3

    const/4 v5, 0x4

    if-ne v0, v5, :cond_0

    .line 120
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mKeyguardClockContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 121
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mNotificationIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_0

    :cond_0
    if-ne v0, v4, :cond_1

    .line 123
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mKeyguardClockContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 124
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mNotificationIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_0

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mKeyguardClockContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 127
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mNotificationIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 131
    :goto_0
    iget v0, p0, Lcom/oneplus/aod/OpAodMain;->mClockStyle:I

    const/4 v6, 0x5

    const/4 v7, 0x0

    if-eq v0, v4, :cond_4

    const/16 v8, 0xa

    if-eq v0, v8, :cond_4

    const/16 v8, 0x9

    if-eq v0, v8, :cond_4

    const/16 v8, 0x8

    if-eq v0, v8, :cond_4

    if-ne v0, v6, :cond_2

    goto :goto_1

    :cond_2
    if-ne v0, v5, :cond_3

    .line 138
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v8, Lcom/android/systemui/R$dimen;->aod_clock_typographic_margin_start_end:I

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v0

    goto :goto_2

    .line 140
    :cond_3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v8, Lcom/android/systemui/R$dimen;->main_view_horizontal_margin:I

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v0

    goto :goto_2

    :cond_4
    :goto_1
    move v0, v7

    .line 142
    :goto_2
    iget-object v8, p0, Lcom/oneplus/aod/OpAodMain;->mDateTimeView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 143
    invoke-virtual {v8, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 144
    invoke-virtual {v8, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 146
    iget-object v8, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryDefaultContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 147
    invoke-virtual {v8, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 148
    invoke-virtual {v8, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 149
    iget v8, p0, Lcom/oneplus/aod/OpAodMain;->mClockStyle:I

    const/4 v9, 0x1

    if-ne v8, v5, :cond_5

    .line 150
    iget-object v8, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryDefaultContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_3

    .line 152
    :cond_5
    iget-object v8, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryDefaultContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 155
    :goto_3
    iget-object v8, p0, Lcom/oneplus/aod/OpAodMain;->mNotificationIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 156
    invoke-virtual {v8, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 157
    invoke-virtual {v8, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 159
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v8, Lcom/android/systemui/R$dimen;->aod_slice_view_horizontal_margin:I

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v0

    .line 160
    iget-object v8, p0, Lcom/oneplus/aod/OpAodMain;->mSliceInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 161
    iget v10, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/android/systemui/R$dimen;->aod_main_layout_margin_bottom:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    invoke-static {v11}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v11

    invoke-virtual {v8, v0, v10, v0, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    .line 163
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryAnalogContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 164
    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 165
    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 166
    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 167
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 168
    iget v8, p0, Lcom/oneplus/aod/OpAodMain;->mClockStyle:I

    if-ne v8, v4, :cond_8

    .line 169
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v8, Lcom/android/systemui/R$dimen;->aod_clock_digital_date_margin_top:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 171
    iget-object v3, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryAnalogContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v3

    if-ne v9, v3, :cond_6

    move v3, v9

    goto :goto_4

    :cond_6
    move v3, v7

    :goto_4
    if-eqz v3, :cond_7

    .line 173
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v8, Lcom/android/systemui/R$dimen;->oneplus_contorl_padding_space4:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_5

    .line 176
    :cond_7
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v8, Lcom/android/systemui/R$dimen;->oneplus_contorl_padding_space4:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 179
    :goto_5
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_6

    :cond_8
    if-ne v8, v5, :cond_9

    .line 181
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v8, Lcom/android/systemui/R$dimen;->aod_clock_typographic_date_margin_top:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 183
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 185
    :cond_9
    :goto_6
    iget-object v1, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryAnalogContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    iget v0, p0, Lcom/oneplus/aod/OpAodMain;->mClockStyle:I

    if-ne v0, v5, :cond_c

    .line 189
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    if-ne v0, v9, :cond_a

    move v7, v9

    .line 191
    :cond_a
    iget-object p0, p0, Lcom/oneplus/aod/OpAodMain;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v7, :cond_b

    move v4, v6

    :cond_b
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_7

    .line 194
    :cond_c
    iget-object p0, p0, Lcom/oneplus/aod/OpAodMain;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setGravity(I)V

    :goto_7
    return-void
.end method

.method private updateRTL()V
    .locals 1

    .line 88
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/OpAodMain;->updateRTL(I)V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    .line 75
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 77
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodMain;->updateRTL()V

    .line 78
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodMain;->updateLayout()V

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    .line 115
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodMain;->updateLayout()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 54
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 56
    sget v0, Lcom/android/systemui/R$id;->keyguard_clock_container:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mKeyguardClockContainer:Landroid/widget/LinearLayout;

    .line 57
    sget v0, Lcom/android/systemui/R$id;->battery_container:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryContainer:Landroid/widget/LinearLayout;

    .line 58
    sget v0, Lcom/android/systemui/R$id;->battery_default_container:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryDefaultContainer:Landroid/widget/LinearLayout;

    .line 59
    sget v0, Lcom/android/systemui/R$id;->battery_analog_container:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryAnalogContainer:Landroid/widget/LinearLayout;

    .line 60
    sget v0, Lcom/android/systemui/R$id;->notification_icon_area_inner:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mNotificationIconContainer:Landroid/widget/LinearLayout;

    .line 61
    sget v0, Lcom/android/systemui/R$id;->slice_info_container:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mSliceInfoContainer:Landroid/widget/LinearLayout;

    .line 62
    sget v0, Lcom/android/systemui/R$id;->date_time_view:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mDateTimeView:Landroid/view/View;

    .line 64
    sget v0, Lcom/android/systemui/R$id;->owner_info:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mOwnerInfo:Landroid/widget/TextView;

    .line 67
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodMain;->updateRTL()V

    .line 68
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodMain;->updateLayout()V

    .line 69
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodMain;->updateClockStyle()V

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodMain;->updateClockStyle()V

    .line 84
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodMain;->updateRTL()V

    return-void
.end method

.method public setClockStyle(I)V
    .locals 0

    .line 255
    iput p1, p0, Lcom/oneplus/aod/OpAodMain;->mClockStyle:I

    .line 256
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodMain;->updateClockStyle()V

    .line 257
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodMain;->updateLayout()V

    return-void
.end method

.method protected updateRTL(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 95
    iget-object p1, p0, Lcom/oneplus/aod/OpAodMain;->mNotificationIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 96
    iget-object p1, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryDefaultContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 97
    iget-object p1, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryAnalogContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 98
    iget-object p1, p0, Lcom/oneplus/aod/OpAodMain;->mSliceInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 100
    iget-object p1, p0, Lcom/oneplus/aod/OpAodMain;->mKeyguardClockContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    goto :goto_1

    .line 103
    :cond_1
    iget-object p1, p0, Lcom/oneplus/aod/OpAodMain;->mNotificationIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 104
    iget-object p1, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryDefaultContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 105
    iget-object p1, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryAnalogContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 106
    iget-object p1, p0, Lcom/oneplus/aod/OpAodMain;->mSliceInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 108
    iget-object p1, p0, Lcom/oneplus/aod/OpAodMain;->mKeyguardClockContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 111
    :goto_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method
