.class public Lcom/oneplus/systemui/bubbles/OpBubbleExpandedView;
.super Landroid/widget/RelativeLayout;
.source "OpBubbleExpandedView.java"


# instance fields
.field protected mActivityViewWidth:I

.field protected mBubblePortraitImeHeight:I

.field protected mOpNotificationController:Lcom/oneplus/notification/OpNotificationController;

.field protected mSettingsContainer:Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 28
    const-class p1, Lcom/oneplus/notification/OpNotificationController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/notification/OpNotificationController;

    iput-object p1, p0, Lcom/oneplus/systemui/bubbles/OpBubbleExpandedView;->mOpNotificationController:Lcom/oneplus/notification/OpNotificationController;

    .line 29
    invoke-direct {p0}, Lcom/oneplus/systemui/bubbles/OpBubbleExpandedView;->loadDimensions()V

    return-void
.end method

.method private loadDimensions()V
    .locals 2

    .line 41
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->qr_bubble_activity_view_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v0

    iput v0, p0, Lcom/oneplus/systemui/bubbles/OpBubbleExpandedView;->mActivityViewWidth:I

    .line 42
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->qr_bubble_portrait_ime_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/systemui/bubbles/OpBubbleExpandedView;->mBubblePortraitImeHeight:I

    return-void
.end method

.method private updateView()V
    .locals 3

    .line 56
    const-class v0, Lcom/android/systemui/bubbles/BubbleExpandedView;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "updateView"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 48
    invoke-direct {p0}, Lcom/oneplus/systemui/bubbles/OpBubbleExpandedView;->updateView()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 34
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 36
    sget v0, Lcom/android/systemui/R$id;->settings_buttons:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;

    iput-object v0, p0, Lcom/oneplus/systemui/bubbles/OpBubbleExpandedView;->mSettingsContainer:Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;

    .line 37
    invoke-direct {p0}, Lcom/oneplus/systemui/bubbles/OpBubbleExpandedView;->loadDimensions()V

    return-void
.end method

.method public setSettingsButtonOnLeft(Z)V
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/oneplus/systemui/bubbles/OpBubbleExpandedView;->mSettingsContainer:Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->setOnLeft(Z)V

    return-void
.end method
