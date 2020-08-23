.class public Lcom/android/systemui/statusbar/phone/HighlightHintView;
.super Landroid/widget/FrameLayout;
.source "HighlightHintView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# static fields
.field private static final OP_DEBUG:Z


# instance fields
.field breathingAnimatorSet:Landroid/animation/AnimatorSet;

.field private mBackgroundColor:I

.field mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field mChronometerContainer:Landroid/widget/FrameLayout;

.field private mContainer:Landroid/view/ViewGroup;

.field mContentWidth:I

.field private mContext:Landroid/content/Context;

.field private mHint:Landroid/widget/TextView;

.field private mIconView:Landroid/widget/ImageView;

.field private mOrientation:I

.field private mShowBreathingEffect:Z

.field private mShowHighlightHint:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->OP_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 58
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mShowBreathingEffect:Z

    .line 59
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mShowHighlightHint:Z

    .line 248
    iput p2, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContentWidth:I

    .line 71
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContext:Landroid/content/Context;

    .line 72
    sget p2, Lcom/android/systemui/R$layout;->highlight_hint_view_notch:I

    .line 73
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/HighlightHintView;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mBackgroundColor:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/HighlightHintView;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mBackgroundColor:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/HighlightHintView;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mShowHighlightHint:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/HighlightHintView;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mShowBreathingEffect:Z

    return p0
.end method

.method static synthetic access$300()Z
    .locals 1

    .line 43
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->OP_DEBUG:Z

    return v0
.end method

.method private cancelAnimation()V
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->breathingAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 300
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->breathingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 301
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->breathingAnimatorSet:Landroid/animation/AnimatorSet;

    :cond_0
    return-void
.end method

.method private getMaxHighlightHintTextWidth()I
    .locals 6

    .line 250
    const-class v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 254
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/notification/collection/OpNotificationData;->getStatusBarChronometer()Landroid/widget/Chronometer;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/notification/collection/OpNotificationData;->getKeyguardChronometer()Landroid/widget/Chronometer;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    return v1

    .line 258
    :cond_2
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 259
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 260
    invoke-virtual {v0}, Landroid/widget/Chronometer;->getMeasuredWidth()I

    move-result v4

    if-eqz v4, :cond_3

    .line 261
    iget v5, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContentWidth:I

    if-eq v5, v4, :cond_4

    .line 262
    :cond_3
    invoke-virtual {v0, v2, v3}, Landroid/widget/Chronometer;->measure(II)V

    .line 263
    iput v4, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContentWidth:I

    .line 265
    :cond_4
    invoke-virtual {v0}, Landroid/widget/Chronometer;->getMeasuredWidth()I

    move-result v0

    .line 266
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    .line 267
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$dimen;->highlighthint_chronometer_padding:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 268
    :cond_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    sub-int/2addr v3, v0

    sub-int/2addr v3, v2

    sub-int/2addr v3, v1

    .line 269
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p0

    int-to-double v0, p0

    const-wide v4, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v0, v4

    double-to-int p0, v0

    if-lez v3, :cond_6

    move p0, v3

    :cond_6
    return p0
.end method

.method private playBreathingAnimation(II)V
    .locals 8

    .line 315
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->breathingAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 316
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->breathingAnimatorSet:Landroid/animation/AnimatorSet;

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->breathingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 319
    new-instance v0, Lcom/android/systemui/statusbar/phone/HighlightHintView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView$1;-><init>(Lcom/android/systemui/statusbar/phone/HighlightHintView;)V

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 v4, 0x1

    aput p2, v2, v4

    .line 327
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v5, 0x3e8

    .line 329
    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 330
    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 331
    sget-object v7, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v1, v1, [I

    aput p2, v1, v3

    aput p1, v1, v4

    .line 332
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 334
    invoke-virtual {p1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 335
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 336
    sget-object p2, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 337
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->breathingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 338
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->breathingAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 339
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->breathingAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance p2, Lcom/android/systemui/statusbar/phone/HighlightHintView$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView$2;-><init>(Lcom/android/systemui/statusbar/phone/HighlightHintView;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 353
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->breathingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 354
    sget-boolean p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->OP_DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "HighlightHintView"

    const-string p1, "playBreathingAnimation: Start breathing animation"

    .line 355
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private updateHint()V
    .locals 9

    .line 127
    const-class v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 128
    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/notification/collection/OpNotificationData;->getHighlightHintNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 131
    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/notification/collection/OpNotificationData;->getHighlightHintNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 138
    :cond_1
    :try_start_0
    iget-object v2, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "op_show_breathing"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mShowBreathingEffect:Z

    .line 139
    iget-object v2, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "op_breathing_color_start"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 140
    iget-object v3, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "op_breathing_color_end"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 142
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/HighlightHintView;->OP_DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "HighlightHintView"

    .line 143
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateHint, mShowBreathingEffect "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mShowBreathingEffect:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " breathingColorStart "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " breathingColorEnd "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mShowBreathingEffect:Z

    if-eqz v4, :cond_3

    .line 147
    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->playBreathingAnimation(II)V

    goto :goto_0

    .line 150
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->breathingAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->breathingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 151
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->cancelAnimation()V

    .line 154
    :cond_4
    invoke-virtual {v1}, Landroid/app/Notification;->getBackgroundColorOnStatusBar()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mBackgroundColor:I

    .line 156
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    .line 157
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mBackgroundColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 165
    :cond_5
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 166
    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/notification/collection/OpNotificationData;->getHighlightHintNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 165
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 167
    invoke-virtual {v1}, Landroid/app/Notification;->getStatusBarIcon()I

    move-result v3

    const/4 v4, -0x1

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eq v3, v4, :cond_6

    .line 168
    invoke-virtual {v1}, Landroid/app/Notification;->getStatusBarIcon()I

    move-result v3

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 169
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 170
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 172
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 174
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Lcom/android/systemui/R$dimen;->status_bar_clock_size:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 176
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mHint:Landroid/widget/TextView;

    if-eqz v7, :cond_9

    .line 177
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mHint:Landroid/widget/TextView;

    int-to-float v8, v3

    invoke-virtual {v7, v6, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 178
    invoke-virtual {v1}, Landroid/app/Notification;->getTextOnStatusBar()I

    move-result v7

    if-eq v7, v4, :cond_8

    .line 179
    invoke-virtual {v1}, Landroid/app/Notification;->getTextOnStatusBar()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 181
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mHint:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->getMaxHighlightHintTextWidth()I

    move-result v2

    if-lez v2, :cond_7

    .line 187
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mHint:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 190
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mHint:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 192
    :cond_8
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mHint:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    :cond_9
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mChronometerContainer:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_e

    .line 196
    invoke-virtual {v1}, Landroid/app/Notification;->ShowChronometerOnStatusBar()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 197
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mChronometerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 199
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$color;->highlight_hint_view_chronometer_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 200
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v4, 0x3e8

    if-ne v2, v4, :cond_a

    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/notification/collection/OpNotificationData;->getStatusBarChronometer()Landroid/widget/Chronometer;

    move-result-object v0

    goto :goto_3

    :cond_a
    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/notification/collection/OpNotificationData;->getKeyguardChronometer()Landroid/widget/Chronometer;

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_c

    .line 202
    invoke-virtual {v0}, Landroid/widget/Chronometer;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 203
    invoke-virtual {v0}, Landroid/widget/Chronometer;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_b
    int-to-float v2, v3

    .line 205
    invoke-virtual {v0, v6, v2}, Landroid/widget/Chronometer;->setTextSize(IF)V

    .line 206
    invoke-virtual {v0, v1}, Landroid/widget/Chronometer;->setTextColor(I)V

    .line 207
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/Chronometer;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 208
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mChronometerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 210
    :cond_c
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mChronometerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_4

    .line 212
    :cond_d
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mChronometerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 216
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e
    :goto_4
    return-void
.end method

.method private updateLayout()V
    .locals 5

    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 108
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 109
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->highlight_hint_width_notch:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 110
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->highlight_hint_bg_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 111
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->status_bar_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContext:Landroid/content/Context;

    .line 112
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$dimen;->highlight_hint_bg_vertical_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_0

    move v1, v2

    .line 116
    :cond_0
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v1, 0x11

    .line 117
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 119
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportHolePunchFrontCam()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->highlight_hint_margin_start:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 121
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    move-result v3

    .line 120
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 235
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 236
    const-class v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 237
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 222
    iget v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mOrientation:I

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, p1, :cond_0

    .line 223
    iput p1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mOrientation:I

    .line 224
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->updateLayout()V

    :cond_0
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    .line 230
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->updateHint()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 242
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 243
    const-class v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 244
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 78
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 79
    sget v0, Lcom/android/systemui/R$id;->highlight_hint_notification_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mIconView:Landroid/widget/ImageView;

    .line 80
    sget v0, Lcom/android/systemui/R$id;->highlight_hint_notification_text:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mHint:Landroid/widget/TextView;

    .line 81
    sget v0, Lcom/android/systemui/R$id;->highlight_hint_view_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mChronometerContainer:Landroid/widget/FrameLayout;

    .line 82
    sget v0, Lcom/android/systemui/R$id;->highlight_hint_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContainer:Landroid/view/ViewGroup;

    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mOrientation:I

    .line 90
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->updateLayout()V

    return-void
.end method

.method public onHighlightHintInfoChange()V
    .locals 0

    .line 309
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->updateHint()V

    return-void
.end method

.method public onHighlightHintStateChange()V
    .locals 2

    .line 278
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    return-void

    .line 283
    :cond_0
    const-class v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->isHighLightHintShow()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mShowHighlightHint:Z

    .line 284
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mShowHighlightHint:Z

    if-eqz v0, :cond_1

    .line 286
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->updateHint()V

    const/4 v0, 0x0

    .line 287
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    .line 289
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 291
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->cancelAnimation()V

    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 95
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 96
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 97
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 98
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result p3

    sub-int/2addr p2, p3

    .line 99
    iget p3, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-le p3, p2, :cond_0

    .line 100
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 101
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
