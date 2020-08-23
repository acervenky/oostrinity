.class public Lcom/oneplus/aod/OpAodNotificationIconAreaController;
.super Ljava/lang/Object;
.source "OpAodNotificationIconAreaController.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mContrastColorUtil:Lcom/android/internal/util/ContrastColorUtil;

.field private mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private mIconHPadding:I

.field private mIconSize:I

.field private mMoreIcon:Landroid/widget/TextView;

.field private mNotificationIconArea:Landroid/view/View;

.field private mNotificationIconDozeHelper:Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

.field private mNotificationIcons:Lcom/oneplus/aod/OpIconMerger;

.field private mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-class v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 52
    invoke-static {p1}, Lcom/android/internal/util/ContrastColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/ContrastColorUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mContrastColorUtil:Lcom/android/internal/util/ContrastColorUtil;

    .line 53
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mNotificationIconDozeHelper:Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    .line 54
    iput-object p1, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mContext:Landroid/content/Context;

    .line 55
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    iput p1, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mUserId:I

    .line 56
    invoke-virtual {p0, p2}, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->initViews(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private generateIconLayoutParams(I)Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .line 73
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mIconSize:I

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-eqz p1, :cond_0

    .line 76
    iget p0, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mIconHPadding:I

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    :cond_0
    return-object v0
.end method

.method private reloadDimens()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 88
    sget v1, Lcom/android/systemui/R$dimen;->aod_notification_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mIconSize:I

    .line 89
    sget v1, Lcom/android/systemui/R$dimen;->aod_notification_icon_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mIconHPadding:I

    .line 91
    iget-object v0, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mMoreIcon:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 94
    iget-object p0, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->aod_notification_icon_padding:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    return-void
.end method


# virtual methods
.method public initViews(Landroid/view/ViewGroup;)V
    .locals 1

    .line 63
    sget v0, Lcom/android/systemui/R$id;->notification_icon_area_inner:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mNotificationIconArea:Landroid/view/View;

    .line 65
    iget-object p1, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mNotificationIconArea:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->notificationIcons:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oneplus/aod/OpIconMerger;

    iput-object p1, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mNotificationIcons:Lcom/oneplus/aod/OpIconMerger;

    .line 67
    iget-object p1, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mNotificationIconArea:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->moreIcon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mMoreIcon:Landroid/widget/TextView;

    .line 68
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->reloadDimens()V

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0

    .line 83
    iput p1, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mUserId:I

    return-void
.end method

.method public updateNotificationIcons(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)V
    .locals 13

    .line 99
    iget-object v0, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mUserId:I

    const/4 v2, 0x0

    const-string v3, "aod_clock_style"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x7

    const/16 v3, 0x8

    if-eq v1, v0, :cond_11

    const/4 v4, 0x1

    if-eq v4, v0, :cond_11

    const/4 v5, 0x3

    if-eq v5, v0, :cond_11

    if-ne v1, v0, :cond_0

    goto/16 :goto_9

    .line 108
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->reloadDimens()V

    .line 110
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v6

    .line 113
    iget-object v7, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mNotificationIcons:Lcom/oneplus/aod/OpIconMerger;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    if-le v6, v5, :cond_1

    goto :goto_0

    :cond_1
    move v4, v2

    .line 116
    :goto_0
    sget-boolean v7, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    const-string v8, "AodNotificationIconArea"

    if-eqz v7, :cond_2

    .line 117
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateNotificationIcons: iconSize="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", maxIconAmounts="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", showMore="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-nez v6, :cond_3

    const-string/jumbo p1, "updateNotificationIcons: setVisibility to gone"

    .line 121
    invoke-static {v8, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object p0, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mNotificationIconArea:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 125
    :cond_3
    iget-object v7, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mNotificationIconArea:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v8, 0x4

    if-nez v0, :cond_4

    .line 127
    iget-object v1, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v9, Lcom/android/systemui/R$dimen;->notification_icon_default_empty_view_height:I

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_2

    :cond_4
    const/4 v9, 0x6

    if-eq v0, v9, :cond_6

    if-eq v0, v1, :cond_6

    const/16 v1, 0xa

    if-eq v0, v1, :cond_6

    const/16 v1, 0x9

    if-eq v0, v1, :cond_6

    if-eq v0, v8, :cond_6

    if-eq v0, v3, :cond_6

    const/4 v1, 0x5

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    goto :goto_1

    :cond_5
    const/16 v1, 0x28

    if-ne v0, v1, :cond_7

    .line 138
    iget-object v1, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v9, Lcom/android/systemui/R$dimen;->aod_mcl_notification_icon_marginTop:I

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v1

    iput v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_2

    .line 136
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v9, Lcom/android/systemui/R$dimen;->notification_icon_analog_empty_view_height:I

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v1

    iput v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 140
    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mNotificationIconArea:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz v4, :cond_b

    if-ne v0, v8, :cond_8

    .line 146
    iget-object v0, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$font;->oneplus_aod_font:I

    invoke-static {v0, v1}, Landroid/support/v4/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v0

    const/16 v1, 0x190

    .line 147
    invoke-static {v0, v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_3

    .line 149
    :cond_8
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isMCLVersion()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 150
    invoke-static {v5}, Lcom/oneplus/util/OpUtils;->getMclTypeface(I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_3

    .line 152
    :cond_9
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_3
    if-eqz v0, :cond_a

    .line 156
    iget-object v1, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mMoreIcon:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 159
    :cond_a
    iget-object v0, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mMoreIcon:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mMoreIcon:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v6, -0x3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 162
    :cond_b
    iget-object v0, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mMoreIcon:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    if-eqz v4, :cond_c

    goto :goto_5

    :cond_c
    move v5, v6

    .line 167
    :goto_5
    iget-object v0, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mNotificationIcons:Lcom/oneplus/aod/OpIconMerger;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 168
    iget-object v0, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v0

    :goto_6
    if-ge v2, v5, :cond_10

    .line 170
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v1, :cond_f

    .line 172
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->isHighPriority(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_8

    .line 176
    :cond_d
    new-instance v3, Lcom/oneplus/aod/OpAodNotificationIconView;

    iget-object v4, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSlot()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    invoke-direct {v3, v4, v6, v7}, Lcom/oneplus/aod/OpAodNotificationIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    .line 177
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/oneplus/aod/OpAodNotificationIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 178
    invoke-direct {p0, v2}, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->generateIconLayoutParams(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 183
    iget-object v4, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mContrastColorUtil:Lcom/android/internal/util/ContrastColorUtil;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/internal/util/ContrastColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v4

    if-eqz v4, :cond_e

    const/4 v4, -0x1

    .line 186
    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_7

    .line 188
    :cond_e
    iget-object v6, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mNotificationIconDozeHelper:Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x1

    move-object v7, v3

    invoke-virtual/range {v6 .. v12}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->setImageDark(Landroid/widget/ImageView;ZZJZ)V

    .line 191
    :goto_7
    iget-object v4, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mNotificationIcons:Lcom/oneplus/aod/OpIconMerger;

    invoke-virtual {v4, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_f
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_10
    return-void

    .line 104
    :cond_11
    :goto_9
    iget-object p0, p0, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mNotificationIconArea:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
