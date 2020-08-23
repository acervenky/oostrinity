.class public Lcom/android/systemui/bubbles/BubbleView;
.super Lcom/oneplus/systemui/bubbles/OpBubbleView;
.source "BubbleView.java"


# instance fields
.field private mBadgeColor:I

.field private mBadgedImageView:Lcom/android/systemui/bubbles/BadgedImageView;

.field private mContext:Landroid/content/Context;

.field private mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field private mIconInset:I

.field private mPadding:I

.field private mSuppressDot:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/bubbles/BubbleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/bubbles/BubbleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/systemui/bubbles/OpBubbleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 66
    iput-boolean p2, p0, Lcom/android/systemui/bubbles/BubbleView;->mSuppressDot:Z

    .line 84
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleView;->mContext:Landroid/content/Context;

    .line 86
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->bubble_view_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/bubbles/BubbleView;->mPadding:I

    .line 92
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->qr_bubble_icon_inset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-static {p1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/bubbles/BubbleView;->mIconInset:I

    return-void
.end method

.method private animateDot(ZLjava/lang/Runnable;)V
    .locals 3

    .line 205
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleView;->mBadgedImageView:Lcom/android/systemui/bubbles/BadgedImageView;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BadgedImageView;->isShowingDot()Z

    move-result v0

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleView;->mBadgedImageView:Lcom/android/systemui/bubbles/BadgedImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/BadgedImageView;->setShowDot(Z)V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleView;->mBadgedImageView:Lcom/android/systemui/bubbles/BadgedImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 211
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleView;->mBadgedImageView:Lcom/android/systemui/bubbles/BadgedImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 212
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleView$ZKBfBG7GijRplpU_8yCIB0NuyLk;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleView$ZKBfBG7GijRplpU_8yCIB0NuyLk;-><init>(Lcom/android/systemui/bubbles/BubbleView;Z)V

    .line 213
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleView$xA_RAS_mSp_JlDsmI3wc705YhoQ;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleView$xA_RAS_mSp_JlDsmI3wc705YhoQ;-><init>(Lcom/android/systemui/bubbles/BubbleView;ZLjava/lang/Runnable;)V

    .line 217
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 225
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    return-void
.end method

.method private checkTint(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/16 p0, 0xff

    .line 308
    invoke-static {p2, p0}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p0

    if-nez p0, :cond_0

    const p0, -0x333334

    :cond_0
    const/4 p2, -0x1

    .line 313
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 314
    invoke-static {p2, p0}, Lcom/android/internal/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v0

    const-wide v2, 0x4010666666666666L    # 4.1

    cmpg-double p0, v0, v2

    if-gez p0, :cond_1

    const/high16 p0, -0x1000000

    const/16 p2, 0xb4

    .line 316
    invoke-static {p0, p2}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p0

    .line 317
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_1
    return-object p1
.end method

.method private determineDominateColor(Landroid/graphics/drawable/Drawable;I)I
    .locals 0

    const/4 p0, -0x1

    const p1, 0x3f0a3d71    # 0.54f

    .line 324
    invoke-static {p2, p0, p1}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p0

    return p0
.end method

.method private updateDotVisibility(ZLjava/lang/Runnable;)V
    .locals 1

    .line 192
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleView;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->showInShadeWhenBubble()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleView;->mSuppressDot:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 195
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/bubbles/BubbleView;->animateDot(ZLjava/lang/Runnable;)V

    goto :goto_1

    .line 197
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleView;->mBadgedImageView:Lcom/android/systemui/bubbles/BadgedImageView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/BadgedImageView;->setShowDot(Z)V

    :goto_1
    return-void
.end method


# virtual methods
.method getBadgeColor()I
    .locals 0

    .line 297
    iget p0, p0, Lcom/android/systemui/bubbles/BubbleView;->mBadgeColor:I

    return p0
.end method

.method getDotPositionOnLeft()Z
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleView;->mBadgedImageView:Lcom/android/systemui/bubbles/BadgedImageView;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BadgedImageView;->getDotPosition()Z

    move-result p0

    return p0
.end method

.method public getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public synthetic lambda$animateDot$1$BubbleView(ZLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 214
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    sub-float p2, p1, p2

    .line 216
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleView;->mBadgedImageView:Lcom/android/systemui/bubbles/BadgedImageView;

    invoke-virtual {p0, p2}, Lcom/android/systemui/bubbles/BadgedImageView;->setDotScale(F)V

    return-void
.end method

.method public synthetic lambda$animateDot$2$BubbleView(ZLjava/lang/Runnable;)V
    .locals 0

    if-nez p1, :cond_0

    .line 219
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleView;->mBadgedImageView:Lcom/android/systemui/bubbles/BadgedImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BadgedImageView;->setShowDot(Z)V

    :cond_0
    if-eqz p2, :cond_1

    .line 223
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public synthetic lambda$setDotPosition$0$BubbleView(Z)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleView;->mBadgedImageView:Lcom/android/systemui/bubbles/BadgedImageView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/bubbles/BadgedImageView;->setDotPosition(Z)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 172
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleView;->animateDot(ZLjava/lang/Runnable;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 103
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 97
    invoke-super {p0}, Lcom/oneplus/systemui/bubbles/OpBubbleView;->onFinishInflate()V

    .line 98
    sget v0, Lcom/android/systemui/R$id;->bubble_image:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/bubbles/BadgedImageView;

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleView;->mBadgedImageView:Lcom/android/systemui/bubbles/BadgedImageView;

    return-void
.end method

.method setDotPosition(ZZ)V
    .locals 1

    if-eqz p2, :cond_0

    .line 169
    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleView;->mBadgedImageView:Lcom/android/systemui/bubbles/BadgedImageView;

    invoke-virtual {p2}, Lcom/android/systemui/bubbles/BadgedImageView;->getDotPosition()Z

    move-result p2

    if-eq p1, p2, :cond_0

    iget-boolean p2, p0, Lcom/android/systemui/bubbles/BubbleView;->mSuppressDot:Z

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 170
    new-instance v0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleView$8ligGzJrQjv0I1bfTGAaM0-HpBQ;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleView$8ligGzJrQjv0I1bfTGAaM0-HpBQ;-><init>(Lcom/android/systemui/bubbles/BubbleView;Z)V

    invoke-direct {p0, p2, v0}, Lcom/android/systemui/bubbles/BubbleView;->animateDot(ZLjava/lang/Runnable;)V

    goto :goto_0

    .line 175
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleView;->mBadgedImageView:Lcom/android/systemui/bubbles/BadgedImageView;

    invoke-virtual {p2, p1}, Lcom/android/systemui/bubbles/BadgedImageView;->setDotPosition(Z)V

    .line 179
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/bubbles/OpBubbleView;->updateAppIconPosition(Z)V

    return-void
.end method

.method public setNotif(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 116
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleView;->updateViews()V

    return-void
.end method

.method setSuppressDot(ZZ)V
    .locals 0

    .line 163
    iput-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleView;->mSuppressDot:Z

    .line 164
    invoke-virtual {p0, p2}, Lcom/android/systemui/bubbles/BubbleView;->updateDotVisibility(Z)V

    return-void
.end method

.method public update(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 140
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleView;->updateViews()V

    return-void
.end method

.method updateDotVisibility(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 154
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleView;->updateDotVisibility(ZLjava/lang/Runnable;)V

    return-void
.end method

.method updateViews()V
    .locals 8

    .line 230
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-nez v0, :cond_0

    return-void

    .line 233
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    .line 234
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 238
    iget-object v2, p0, Lcom/oneplus/systemui/bubbles/OpBubbleView;->mAppIcon:Landroid/view/View;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_1

    .line 239
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 240
    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v3

    iput v3, p0, Lcom/oneplus/systemui/bubbles/OpBubbleView;->mPackageUId:I

    .line 241
    iget-object v3, p0, Lcom/oneplus/systemui/bubbles/OpBubbleView;->mAppIcon:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/oneplus/systemui/bubbles/OpBubbleView;->getAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 247
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oneplus/systemui/bubbles/OpBubbleView;->isQuickReplyApp(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    if-nez v2, :cond_3

    .line 254
    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 255
    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v2

    const/4 v5, 0x5

    if-eq v2, v5, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v4

    goto :goto_1

    .line 257
    :cond_3
    invoke-virtual {v1}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-nez v0, :cond_4

    move v2, v3

    goto :goto_0

    :cond_4
    move v2, v4

    :goto_0
    if-eqz v2, :cond_5

    .line 258
    invoke-virtual {v1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 260
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/bubbles/BubbleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v2, :cond_6

    .line 271
    invoke-virtual {v1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v2, v1, Landroid/app/Notification;->color:I

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/bubbles/BubbleView;->checkTint(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 272
    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    iget v5, p0, Lcom/android/systemui/bubbles/BubbleView;->mIconInset:I

    invoke-direct {v2, v0, v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 273
    iget-object v5, p0, Lcom/android/systemui/bubbles/BubbleView;->mBadgedImageView:Lcom/android/systemui/bubbles/BadgedImageView;

    iget v6, v1, Landroid/app/Notification;->color:I

    const/16 v7, 0xff

    invoke-static {v6, v7}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v6

    invoke-virtual {p0, v2, v6}, Lcom/oneplus/systemui/bubbles/OpBubbleView;->getCircledIconWithTint(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 276
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleView;->mBadgedImageView:Lcom/android/systemui/bubbles/BadgedImageView;

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/bubbles/OpBubbleView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/oneplus/systemui/bubbles/OpBubbleView;->getCircledBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 279
    :goto_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 281
    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    const/16 v5, 0x20

    if-ne v2, v5, :cond_7

    goto :goto_3

    :cond_7
    move v3, v4

    :goto_3
    if-eqz v3, :cond_8

    .line 284
    iget-object v2, p0, Lcom/oneplus/systemui/bubbles/OpBubbleView;->mPointerView:Landroid/view/View;

    const/high16 v3, -0x1000000

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_4

    .line 286
    :cond_8
    iget-object v2, p0, Lcom/oneplus/systemui/bubbles/OpBubbleView;->mPointerView:Landroid/view/View;

    const/4 v3, -0x1

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 290
    :cond_9
    :goto_4
    iget v1, v1, Landroid/app/Notification;->color:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/bubbles/BubbleView;->determineDominateColor(Landroid/graphics/drawable/Drawable;I)I

    move-result v0

    .line 291
    iput v0, p0, Lcom/android/systemui/bubbles/BubbleView;->mBadgeColor:I

    .line 292
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleView;->mBadgedImageView:Lcom/android/systemui/bubbles/BadgedImageView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/bubbles/BadgedImageView;->setDotColor(I)V

    .line 293
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->showInShadeWhenBubble()Z

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/bubbles/BubbleView;->animateDot(ZLjava/lang/Runnable;)V

    return-void
.end method
