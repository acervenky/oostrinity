.class public Lcom/android/systemui/statusbar/DragDownHelper;
.super Ljava/lang/Object;
.source "DragDownHelper.java"

# interfaces
.implements Lcom/android/systemui/Gefingerpoken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/systemui/ExpandHelper$Callback;

.field private mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

.field private mDraggedFarEnough:Z

.field private mDraggingDown:Z

.field private mEmptyDragAmountCache:F

.field private mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private mHost:Landroid/view/View;

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mLastHeight:F

.field private mMinDragDistance:I

.field private mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field private final mTemp2:[I

.field private mTouchSlop:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/ExpandHelper$Callback;Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;)V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 55
    iput-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mTemp2:[I

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->keyguard_drag_down_min_distance:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mMinDragDistance:I

    .line 69
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mTouchSlop:F

    .line 70
    iput-object p3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    .line 71
    iput-object p4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    .line 72
    iput-object p2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mHost:Landroid/view/View;

    .line 73
    invoke-static {p1}, Lcom/android/systemui/classifier/FalsingManagerFactory;->getInstance(Landroid/content/Context;)Lcom/android/systemui/plugins/FalsingManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/DragDownHelper;)Lcom/android/systemui/ExpandHelper$Callback;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    return-object p0
.end method

.method private cancelExpansion()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 224
    iget v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mLastHeight:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 225
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x177

    .line 226
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 227
    new-instance v1, Lcom/android/systemui/statusbar/-$$Lambda$DragDownHelper$q6x0oNk24uuvhTw3d_iOE5k6pV4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/-$$Lambda$DragDownHelper$q6x0oNk24uuvhTw3d_iOE5k6pV4;-><init>(Lcom/android/systemui/statusbar/DragDownHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 233
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private cancelExpansion(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .locals 3

    .line 206
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getCollapsedHeight()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 207
    iget-object p0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {p0, p1, v2}, Lcom/android/systemui/ExpandHelper$Callback;->setUserLockedChild(Landroid/view/View;Z)V

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 211
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v1

    aput v1, v0, v2

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getCollapsedHeight()I

    move-result v2

    aput v2, v0, v1

    const-string v1, "actualHeight"

    .line 210
    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 212
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x177

    .line 213
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 214
    new-instance v1, Lcom/android/systemui/statusbar/DragDownHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/DragDownHelper$1;-><init>(Lcom/android/systemui/statusbar/DragDownHelper;Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 220
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private captureStartingChild(FF)V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mEmptyDragAmountCache:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 179
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/DragDownHelper;->findView(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 180
    iget-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz p1, :cond_0

    .line 181
    iget-object p0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    const/4 p2, 0x1

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/ExpandHelper$Callback;->setUserLockedChild(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method private checkStopDragging()V
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mEmptyDragAmountCache:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 263
    invoke-direct {p0}, Lcom/android/systemui/statusbar/DragDownHelper;->cancelExpansion()V

    :cond_0
    return-void
.end method

.method private findView(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mHost:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mTemp2:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 250
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mTemp2:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v1, v1

    add-float/2addr p1, v1

    const/4 v1, 0x1

    .line 251
    aget v0, v0, v1

    int-to-float v0, v0

    add-float/2addr p2, v0

    .line 252
    iget-object p0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/ExpandHelper$Callback;->getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object p0

    return-object p0
.end method

.method private handleExpansion(FLcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .locals 1

    const/4 p0, 0x0

    cmpg-float v0, p1, p0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    .line 190
    :goto_0
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isContentExpandable()Z

    move-result p1

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_1

    :cond_1
    const v0, 0x3e19999a    # 0.15f

    :goto_1
    mul-float/2addr p0, v0

    if-eqz p1, :cond_2

    .line 196
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getCollapsedHeight()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, p0

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMaxContentHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    .line 198
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getCollapsedHeight()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, p0

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMaxContentHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    const v0, 0x3f59999a    # 0.85f

    mul-float/2addr p1, v0

    sub-float/2addr p0, p1

    .line 202
    :cond_2
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getCollapsedHeight()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, p0

    float-to-int p0, p1

    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setActualHeight(I)V

    return-void
.end method

.method private isFalseTouch()Z
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;->isFalsingCheckNeeded()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggedFarEnough:Z

    if-nez p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private stopDragging()V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->onNotificatonStopDraggingDown()V

    .line 238
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v0, :cond_0

    .line 239
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/DragDownHelper;->cancelExpansion(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    const/4 v0, 0x0

    .line 240
    iput-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    goto :goto_0

    .line 242
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/DragDownHelper;->cancelExpansion()V

    :goto_0
    const/4 v0, 0x0

    .line 244
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggingDown:Z

    .line 245
    iget-object p0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;->onDragDownReset()V

    return-void
.end method


# virtual methods
.method public isDraggingDown()Z
    .locals 0

    .line 256
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggingDown:Z

    return p0
.end method

.method public synthetic lambda$cancelExpansion$0$DragDownHelper(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 229
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mEmptyDragAmountCache:F

    .line 231
    iget-object p0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;->setEmptyDragAmount(F)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 78
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 79
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 81
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    iget p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchY:F

    sub-float p1, v1, p1

    .line 92
    iget v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mTouchSlop:F

    cmpl-float v3, p1, v3

    if-lez v3, :cond_2

    iget v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchX:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float p1, p1, v3

    if-lez p1, :cond_2

    .line 93
    iget-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager;->onNotificatonStartDraggingDown()V

    const/4 p1, 0x1

    .line 94
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggingDown:Z

    .line 95
    iget v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchX:F

    iget v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchY:F

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/DragDownHelper;->captureStartingChild(FF)V

    .line 96
    iput v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchY:F

    .line 97
    iput v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchX:F

    .line 98
    iget-object p0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;->onTouchSlopExceeded()V

    return p1

    .line 83
    :cond_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggedFarEnough:Z

    .line 84
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggingDown:Z

    const/4 p1, 0x0

    .line 85
    iput-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 86
    iput v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchY:F

    .line 87
    iput v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchX:F

    :cond_2
    :goto_0
    return v2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 108
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggingDown:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 111
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_6

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto/16 :goto_3

    .line 159
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/DragDownHelper;->checkStopDragging()V

    .line 161
    invoke-direct {p0}, Lcom/android/systemui/statusbar/DragDownHelper;->stopDragging()V

    return v1

    .line 116
    :cond_2
    iget p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchY:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mLastHeight:F

    .line 117
    iget v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchX:F

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/DragDownHelper;->captureStartingChild(FF)V

    .line 118
    iget-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz p1, :cond_3

    .line 119
    iget v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mLastHeight:F

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/DragDownHelper;->handleExpansion(FLcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    goto :goto_0

    .line 122
    :cond_3
    iget p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mLastHeight:F

    iput p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mEmptyDragAmountCache:F

    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;->setEmptyDragAmount(F)V

    .line 126
    :goto_0
    iget p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mLastHeight:F

    iget v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mMinDragDistance:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_4

    .line 127
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggedFarEnough:Z

    if-nez p1, :cond_5

    .line 128
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggedFarEnough:Z

    .line 129
    iget-object p0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    invoke-interface {p0, v2}, Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;->onCrossedThreshold(Z)V

    goto :goto_1

    .line 132
    :cond_4
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggedFarEnough:Z

    if-eqz p1, :cond_5

    .line 133
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggedFarEnough:Z

    .line 134
    iget-object p0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    invoke-interface {p0, v1}, Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;->onCrossedThreshold(Z)V

    :cond_5
    :goto_1
    return v2

    .line 140
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/DragDownHelper;->checkStopDragging()V

    .line 142
    iget-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager;->isUnlockingDisabled()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-direct {p0}, Lcom/android/systemui/statusbar/DragDownHelper;->isFalseTouch()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    iget-object v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchY:F

    sub-float/2addr v0, v3

    float-to-int v0, v0

    .line 143
    invoke-interface {p1, v2, v0}, Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;->onDraggedDown(Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 145
    iget-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-nez p1, :cond_7

    .line 146
    invoke-direct {p0}, Lcom/android/systemui/statusbar/DragDownHelper;->cancelExpansion()V

    goto :goto_2

    .line 148
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v0, p1, v1}, Lcom/android/systemui/ExpandHelper$Callback;->setUserLockedChild(Landroid/view/View;Z)V

    const/4 p1, 0x0

    .line 149
    iput-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 151
    :goto_2
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggingDown:Z

    :goto_3
    return v1

    .line 153
    :cond_8
    invoke-direct {p0}, Lcom/android/systemui/statusbar/DragDownHelper;->stopDragging()V

    return v1
.end method
