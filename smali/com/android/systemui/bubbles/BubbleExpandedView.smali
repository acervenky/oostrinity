.class public Lcom/android/systemui/bubbles/BubbleExpandedView;
.super Lcom/oneplus/systemui/bubbles/OpBubbleExpandedView;
.source "BubbleExpandedView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/bubbles/BubbleExpandedView$OnBubbleBlockedListener;
    }
.end annotation


# instance fields
.field private mActivityView:Landroid/app/ActivityView;

.field private mActivityViewReady:Z

.field private mAppIcon:Landroid/graphics/drawable/Drawable;

.field private mAppName:Ljava/lang/String;

.field private mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

.field private mBubbleHeight:I

.field private mBubbleIntent:Landroid/app/PendingIntent;

.field private mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field private mKeyboardVisible:Z

.field private mMinHeight:I

.field private mNeedsNewHeight:Z

.field private mNotifRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field private mNotificationManagerService:Landroid/app/INotificationManager;

.field private mOnBubbleBlockedListener:Lcom/android/systemui/bubbles/BubbleExpandedView$OnBubbleBlockedListener;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPointerDrawable:Landroid/graphics/drawable/ShapeDrawable;

.field private mPointerHeight:I

.field private mPointerMargin:I

.field private mPointerView:Landroid/view/View;

.field private mPointerWidth:I

.field private mSettingsIcon:Lcom/android/systemui/statusbar/AlphaOptimizedButton;

.field private mSettingsIconHeight:I

.field private mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

.field private mStateCallback:Landroid/app/ActivityView$StateCallback;

.field private mTaskId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 163
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleExpandedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 167
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/bubbles/BubbleExpandedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 171
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/bubbles/BubbleExpandedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 176
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/systemui/bubbles/OpBubbleExpandedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 93
    iput-boolean p2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityViewReady:Z

    .line 112
    const-class p2, Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/bubbles/BubbleController;

    iput-object p2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    const/4 p2, -0x1

    .line 117
    iput p2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mTaskId:I

    .line 121
    new-instance p2, Lcom/android/systemui/bubbles/BubbleExpandedView$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/bubbles/BubbleExpandedView$1;-><init>(Lcom/android/systemui/bubbles/BubbleExpandedView;)V

    iput-object p2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mStateCallback:Landroid/app/ActivityView$StateCallback;

    .line 177
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPm:Landroid/content/pm/PackageManager;

    .line 178
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->bubble_expanded_default_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mMinHeight:I

    .line 180
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->bubble_pointer_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerMargin:I

    :try_start_0
    const-string p1, "notification"

    .line 183
    invoke-static {p1}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 182
    invoke-static {p1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mNotificationManagerService:Landroid/app/INotificationManager;
    :try_end_0
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "BubbleExpandedView"

    .line 185
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/bubbles/BubbleExpandedView;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityViewReady:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/systemui/bubbles/BubbleExpandedView;Z)Z
    .locals 0

    .line 79
    iput-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityViewReady:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/bubbles/BubbleExpandedView;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/systemui/bubbles/BubbleExpandedView;I)I
    .locals 0

    .line 79
    iput p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mTaskId:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/bubbles/BubbleExpandedView;)Lcom/android/systemui/bubbles/BubbleController;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/bubbles/BubbleExpandedView;)Landroid/app/PendingIntent;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mBubbleIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/bubbles/BubbleExpandedView;)Landroid/app/ActivityView;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    return-object p0
.end method

.method private applyRowState(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 5

    .line 585
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->reset()V

    const/4 p0, 0x0

    .line 586
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setHeadsUp(Z)V

    .line 587
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->resetTranslation()V

    .line 588
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setOnKeyguard(Z)V

    .line 589
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setOnAmbient(Z)V

    .line 590
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setClipBottomAmount(I)V

    .line 591
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setClipTopAmount(I)V

    const/4 v0, 0x0

    .line 592
    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setContentTransformationAmount(FZ)V

    const/4 v1, 0x1

    .line 593
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setIconsVisible(Z)V

    .line 599
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v2

    if-nez v2, :cond_0

    .line 600
    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;-><init>()V

    .line 601
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v3

    iput v3, v2, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 602
    iput-boolean p0, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->gone:Z

    .line 603
    iput-boolean p0, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 604
    iput-boolean p0, v2, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->dimmed:Z

    .line 605
    iput-boolean p0, v2, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->dark:Z

    const/high16 v3, 0x3f800000    # 1.0f

    .line 606
    iput v3, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    const/4 v4, -0x1

    .line 607
    iput v4, v2, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    .line 608
    iput v0, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    .line 609
    iput v0, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    .line 610
    iput v0, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    .line 611
    iput v3, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->scaleX:F

    .line 612
    iput v3, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->scaleY:F

    .line 613
    iput-boolean v1, v2, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    .line 614
    iput-boolean p0, v2, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    .line 615
    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    return-void
.end method

.method private getBubbleIntent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Landroid/app/PendingIntent;
    .locals 1

    .line 630
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 631
    invoke-virtual {v0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    .line 632
    iget-object p0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/systemui/bubbles/BubbleController;->canLaunchInActivityView(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    .line 633
    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getDimenForPackageUser(ILjava/lang/String;I)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 v1, -0x1

    if-ne p3, v1, :cond_0

    move p3, v0

    .line 677
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p2, p3}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object p0

    .line 678
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "BubbleExpandedView"

    const-string p2, "Couldn\'t find desired height res id"

    .line 683
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_1
    :cond_1
    return v0
.end method

.method private getSettingsIntent(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 1

    .line 619
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.APP_NOTIFICATION_BUBBLE_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.provider.extra.APP_PACKAGE"

    .line 620
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "app_uid"

    .line 621
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x8000000

    .line 622
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 623
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p1, 0x20000000

    .line 624
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object p0
.end method

.method private logBubbleClickEvent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V
    .locals 13

    .line 655
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 657
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 658
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v3

    .line 659
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    .line 660
    invoke-virtual {v1}, Lcom/android/systemui/bubbles/BubbleStackView;->getExpandedBubble()Lcom/android/systemui/bubbles/Bubble;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/systemui/bubbles/BubbleStackView;->getBubbleIndex(Lcom/android/systemui/bubbles/Bubble;)I

    move-result v5

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    .line 661
    invoke-virtual {v1}, Lcom/android/systemui/bubbles/BubbleStackView;->getBubbleCount()I

    move-result v6

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    .line 663
    invoke-virtual {v1}, Lcom/android/systemui/bubbles/BubbleStackView;->getNormalizedXPosition()F

    move-result v8

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    .line 664
    invoke-virtual {v1}, Lcom/android/systemui/bubbles/BubbleStackView;->getNormalizedYPosition()F

    move-result v9

    .line 665
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->showInShadeWhenBubble()Z

    move-result v10

    .line 666
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isForegroundService()Z

    move-result v11

    iget-object p0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    .line 667
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/bubbles/BubbleController;->isForegroundApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    const/16 v1, 0x95

    move v7, p2

    .line 656
    invoke-static/range {v1 .. v12}, Landroid/util/StatsLog;->write(ILjava/lang/String;Ljava/lang/String;IIIIFFZZZ)I

    return-void
.end method

.method private updateExpandedView()V
    .locals 2

    .line 388
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->getBubbleIntent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mBubbleIntent:Landroid/app/PendingIntent;

    .line 389
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mBubbleIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mNotifRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 392
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 393
    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mNotifRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActivityView;->setVisibility(I)V

    .line 401
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->updateView()V

    return-void
.end method

.method private updateSettingsContentDescription()V
    .locals 5

    .line 496
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mSettingsIcon:Lcom/android/systemui/statusbar/AlphaOptimizedButton;

    if-nez v0, :cond_0

    return-void

    .line 500
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->bubbles_settings_button_description:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mAppName:Ljava/lang/String;

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateWidth()V
    .locals 2

    .line 694
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->usingActivityView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {v0}, Landroid/app/ActivityView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 696
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->getActivityViewWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 697
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {p0, v0}, Landroid/app/ActivityView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private usingActivityView()Z
    .locals 1

    .line 571
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mBubbleIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method applyThemeAttrs()V
    .locals 4

    .line 253
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/R$styleable;->BubbleExpandedView:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 254
    sget v1, Lcom/android/systemui/R$styleable;->BubbleExpandedView_android_colorBackgroundFloating:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 256
    sget v2, Lcom/android/systemui/R$styleable;->BubbleExpandedView_android_dialogCornerRadius:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 258
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 261
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setTint(I)V

    .line 264
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/ScreenDecorationsUtils;->supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {v0, v2}, Landroid/app/ActivityView;->setCornerRadius(F)V

    .line 269
    :cond_0
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->getThemeColor(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 271
    sget v0, Lcom/android/systemui/R$id;->settings_buttons:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 272
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 274
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public cleanUpExpandedState()V
    .locals 2

    .line 553
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mNotifRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 555
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    if-nez v0, :cond_0

    return-void

    .line 558
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityViewReady:Z

    if-eqz v1, :cond_1

    .line 559
    invoke-virtual {v0}, Landroid/app/ActivityView;->release()V

    .line 561
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 562
    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    const/4 v0, 0x0

    .line 563
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityViewReady:Z

    .line 566
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->removeTask()V

    return-void
.end method

.method getActivityView()Landroid/view/View;
    .locals 0

    .line 740
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    return-object p0
.end method

.method public getActivityViewWidth()I
    .locals 2

    .line 714
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->usingActivityView()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 715
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 716
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->QUICK_REPLY_BUBBLE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/systemui/bubbles/OpBubbleExpandedView;->mOpNotificationController:Lcom/oneplus/notification/OpNotificationController;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 717
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/notification/OpNotificationController;->isQuickReplyApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 718
    iget p0, p0, Lcom/oneplus/systemui/bubbles/OpBubbleExpandedView;->mActivityViewWidth:I

    goto :goto_0

    .line 721
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleStackView;->getAllowableActivityViewWidth()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/systemui/bubbles/OpBubbleExpandedView;->mSettingsContainer:Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;

    invoke-virtual {v1}, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->getButtonSize()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object p0, p0, Lcom/oneplus/systemui/bubbles/OpBubbleExpandedView;->mSettingsContainer:Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;

    .line 722
    invoke-virtual {p0}, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->getContainerMargin()I

    move-result p0

    sub-int/2addr v0, p0

    return v0

    :cond_1
    const/4 p0, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getVirtualDisplayId()I
    .locals 1

    .line 578
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->usingActivityView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {p0}, Landroid/app/ActivityView;->getVirtualDisplayId()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public synthetic lambda$onClick$1$BubbleExpandedView(Landroid/content/Intent;)V
    .locals 2

    .line 487
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 488
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const/16 v0, 0x9

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->logBubbleClickEvent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    return-void
.end method

.method public synthetic lambda$onFinishInflate$0$BubbleExpandedView(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .line 242
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    .line 243
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 244
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mKeyboardVisible:Z

    .line 245
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mKeyboardVisible:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mNeedsNewHeight:Z

    if-eqz v0, :cond_1

    .line 246
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->updateHeight()V

    .line 248
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 478
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-nez v0, :cond_0

    return-void

    .line 481
    :cond_0
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 482
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 483
    sget v0, Lcom/android/systemui/R$id;->settings_button:I

    if-ne p1, v0, :cond_1

    .line 484
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 485
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v0

    .line 484
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->getSettingsIntent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 486
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleExpandedView$iBWZJs6SpKXryYoaz8vCiAaSUqI;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleExpandedView$iBWZJs6SpKXryYoaz8vCiAaSUqI;-><init>(Lcom/android/systemui/bubbles/BubbleExpandedView;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/BubbleStackView;->collapseStack(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 282
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 283
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mKeyboardVisible:Z

    .line 284
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mNeedsNewHeight:Z

    .line 285
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    if-eqz p0, :cond_0

    .line 286
    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/ActivityView;->setForwardedInsets(Landroid/graphics/Insets;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .line 191
    invoke-super {p0}, Lcom/oneplus/systemui/bubbles/OpBubbleExpandedView;->onFinishInflate()V

    .line 193
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 199
    sget v1, Lcom/android/systemui/R$dimen;->bubble_pointer_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerWidth:I

    .line 200
    sget v1, Lcom/android/systemui/R$dimen;->bubble_pointer_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerHeight:I

    .line 203
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    iget v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerHeight:I

    int-to-float v2, v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/systemui/recents/TriangleShape;->create(FFZ)Lcom/android/systemui/recents/TriangleShape;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerDrawable:Landroid/graphics/drawable/ShapeDrawable;

    .line 212
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->bubble_expanded_header_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mSettingsIconHeight:I

    .line 221
    new-instance v0, Landroid/app/ActivityView;

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/app/ActivityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    .line 224
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    sget v1, Lcom/android/systemui/R$id;->ql_bubble_activity_view:I

    invoke-virtual {v0, v1}, Landroid/app/ActivityView;->setId(I)V

    .line 226
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 234
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    .line 235
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mSettingsIcon:Lcom/android/systemui/statusbar/AlphaOptimizedButton;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    .line 237
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->applyThemeAttrs()V

    .line 239
    new-instance v0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleExpandedView$BUIzmdcN6x4TJwxemNSjSITgNeY;

    invoke-direct {v0, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleExpandedView$BUIzmdcN6x4TJwxemNSjSITgNeY;-><init>(Lcom/android/systemui/bubbles/BubbleExpandedView;)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method performBackPressIfNeeded()Z
    .locals 1

    .line 405
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->usingActivityView()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 408
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {p0}, Landroid/app/ActivityView;->performBackPress()V

    const/4 p0, 0x1

    return p0
.end method

.method public populateExpandedView()V
    .locals 2

    .line 353
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->usingActivityView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mStateCallback:Landroid/app/ActivityView$StateCallback;

    invoke-virtual {v0, p0}, Landroid/app/ActivityView;->setCallback(Landroid/app/ActivityView$StateCallback;)V

    goto :goto_0

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mNotifRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-ne v0, p0, :cond_1

    return-void

    :cond_1
    if-eqz v0, :cond_2

    .line 363
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mNotifRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 365
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mNotifRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method public removeTask()V
    .locals 2

    .line 732
    iget v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mTaskId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 733
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mTaskId:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->removeTask(I)V

    :cond_0
    return-void
.end method

.method public setEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/bubbles/BubbleStackView;Ljava/lang/String;)V
    .locals 2

    .line 319
    iput-object p2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    .line 320
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 321
    iput-object p3, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mAppName:Ljava/lang/String;

    .line 325
    :try_start_0
    iget-object p3, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPm:Landroid/content/pm/PackageManager;

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 326
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v1, 0xc2200

    .line 325
    invoke-virtual {p3, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 332
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mAppIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :catch_0
    :cond_0
    iget-object p3, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mAppIcon:Landroid/graphics/drawable/Drawable;

    if-nez p3, :cond_1

    .line 338
    iget-object p3, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p3}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 341
    :cond_1
    iget-object p3, p0, Lcom/oneplus/systemui/bubbles/OpBubbleExpandedView;->mSettingsContainer:Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;

    invoke-virtual {p3, p1}, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->setEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 342
    iget-object p1, p0, Lcom/oneplus/systemui/bubbles/OpBubbleExpandedView;->mSettingsContainer:Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;

    invoke-virtual {p1, p2}, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->setStackView(Lcom/android/systemui/bubbles/BubbleStackView;)V

    .line 344
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->applyThemeAttrs()V

    .line 345
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->showSettingsIcon()V

    .line 346
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->updateExpandedView()V

    return-void
.end method

.method public setOnBlockedListener(Lcom/android/systemui/bubbles/BubbleExpandedView$OnBubbleBlockedListener;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mOnBubbleBlockedListener:Lcom/android/systemui/bubbles/BubbleExpandedView$OnBubbleBlockedListener;

    return-void
.end method

.method public setPointerPosition(F)V
    .locals 3

    .line 539
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 543
    :cond_0
    iget v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr p1, v1

    .line 545
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 546
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method showSettingsIcon()V
    .locals 1

    .line 506
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mSettingsIcon:Lcom/android/systemui/statusbar/AlphaOptimizedButton;

    if-nez v0, :cond_0

    return-void

    .line 510
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->updateSettingsContentDescription()V

    .line 511
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mSettingsIcon:Lcom/android/systemui/statusbar/AlphaOptimizedButton;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public update(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    .line 374
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 377
    iget-object v0, p0, Lcom/oneplus/systemui/bubbles/OpBubbleExpandedView;->mSettingsContainer:Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;

    invoke-virtual {v0, p1}, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->setEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 379
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->updateSettingsContentDescription()V

    .line 380
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->updateHeight()V

    goto :goto_0

    .line 382
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to update entry with different key, new entry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " old entry: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BubbleExpandedView"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method updateHeight()V
    .locals 6

    .line 413
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->usingActivityView()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 414
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    .line 418
    sget-boolean v1, Lcom/oneplus/util/OpUtils;->QUICK_REPLY_BUBBLE:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/systemui/bubbles/OpBubbleExpandedView;->mOpNotificationController:Lcom/oneplus/notification/OpNotificationController;

    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 419
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/oneplus/notification/OpNotificationController;->isQuickReplyApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleStackView;->getMaxExpandedHeight()I

    move-result v0

    int-to-float v0, v0

    move v1, v0

    move v0, v2

    goto :goto_4

    :cond_0
    if-nez v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleStackView;->getMaxExpandedHeight()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    :goto_1
    move v1, v0

    move v0, v3

    goto :goto_4

    .line 431
    :cond_1
    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getDesiredHeightResId()I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    if-eqz v1, :cond_3

    .line 434
    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getDesiredHeightResId()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 435
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 436
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 434
    invoke-direct {p0, v0, v1, v4}, Lcom/android/systemui/bubbles/BubbleExpandedView;->getDimenForPackageUser(ILjava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    goto :goto_3

    .line 438
    :cond_3
    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getDesiredHeight()I

    move-result v0

    int-to-float v0, v0

    .line 439
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    :goto_3
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_4

    goto :goto_1

    .line 441
    :cond_4
    iget v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mMinHeight:I

    goto :goto_0

    .line 443
    :goto_4
    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {v4}, Lcom/android/systemui/bubbles/BubbleStackView;->getMaxExpandedHeight()I

    move-result v4

    .line 444
    iget-object v5, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v2, :cond_5

    .line 445
    iget-object v5, p0, Lcom/oneplus/systemui/bubbles/OpBubbleExpandedView;->mSettingsContainer:Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;

    invoke-virtual {v5}, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->getButtonSize()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/oneplus/systemui/bubbles/OpBubbleExpandedView;->mSettingsContainer:Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;

    invoke-virtual {v5}, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->getContainerMargin()I

    move-result v5

    sub-int/2addr v4, v5

    if-eqz v0, :cond_5

    .line 447
    iget v5, p0, Lcom/oneplus/systemui/bubbles/OpBubbleExpandedView;->mBubblePortraitImeHeight:I

    sub-int/2addr v4, v5

    :cond_5
    int-to-float v4, v4

    .line 450
    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 451
    iget v4, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mMinHeight:I

    int-to-float v4, v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 452
    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {v4}, Landroid/app/ActivityView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 453
    iget v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float v5, v5

    cmpl-float v5, v5, v1

    if-eqz v5, :cond_6

    goto :goto_5

    :cond_6
    move v2, v3

    :goto_5
    iput-boolean v2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mNeedsNewHeight:Z

    .line 454
    iget-boolean v2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mKeyboardVisible:Z

    if-nez v2, :cond_a

    .line 461
    iget-object v2, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_7

    if-eqz v0, :cond_7

    const/4 v0, -0x1

    goto :goto_6

    :cond_7
    float-to-int v0, v1

    .line 465
    :goto_6
    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    float-to-int v0, v1

    .line 467
    iput v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mBubbleHeight:I

    .line 468
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {v0, v4}, Landroid/app/ActivityView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 469
    iput-boolean v3, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mNeedsNewHeight:Z

    goto :goto_8

    .line 472
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mNotifRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v0

    goto :goto_7

    :cond_9
    iget v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mMinHeight:I

    :goto_7
    iput v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mBubbleHeight:I

    :cond_a
    :goto_8
    return-void
.end method

.method updateInsets(Landroid/view/WindowInsets;)V
    .locals 3

    .line 295
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->usingActivityView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 297
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {v1}, Landroid/app/ActivityView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 298
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {v1}, Landroid/app/ActivityView;->getLocationOnScreen()[I

    move-result-object v1

    const/4 v2, 0x1

    .line 299
    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {v2}, Landroid/app/ActivityView;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    .line 300
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    .line 301
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result p1

    sub-int/2addr v2, p1

    add-int/2addr v1, v2

    .line 302
    iget p1, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, p1

    const/4 p1, 0x0

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 304
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-static {p1, p1, p1, v0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/ActivityView;->setForwardedInsets(Landroid/graphics/Insets;)V

    :cond_0
    return-void
.end method

.method public updateView()V
    .locals 1

    .line 518
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->usingActivityView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    .line 519
    invoke-virtual {v0}, Landroid/app/ActivityView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    .line 520
    invoke-virtual {v0}, Landroid/app/ActivityView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {v0}, Landroid/app/ActivityView;->onLocationChanged()V

    goto :goto_0

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mNotifRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_1

    .line 523
    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->applyRowState(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 525
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->updateHeight()V

    .line 527
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->updateWidth()V

    .line 528
    iget-object v0, p0, Lcom/oneplus/systemui/bubbles/OpBubbleExpandedView;->mSettingsContainer:Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;

    invoke-virtual {v0}, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->updateView()V

    .line 529
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {p0}, Lcom/oneplus/systemui/bubbles/OpBubbleStackView;->isStackOnLeftOrWillBe()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    const/4 p0, 0x2

    :goto_1
    invoke-static {v0, p0}, Lcom/oneplus/systemui/OpSystemUIInjector;->setIMEPosition(Landroid/content/Context;I)V

    return-void
.end method
