.class Lcom/android/systemui/bubbles/BubbleTouchHandler;
.super Ljava/lang/Object;
.source "BubbleTouchHandler.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

.field private mController:Lcom/android/systemui/bubbles/BubbleController;

.field private mHandler:Landroid/os/Handler;

.field private mInDismissTarget:Z

.field private mMovedEnough:Z

.field private final mStack:Lcom/android/systemui/bubbles/BubbleStackView;

.field private final mTouchDown:Landroid/graphics/PointF;

.field private mTouchSlopSquared:I

.field private mTouchedView:Landroid/view/View;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mViewPositionOnTouchDown:Landroid/graphics/PointF;


# direct methods
.method constructor <init>(Lcom/android/systemui/bubbles/BubbleStackView;Lcom/android/systemui/bubbles/BubbleData;Landroid/content/Context;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchDown:Landroid/graphics/PointF;

    .line 65
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mViewPositionOnTouchDown:Landroid/graphics/PointF;

    .line 69
    const-class v0, Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/bubbles/BubbleController;

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mController:Lcom/android/systemui/bubbles/BubbleController;

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mHandler:Landroid/os/Handler;

    .line 83
    invoke-static {p3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p3

    mul-int/2addr p3, p3

    .line 84
    iput p3, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchSlopSquared:I

    .line 85
    iput-object p2, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    .line 86
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    return-void
.end method

.method private isFastFlingTowardsDismissTarget(FFFF)Z
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p4, v0

    const/4 v2, 0x0

    if-gtz v1, :cond_0

    return v2

    :cond_0
    cmpl-float v0, p3, v0

    if-eqz v0, :cond_1

    div-float p3, p4, p3

    mul-float/2addr p1, p3

    sub-float/2addr p2, p1

    .line 265
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p1, p2

    div-float/2addr p1, p3

    .line 268
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    .line 269
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x3f000000    # 0.5f

    mul-float/2addr p2, p3

    const/high16 p3, 0x457a0000    # 4000.0f

    cmpl-float p3, p4, p3

    if-lez p3, :cond_2

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    cmpl-float p3, p1, p2

    if-lez p3, :cond_2

    .line 270
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    .line 272
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p0, p2

    cmpg-float p0, p1, p0

    if-gez p0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method private resetForNextGesture()V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 279
    iput-object v1, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 282
    :cond_0
    iput-object v1, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchedView:Landroid/view/View;

    const/4 v0, 0x0

    .line 283
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mMovedEnough:Z

    .line 284
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mInDismissTarget:Z

    .line 286
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->onGestureFinished()V

    return-void
.end method

.method private trackMovement(Landroid/view/MotionEvent;)V
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 291
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 293
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onTouch$0$BubbleTouchHandler(ZLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 210
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mController:Lcom/android/systemui/bubbles/BubbleController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/BubbleController;->dismissStack(I)V

    goto :goto_0

    .line 212
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mController:Lcom/android/systemui/bubbles/BubbleController;

    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/bubbles/BubbleController;->removeBubble(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 91
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 95
    iget-object v3, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchedView:Landroid/view/View;

    if-nez v3, :cond_0

    .line 96
    iget-object v3, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {v3, v1}, Lcom/android/systemui/bubbles/BubbleStackView;->getTargetView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchedView:Landroid/view/View;

    :cond_0
    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eq v2, v3, :cond_1d

    .line 101
    iget-object v3, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchedView:Landroid/view/View;

    if-nez v3, :cond_1

    goto/16 :goto_7

    .line 112
    :cond_1
    instance-of v6, v3, Landroid/app/ActivityView;

    .line 114
    iget-object v7, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 115
    iget-object v7, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {v7}, Lcom/android/systemui/bubbles/BubbleStackView;->getFlyoutView()Landroid/view/View;

    move-result-object v7

    iget-object v8, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchedView:Landroid/view/View;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 116
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    .line 120
    iget-object v10, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mViewPositionOnTouchDown:Landroid/graphics/PointF;

    iget v11, v10, Landroid/graphics/PointF;->x:F

    add-float/2addr v11, v8

    iget-object v12, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchDown:Landroid/graphics/PointF;

    iget v13, v12, Landroid/graphics/PointF;->x:F

    sub-float/2addr v11, v13

    .line 121
    iget v10, v10, Landroid/graphics/PointF;->y:F

    add-float/2addr v10, v9

    iget v12, v12, Landroid/graphics/PointF;->y:F

    sub-float/2addr v10, v12

    const/4 v12, 0x1

    if-eqz v2, :cond_18

    const/16 v13, 0x3e8

    if-eq v2, v12, :cond_9

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3

    const/4 v1, 0x3

    if-eq v2, v1, :cond_2

    goto/16 :goto_6

    .line 184
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/bubbles/BubbleTouchHandler;->resetForNextGesture()V

    goto/16 :goto_6

    .line 144
    :cond_3
    invoke-direct {v0, v1}, Lcom/android/systemui/bubbles/BubbleTouchHandler;->trackMovement(Landroid/view/MotionEvent;)V

    if-eqz v6, :cond_4

    goto/16 :goto_6

    .line 150
    :cond_4
    iget-object v2, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchDown:Landroid/graphics/PointF;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v8, v4

    .line 151
    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v9, v2

    mul-float v2, v8, v8

    mul-float/2addr v9, v9

    add-float/2addr v2, v9

    .line 153
    iget v4, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchSlopSquared:I

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_5

    iget-boolean v2, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mMovedEnough:Z

    if-nez v2, :cond_5

    .line 154
    iput-boolean v12, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mMovedEnough:Z

    .line 157
    :cond_5
    iget-boolean v2, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mMovedEnough:Z

    if-eqz v2, :cond_8

    if-eqz v3, :cond_6

    .line 159
    iget-object v2, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {v2, v11, v10}, Lcom/android/systemui/bubbles/BubbleStackView;->onDragged(FF)V

    goto :goto_0

    :cond_6
    if-eqz v7, :cond_7

    .line 161
    iget-object v2, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {v2, v8}, Lcom/android/systemui/bubbles/BubbleStackView;->onFlyoutDragged(F)V

    goto :goto_0

    .line 163
    :cond_7
    iget-object v2, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    iget-object v3, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchedView:Landroid/view/View;

    invoke-virtual {v2, v3, v11, v10}, Lcom/android/systemui/bubbles/BubbleStackView;->onBubbleDragged(Landroid/view/View;FF)V

    .line 167
    :cond_8
    :goto_0
    iget-object v2, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/bubbles/BubbleStackView;->isInDismissTarget(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 168
    iget-boolean v2, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mInDismissTarget:Z

    if-eq v1, v2, :cond_1c

    .line 169
    iput-boolean v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mInDismissTarget:Z

    .line 171
    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v13}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 172
    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v19

    .line 173
    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v20

    if-nez v7, :cond_1c

    .line 177
    iget-object v14, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    iget-object v15, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchedView:Landroid/view/View;

    iget-boolean v0, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mInDismissTarget:Z

    move/from16 v16, v0

    move/from16 v17, v11

    move/from16 v18, v10

    invoke-virtual/range {v14 .. v20}, Lcom/android/systemui/bubbles/BubbleStackView;->animateMagnetToDismissTarget(Landroid/view/View;ZFFFF)V

    goto/16 :goto_6

    .line 188
    :cond_9
    invoke-direct {v0, v1}, Lcom/android/systemui/bubbles/BubbleTouchHandler;->trackMovement(Landroid/view/MotionEvent;)V

    .line 189
    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v13}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 190
    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    .line 191
    iget-object v2, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    if-eqz v3, :cond_a

    .line 196
    iget-boolean v13, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mInDismissTarget:Z

    if-nez v13, :cond_c

    invoke-direct {v0, v8, v9, v1, v2}, Lcom/android/systemui/bubbles/BubbleTouchHandler;->isFastFlingTowardsDismissTarget(FFFF)Z

    move-result v9

    if-eqz v9, :cond_b

    goto :goto_1

    .line 198
    :cond_a
    iget-boolean v9, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mInDismissTarget:Z

    if-nez v9, :cond_c

    const v9, 0x45bb8000    # 6000.0f

    cmpl-float v9, v2, v9

    if-lez v9, :cond_b

    goto :goto_1

    :cond_b
    move v9, v5

    goto :goto_2

    :cond_c
    :goto_1
    move v9, v12

    :goto_2
    if-eqz v6, :cond_d

    goto/16 :goto_5

    :cond_d
    if-eqz v7, :cond_e

    .line 202
    iget-boolean v6, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mMovedEnough:Z

    if-eqz v6, :cond_e

    .line 203
    iget-object v2, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    iget-object v3, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchDown:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v8, v3

    invoke-virtual {v2, v8, v1}, Lcom/android/systemui/bubbles/BubbleStackView;->onFlyoutDragFinished(FF)V

    goto/16 :goto_5

    :cond_e
    if-eqz v9, :cond_10

    if-eqz v3, :cond_f

    goto :goto_3

    .line 206
    :cond_f
    iget-object v4, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchedView:Landroid/view/View;

    check-cast v4, Lcom/android/systemui/bubbles/BubbleView;

    invoke-virtual {v4}, Lcom/android/systemui/bubbles/BubbleView;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 207
    :goto_3
    iget-object v5, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    iget-object v6, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchedView:Landroid/view/View;

    new-instance v7, Lcom/android/systemui/bubbles/-$$Lambda$BubbleTouchHandler$CRI1SYVVWTk0CE6JELaYKVCSdCI;

    invoke-direct {v7, v0, v3, v4}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleTouchHandler$CRI1SYVVWTk0CE6JELaYKVCSdCI;-><init>(Lcom/android/systemui/bubbles/BubbleTouchHandler;ZLjava/lang/String;)V

    invoke-virtual {v5, v6, v1, v2, v7}, Lcom/android/systemui/bubbles/BubbleStackView;->magnetToStackIfNeededThenAnimateDismissal(Landroid/view/View;FFLjava/lang/Runnable;)V

    goto :goto_5

    :cond_10
    if-eqz v7, :cond_11

    .line 219
    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v1}, Lcom/android/systemui/bubbles/BubbleData;->isExpanded()Z

    move-result v1

    if-nez v1, :cond_17

    iget-boolean v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mMovedEnough:Z

    if-nez v1, :cond_17

    .line 220
    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v1, v12}, Lcom/android/systemui/bubbles/BubbleData;->setExpanded(Z)V

    goto :goto_5

    .line 222
    :cond_11
    iget-boolean v4, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mMovedEnough:Z

    if-eqz v4, :cond_13

    if-eqz v3, :cond_12

    .line 224
    iget-object v3, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {v3, v11, v10, v1, v2}, Lcom/android/systemui/bubbles/BubbleStackView;->onDragFinish(FFFF)V

    goto :goto_5

    .line 226
    :cond_12
    iget-object v14, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    iget-object v15, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchedView:Landroid/view/View;

    move/from16 v16, v11

    move/from16 v17, v10

    move/from16 v18, v1

    move/from16 v19, v2

    invoke-virtual/range {v14 .. v19}, Lcom/android/systemui/bubbles/BubbleStackView;->onBubbleDragFinish(Landroid/view/View;FFFF)V

    goto :goto_5

    .line 228
    :cond_13
    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchedView:Landroid/view/View;

    iget-object v2, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {v2}, Lcom/android/systemui/bubbles/BubbleStackView;->getExpandedBubbleView()Lcom/android/systemui/bubbles/BubbleView;

    move-result-object v2

    if-ne v1, v2, :cond_14

    .line 229
    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v1, v5}, Lcom/android/systemui/bubbles/BubbleData;->setExpanded(Z)V

    goto :goto_5

    :cond_14
    if-nez v3, :cond_16

    if-eqz v7, :cond_15

    goto :goto_4

    .line 234
    :cond_15
    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchedView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/bubbles/BubbleView;

    invoke-virtual {v1}, Lcom/android/systemui/bubbles/BubbleView;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 235
    iget-object v2, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v2, v1}, Lcom/android/systemui/bubbles/BubbleData;->getBubbleWithKey(Ljava/lang/String;)Lcom/android/systemui/bubbles/Bubble;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/systemui/bubbles/BubbleData;->setSelectedBubble(Lcom/android/systemui/bubbles/Bubble;)V

    goto :goto_5

    .line 232
    :cond_16
    :goto_4
    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v1}, Lcom/android/systemui/bubbles/BubbleData;->isExpanded()Z

    move-result v2

    xor-int/2addr v2, v12

    invoke-virtual {v1, v2}, Lcom/android/systemui/bubbles/BubbleData;->setExpanded(Z)V

    .line 238
    :cond_17
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/bubbles/BubbleTouchHandler;->resetForNextGesture()V

    goto :goto_6

    .line 124
    :cond_18
    invoke-direct {v0, v1}, Lcom/android/systemui/bubbles/BubbleTouchHandler;->trackMovement(Landroid/view/MotionEvent;)V

    .line 126
    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchDown:Landroid/graphics/PointF;

    invoke-virtual {v1, v8, v9}, Landroid/graphics/PointF;->set(FF)V

    .line 127
    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {v1}, Lcom/android/systemui/bubbles/BubbleStackView;->onGestureStart()V

    if-eqz v6, :cond_19

    goto :goto_6

    :cond_19
    if-eqz v3, :cond_1a

    .line 132
    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mViewPositionOnTouchDown:Landroid/graphics/PointF;

    iget-object v2, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {v2}, Lcom/android/systemui/bubbles/BubbleStackView;->getStackPosition()Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 133
    iget-object v0, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleStackView;->onDragStart()V

    goto :goto_6

    :cond_1a
    if-eqz v7, :cond_1b

    .line 135
    iget-object v0, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleStackView;->onFlyoutDragStart()V

    goto :goto_6

    .line 137
    :cond_1b
    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mViewPositionOnTouchDown:Landroid/graphics/PointF;

    iget-object v2, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchedView:Landroid/view/View;

    .line 138
    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    iget-object v3, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    .line 137
    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 139
    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mStack:Lcom/android/systemui/bubbles/BubbleStackView;

    iget-object v0, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchedView:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/android/systemui/bubbles/BubbleStackView;->onBubbleDragStart(Landroid/view/View;)V

    :cond_1c
    :goto_6
    return v12

    .line 102
    :cond_1d
    :goto_7
    sget-boolean v1, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_1f

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "touch outside or nothing. action= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", view= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget-object v2, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mTouchedView:Landroid/view/View;

    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    :cond_1e
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BubbleTouchHandler"

    .line 103
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_1f
    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleTouchHandler;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v1, v5}, Lcom/android/systemui/bubbles/BubbleData;->setExpanded(Z)V

    .line 107
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/bubbles/BubbleTouchHandler;->resetForNextGesture()V

    return v5
.end method
