.class public Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;
.super Landroid/widget/LinearLayout;
.source "BubbleSettingsContainer.java"


# instance fields
.field private mButtonMargin:I

.field private mButtonSize:I

.field private mContainerMargin:I

.field private mCurrentLayout:I

.field private mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field private mExpandButton:Landroid/widget/ImageButton;

.field private mOnLeft:Z

.field private mOrientation:I

.field private mSettingButton:Landroid/widget/ImageButton;

.field private mStackView:Lcom/android/systemui/bubbles/BubbleStackView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 40
    iput p2, p0, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->mCurrentLayout:I

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->mOrientation:I

    .line 61
    invoke-direct {p0}, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->loadDimensions()V

    .line 63
    new-instance p1, Landroid/widget/ImageButton;

    iget-object p2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->mSettingButton:Landroid/widget/ImageButton;

    .line 64
    iget-object p1, p0, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->mSettingButton:Landroid/widget/ImageButton;

    sget p2, Lcom/android/systemui/R$drawable;->bubble_ic_settings:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 65
    iget-object p1, p0, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->mSettingButton:Landroid/widget/ImageButton;

    sget p2, Lcom/android/systemui/R$drawable;->bubble_ic_circle:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 66
    iget-object p1, p0, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->mSettingButton:Landroid/widget/ImageButton;

    new-instance p2, Lcom/oneplus/systemui/bubbles/-$$Lambda$BubbleSettingsContainer$kKiT7XhDGg7vDqzvFQc7wjttSBE;

    invoke-direct {p2, p0}, Lcom/oneplus/systemui/bubbles/-$$Lambda$BubbleSettingsContainer$kKiT7XhDGg7vDqzvFQc7wjttSBE;-><init>(Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    new-instance p1, Landroid/widget/ImageButton;

    iget-object p2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->mExpandButton:Landroid/widget/ImageButton;

    .line 77
    iget-object p1, p0, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->mExpandButton:Landroid/widget/ImageButton;

    sget p2, Lcom/android/systemui/R$drawable;->bubble_ic_expand:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 78
    iget-object p1, p0, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->mExpandButton:Landroid/widget/ImageButton;

    sget p2, Lcom/android/systemui/R$drawable;->bubble_ic_circle:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 79
    iget-object p1, p0, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->mExpandButton:Landroid/widget/ImageButton;

    new-instance p2, Lcom/oneplus/systemui/bubbles/-$$Lambda$BubbleSettingsContainer$xDo9_AJwz7x4eHWr8MKUIqGqVyE;

    invoke-direct {p2, p0}, Lcom/oneplus/systemui/bubbles/-$$Lambda$BubbleSettingsContainer$xDo9_AJwz7x4eHWr8MKUIqGqVyE;-><init>(Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private getButtonLayoutParams()Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 1

    .line 225
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p0, p0, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->mButtonSize:I

    invoke-direct {v0, p0, p0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method private getCurrentLayout(IZ)I
    .locals 0

    const/4 p0, 0x2

    if-ne p1, p0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0

    :cond_1
    const/4 p0, 0x3

    return p0
.end method

.method private getSettingsIntent(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 1

    .line 238
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.APP_NOTIFICATION_BUBBLE_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.provider.extra.APP_PACKAGE"

    .line 239
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "app_uid"

    .line 240
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x8000000

    .line 241
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 242
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p1, 0x20000000

    .line 243
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object p0
.end method

.method private loadDimensions()V
    .locals 2

    .line 108
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->qr_bubble_settings_button_circle_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->mButtonSize:I

    .line 109
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->qr_bubble_settings_button_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->mButtonMargin:I

    .line 110
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->qr_bubble_settings_container_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->mContainerMargin:I

    return-void
.end method

.method private logBubbleClickEvent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V
    .locals 13

    .line 255
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 257
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 258
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v3

    .line 259
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    iget-object v1, p0, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    .line 260
    invoke-virtual {v1}, Lcom/android/systemui/bubbles/BubbleStackView;->getExpandedBubble()Lcom/android/systemui/bubbles/Bubble;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/systemui/bubbles/BubbleStackView;->getBubbleIndex(Lcom/android/systemui/bubbles/Bubble;)I

    move-result v5

    iget-object v1, p0, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    .line 261
    invoke-virtual {v1}, Lcom/android/systemui/bubbles/BubbleStackView;->getBubbleCount()I

    move-result v6

    iget-object v1, p0, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    .line 263
    invoke-virtual {v1}, Lcom/android/systemui/bubbles/BubbleStackView;->getNormalizedXPosition()F

    move-result v8

    iget-object v1, p0, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    .line 264
    invoke-virtual {v1}, Lcom/android/systemui/bubbles/BubbleStackView;->getNormalizedYPosition()F

    move-result v9

    .line 265
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->showInShadeWhenBubble()Z

    move-result v10

    .line 266
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isForegroundService()Z

    move-result v11

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 267
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/bubbles/BubbleController;->isForegroundApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    const/16 v1, 0x95

    move v7, p2

    .line 256
    invoke-static/range {v1 .. v12}, Landroid/util/StatsLog;->write(ILjava/lang/String;Ljava/lang/String;IIIIFFZZZ)I

    return-void
.end method

.method private updateView(I)V
    .locals 7

    if-nez p1, :cond_0

    .line 123
    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 125
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->mOnLeft:Z

    invoke-direct {p0, p1, v0}, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->getCurrentLayout(IZ)I

    move-result v0

    .line 126
    iget v1, p0, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->mCurrentLayout:I

    const-string v2, "BubbleSettingsContainer"

    if-ne v1, v0, :cond_1

    .line 127
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No need to update views since current layout is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 131
    :cond_1
    iput v0, p0, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->mCurrentLayout:I

    .line 132
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-ne p1, v0, :cond_2

    move p1, v1

    goto :goto_0

    :cond_2
    move p1, v3

    :goto_0
    if-eqz p1, :cond_3

    .line 137
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 138
    iget-object v0, p0, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->mExpandButton:Landroid/widget/ImageButton;

    invoke-direct {p0}, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->getButtonLayoutParams()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    iget-object v0, p0, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->mSettingButton:Landroid/widget/ImageButton;

    invoke-direct {p0}, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->getButtonLayoutParams()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 141
    :cond_3
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 142
    iget-object v0, p0, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->mSettingButton:Landroid/widget/ImageButton;

    invoke-direct {p0}, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->getButtonLayoutParams()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    iget-object v0, p0, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->mExpandButton:Landroid/widget/ImageButton;

    invoke-direct {p0}, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->getButtonLayoutParams()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    move v4, v3

    :goto_2
    if-ge v4, v0, :cond_6

    if-eqz v4, :cond_5

    .line 150
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 151
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_4

    .line 153
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 154
    iget v6, p0, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->mButtonMargin:I

    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_3

    .line 156
    :cond_4
    iget v6, p0, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->mButtonMargin:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 157
    iput v3, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 163
    :cond_6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v0, :cond_7

    const-string p0, "Update layout failed. LayoutParams is null"

    .line 165
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    const/4 v2, 0x3

    const/16 v4, 0x15

    if-eqz p1, :cond_9

    .line 171
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 172
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/4 v2, -0x2

    .line 175
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 176
    iget-boolean v2, p0, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->mOnLeft:Z

    if-eqz v2, :cond_8

    .line 177
    sget v2, Lcom/android/systemui/R$id;->ql_bubble_activity_view:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 178
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 179
    iget v2, p0, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->mContainerMargin:I

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 180
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_4

    .line 182
    :cond_8
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 183
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 184
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 185
    iget v2, p0, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->mContainerMargin:I

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 187
    :goto_4
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_5

    .line 190
    :cond_9
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 191
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 192
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 193
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    const/4 v3, -0x1

    .line 196
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 197
    sget v3, Lcom/android/systemui/R$id;->ql_bubble_activity_view:I

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 198
    iget v2, p0, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->mContainerMargin:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const v0, 0x800005

    .line 199
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 203
    :goto_5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->ql_bubble_activity_view:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 205
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_a

    .line 207
    iget-boolean p1, p0, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->mOnLeft:Z

    if-nez p1, :cond_a

    .line 208
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getId()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_6

    .line 210
    :cond_a
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 213
    :cond_b
    :goto_6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/ViewParent;->requestLayout()V

    return-void
.end method


# virtual methods
.method public getButtonSize()I
    .locals 0

    .line 272
    iget p0, p0, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->mButtonSize:I

    return p0
.end method

.method public getContainerMargin()I
    .locals 0

    .line 276
    iget p0, p0, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->mContainerMargin:I

    return p0
.end method

.method public synthetic lambda$new$0$BubbleSettingsContainer(Landroid/content/Intent;)V
    .locals 2

    .line 70
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 71
    iget-object p1, p0, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const/16 v0, 0x9

    invoke-direct {p0, p1, v0}, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->logBubbleClickEvent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    return-void
.end method

.method public synthetic lambda$new$1$BubbleSettingsContainer(Landroid/view/View;)V
    .locals 2

    .line 67
    iget-object p1, p0, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 68
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v0

    .line 67
    invoke-direct {p0, p1, v0}, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->getSettingsIntent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 69
    iget-object v0, p0, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    new-instance v1, Lcom/oneplus/systemui/bubbles/-$$Lambda$BubbleSettingsContainer$o03r_Jut3HUqt8900q4PVT3FZHE;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/systemui/bubbles/-$$Lambda$BubbleSettingsContainer$o03r_Jut3HUqt8900q4PVT3FZHE;-><init>(Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/BubbleStackView;->collapseStack(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$new$2$BubbleSettingsContainer(Landroid/app/PendingIntent;)V
    .locals 1

    .line 87
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public synthetic lambda$new$3$BubbleSettingsContainer(Landroid/view/View;)V
    .locals 2

    .line 80
    iget-object p1, p0, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 81
    invoke-virtual {p1}, Landroid/app/Notification$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const-string p0, "BubbleSettingsContainer"

    const-string p1, "Launch bubble intent failed. Intent is null"

    .line 83
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    new-instance v1, Lcom/oneplus/systemui/bubbles/-$$Lambda$BubbleSettingsContainer$F1DY3SPWykIXG3XG86kjglig-2E;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/systemui/bubbles/-$$Lambda$BubbleSettingsContainer$F1DY3SPWykIXG3XG86kjglig-2E;-><init>(Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/BubbleStackView;->collapseStack(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 94
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 95
    invoke-virtual {p0}, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->updateView()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 100
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 101
    iget v0, p0, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->mOrientation:I

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, p1, :cond_0

    .line 102
    iput p1, p0, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->mOrientation:I

    .line 103
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->updateView(I)V

    :cond_0
    return-void
.end method

.method public setEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-void
.end method

.method public setOnLeft(Z)V
    .locals 0

    .line 114
    iput-boolean p1, p0, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->mOnLeft:Z

    return-void
.end method

.method public setStackView(Lcom/android/systemui/bubbles/BubbleStackView;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    return-void
.end method

.method public updateView()V
    .locals 1

    const/4 v0, 0x0

    .line 118
    invoke-direct {p0, v0}, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->updateView(I)V

    return-void
.end method
