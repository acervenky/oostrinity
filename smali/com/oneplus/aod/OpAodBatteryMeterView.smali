.class public Lcom/oneplus/aod/OpAodBatteryMeterView;
.super Landroid/widget/ImageView;
.source "OpAodBatteryMeterView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# instance fields
.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mBatteryStyle:I

.field private final mDrawable:Lcom/oneplus/battery/OpBatteryMeterDrawable;

.field private mFrameColor:I

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/aod/OpAodBatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/aod/OpAodBatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mBatteryStyle:I

    .line 83
    sget-object v1, Lcom/android/systemui/R$styleable;->BatteryMeterView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 85
    sget p3, Lcom/android/systemui/R$styleable;->BatteryMeterView_frameColor:I

    sget v0, Lcom/android/systemui/R$color;->batterymeter_frame_color:I

    .line 86
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 85
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    .line 87
    new-instance v0, Lcom/oneplus/battery/OpBatteryMeterDrawable;

    invoke-direct {v0, p1, p3}, Lcom/oneplus/battery/OpBatteryMeterDrawable;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mDrawable:Lcom/oneplus/battery/OpBatteryMeterDrawable;

    .line 88
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 90
    iput p3, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mFrameColor:I

    .line 92
    iget-object p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mDrawable:Lcom/oneplus/battery/OpBatteryMeterDrawable;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodBatteryMeterView;->initHandler()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/OpAodBatteryMeterView;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodBatteryMeterView;->handleUpdateViewState()V

    return-void
.end method

.method private handleUpdateViewState()V
    .locals 3

    .line 143
    iget v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mBatteryStyle:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 144
    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mDrawable:Lcom/oneplus/battery/OpBatteryMeterDrawable;

    iget v1, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mFrameColor:I

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1, v2}, Lcom/oneplus/battery/OpBatteryMeterDrawable;->setColors(III)V

    .line 145
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    :cond_0
    return-void
.end method

.method private initHandler()V
    .locals 2

    .line 53
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getAodWindowManager()Lcom/oneplus/aod/OpAodWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Lcom/oneplus/aod/OpAodWindowManager;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 57
    new-instance v1, Lcom/oneplus/aod/OpAodBatteryMeterView$1;

    invoke-virtual {v0}, Lcom/oneplus/aod/OpAodWindowManager;->getUIHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/oneplus/aod/OpAodBatteryMeterView$1;-><init>(Lcom/oneplus/aod/OpAodBatteryMeterView;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method private updateViewState()V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 139
    iget-object p0, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onAttachedToWindow()V
    .locals 5

    .line 105
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 107
    const-class v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 108
    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 110
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodBatteryMeterView;->updateViewState()V

    .line 113
    iget v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mBatteryStyle:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 114
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    move v3, v1

    goto :goto_1

    .line 115
    :cond_1
    iget-object v3, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$dimen;->aod_battery_icon_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v3

    :goto_1
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 116
    iget-object v3, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$dimen;->aod_battery_icon_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-eqz v0, :cond_2

    goto :goto_2

    .line 117
    :cond_2
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->aod_battery_icon_margin_start:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v1

    :goto_2
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 118
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->aod_battery_icon_margin_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v0

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 119
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 0

    .line 130
    iget-object p3, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mDrawable:Lcom/oneplus/battery/OpBatteryMeterDrawable;

    invoke-virtual {p3, p1}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->setBatteryLevel(I)V

    .line 131
    iget-object p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mDrawable:Lcom/oneplus/battery/OpBatteryMeterDrawable;

    invoke-virtual {p1, p2}, Lcom/oneplus/battery/OpBatteryMeterDrawable;->setCharging(Z)V

    .line 133
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodBatteryMeterView;->updateViewState()V

    return-void
.end method

.method public onBatteryStyleChanged(I)V
    .locals 1

    .line 159
    iget v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mBatteryStyle:I

    if-eq v0, p1, :cond_0

    .line 160
    iput p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mBatteryStyle:I

    .line 161
    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mDrawable:Lcom/oneplus/battery/OpBatteryMeterDrawable;

    invoke-virtual {v0, p1}, Lcom/oneplus/battery/OpBatteryMeterDrawable;->onBatteryStyleChanged(I)V

    .line 162
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodBatteryMeterView;->updateViewState()V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 124
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 125
    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 169
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 171
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 172
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 173
    iget v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mBatteryStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-eq p1, p2, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 176
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 178
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mDrawable:Lcom/oneplus/battery/OpBatteryMeterDrawable;

    invoke-virtual {v0, p1}, Lcom/oneplus/battery/OpBatteryMeterDrawable;->setPowerSaveEnabled(Z)V

    .line 153
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodBatteryMeterView;->updateViewState()V

    return-void
.end method
