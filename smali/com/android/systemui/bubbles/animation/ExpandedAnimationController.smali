.class public Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;
.super Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;
.source "ExpandedAnimationController.java"


# instance fields
.field private mAfterCollapse:Ljava/lang/Runnable;

.field private mAfterExpand:Ljava/lang/Runnable;

.field private mAnimatingCollapse:Z

.field private mAnimatingExpand:Z

.field private mBubbleDraggedOutEnough:Z

.field private mBubbleDraggingOut:Landroid/view/View;

.field private mBubbleEdgeMargin:I

.field private mBubblePaddingPx:F

.field private mBubbleSizePx:F

.field private mCollapsePoint:Landroid/graphics/PointF;

.field private mDisplaySize:Landroid/graphics/Point;

.field private mExpandedBubbleSize:I

.field private mExpandedViewPadding:I

.field private mIndividualBubbleWithinDismissTarget:Z

.field private mOnLeft:Z

.field private mOrientation:I

.field private mPipDismissHeight:F

.field private mPointerHeight:I

.field private mSpringingBubbleToTouch:Z

.field private mStackBounds:Landroid/graphics/RectF;

.field private mStackOffsetPx:F

.field private mStatusBarHeight:F


# direct methods
.method public constructor <init>(Landroid/graphics/Point;I)V
    .locals 1

    .line 99
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;-><init>()V

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mIndividualBubbleWithinDismissTarget:Z

    .line 80
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAnimatingExpand:Z

    .line 81
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAnimatingCollapse:Z

    .line 95
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mSpringingBubbleToTouch:Z

    .line 108
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleDraggedOutEnough:Z

    .line 100
    iput-object p1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mDisplaySize:Landroid/graphics/Point;

    .line 101
    iput p2, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mExpandedViewPadding:I

    return-void
.end method

.method private getBubbleTop(I)F
    .locals 2

    .line 512
    iget v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 513
    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mStackBounds:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->top:F

    return p0

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    if-nez v0, :cond_1

    .line 516
    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mStackBounds:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->top:F

    return p0

    .line 518
    :cond_1
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    sub-int/2addr v0, p1

    int-to-float p1, v0

    iget v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleSizePx:F

    iget p0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubblePaddingPx:F

    add-float/2addr v0, p0

    mul-float/2addr p1, v0

    return p1
.end method

.method private getRowLeft()F
    .locals 4

    .line 525
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 528
    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    int-to-float v1, v0

    .line 531
    iget v2, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleSizePx:F

    mul-float/2addr v1, v2

    float-to-double v1, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    .line 532
    iget v3, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubblePaddingPx:F

    mul-float/2addr v0, v3

    double-to-float v1, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 536
    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mDisplaySize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    sub-float/2addr p0, v0

    return p0
.end method

.method private getXForChildAtIndex(I)F
    .locals 1

    .line 489
    iget v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubblePaddingPx:F

    iget p0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleSizePx:F

    add-float/2addr p0, v0

    int-to-float p1, p1

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    return v0
.end method

.method static synthetic lambda$onActiveControllerForLayout$7(ILcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)V
    .locals 2

    const/4 p0, 0x0

    new-array v0, p0, [Ljava/lang/Runnable;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 380
    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->scaleX(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array v0, p0, [Ljava/lang/Runnable;

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->scaleY(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array p0, p0, [Ljava/lang/Runnable;

    invoke-virtual {p1, v1, p0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->alpha(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    return-void
.end method

.method static synthetic lambda$snapBubbleBack$4(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 315
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationZ(F)V

    return-void
.end method

.method private startOrUpdateCollapseAnimation()V
    .locals 5

    .line 175
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    iget-object v1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mCollapsePoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->isFirstChildXLeftOfCenter(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 176
    :goto_0
    new-instance v1, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$ptlDXRKES6qHH1g5Lesavl1BSOo;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$ptlDXRKES6qHH1g5Lesavl1BSOo;-><init>(Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;F)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationsForChildrenFromIndex(ILcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$ChildAnimationConfigurator;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$MultiAnimationStarter;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Runnable;

    new-instance v4, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$JwqN2wkWyA41gYXti2vwoLMs7Gw;

    invoke-direct {v4, p0}, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$JwqN2wkWyA41gYXti2vwoLMs7Gw;-><init>(Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;)V

    aput-object v4, v3, v2

    .line 192
    invoke-interface {v1, v3}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$MultiAnimationStarter;->startAll([Ljava/lang/Runnable;)V

    .line 203
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->shouldShowBubbleMore()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->getBubbleMoreIndex()I

    move-result v1

    .line 205
    iget-object v3, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mBubbleMore:Lcom/oneplus/systemui/bubbles/OpBubbleMore;

    invoke-virtual {p0, v1}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getBubbleLeft(I)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 206
    iget-object v3, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mBubbleMore:Lcom/oneplus/systemui/bubbles/OpBubbleMore;

    invoke-direct {p0, v1}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getBubbleTop(I)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 207
    iget-object v3, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mBubbleMore:Lcom/oneplus/systemui/bubbles/OpBubbleMore;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 208
    iget-object v2, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mBubbleMoreXAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v3, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mCollapsePoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mStackOffsetPx:F

    mul-float/2addr v0, v1

    add-float/2addr v3, v0

    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 209
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mBubbleMoreYAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mCollapsePoint:Landroid/graphics/PointF;

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :cond_1
    return-void
.end method

.method private startOrUpdateExpandAnimation()V
    .locals 4

    .line 145
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mBubbleMore:Lcom/oneplus/systemui/bubbles/OpBubbleMore;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 147
    new-instance v0, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$_bAKyIb2jwklYUuYKNOzMyBbmlQ;

    invoke-direct {v0, p0}, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$_bAKyIb2jwklYUuYKNOzMyBbmlQ;-><init>(Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationsForChildrenFromIndex(ILcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$ChildAnimationConfigurator;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$MultiAnimationStarter;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Runnable;

    new-instance v3, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$-EZFn_NvDV71tFTo7Iiwoss1HYE;

    invoke-direct {v3, p0}, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$-EZFn_NvDV71tFTo7Iiwoss1HYE;-><init>(Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;)V

    aput-object v3, v2, v1

    .line 162
    invoke-interface {v0, v2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$MultiAnimationStarter;->startAll([Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateBubblePositions()V
    .locals 5

    .line 464
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAnimatingExpand:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAnimatingCollapse:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 469
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 470
    iget-object v2, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 474
    iget-object v3, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleDraggingOut:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    .line 478
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationForChild(Landroid/view/View;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object v2

    .line 479
    invoke-virtual {p0, v1}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getBubbleLeft(I)F

    move-result v3

    new-array v4, v0, [Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->translationX(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    .line 481
    invoke-direct {p0, v1}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getBubbleTop(I)F

    move-result v3

    new-array v4, v0, [Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->translationY(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array v3, v0, [Ljava/lang/Runnable;

    .line 483
    invoke-virtual {v2, v3}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->start([Ljava/lang/Runnable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public collapseBackToStack(Landroid/graphics/PointF;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 135
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAnimatingExpand:Z

    const/4 v0, 0x1

    .line 136
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAnimatingCollapse:Z

    .line 137
    iput-object p2, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAfterCollapse:Ljava/lang/Runnable;

    .line 138
    iput-object p1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mCollapsePoint:Landroid/graphics/PointF;

    .line 140
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->startOrUpdateCollapseAnimation()V

    return-void
.end method

.method public demagnetizeBubbleTo(FFFF)V
    .locals 2

    const/4 v0, 0x0

    .line 291
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mIndividualBubbleWithinDismissTarget:Z

    const/4 v1, 0x1

    .line 292
    iput-boolean v1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mSpringingBubbleToTouch:Z

    .line 294
    iget-object v1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleDraggingOut:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationForChild(Landroid/view/View;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object p0

    new-array v1, v0, [Ljava/lang/Runnable;

    .line 295
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->translationX(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array p1, v0, [Ljava/lang/Runnable;

    .line 296
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->translationY(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    .line 297
    invoke-virtual {p0, p3, p4}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->withPositionStartVelocities(FF)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    const p1, 0x461c4000    # 10000.0f

    .line 298
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->withStiffness(F)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array p1, v0, [Ljava/lang/Runnable;

    .line 299
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->start([Ljava/lang/Runnable;)V

    return-void
.end method

.method public dismissDraggedOutBubble(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 3

    const/4 v0, 0x0

    .line 256
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mIndividualBubbleWithinDismissTarget:Z

    .line 258
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationForChild(Landroid/view/View;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object p1

    const v1, 0x461c4000    # 10000.0f

    .line 259
    invoke-virtual {p1, v1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->withStiffness(F)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array v1, v0, [Ljava/lang/Runnable;

    const v2, 0x3f8ccccd    # 1.1f

    .line 260
    invoke-virtual {p1, v2, v1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->scaleX(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array v1, v0, [Ljava/lang/Runnable;

    .line 261
    invoke-virtual {p1, v2, v1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->scaleY(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Runnable;

    aput-object p2, v1, v0

    const/4 p2, 0x0

    .line 262
    invoke-virtual {p1, p2, v1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->alpha(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array p2, v0, [Ljava/lang/Runnable;

    .line 263
    invoke-virtual {p1, p2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->start([Ljava/lang/Runnable;)V

    .line 265
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->updateBubblePositions()V

    return-void
.end method

.method public dragBubbleOut(Landroid/view/View;FF)V
    .locals 5

    .line 228
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mSpringingBubbleToTouch:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    const/4 v3, 0x2

    new-array v3, v3, [Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    sget-object v4, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    aput-object v4, v3, v2

    sget-object v4, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    aput-object v4, v3, v1

    invoke-virtual {v0, p1, v3}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->arePropertiesAnimatingOnView(Landroid/view/View;[Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleDraggingOut:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationForChild(Landroid/view/View;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Runnable;

    .line 232
    invoke-virtual {v0, p2, v3}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->translationX(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array v3, v2, [Ljava/lang/Runnable;

    .line 233
    invoke-virtual {v0, p3, v3}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->translationY(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    const v3, 0x461c4000    # 10000.0f

    .line 234
    invoke-virtual {v0, v3}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->withStiffness(F)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array v3, v2, [Ljava/lang/Runnable;

    .line 235
    invoke-virtual {v0, v3}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->start([Ljava/lang/Runnable;)V

    goto :goto_0

    .line 237
    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mSpringingBubbleToTouch:Z

    .line 241
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mSpringingBubbleToTouch:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mIndividualBubbleWithinDismissTarget:Z

    if-nez v0, :cond_2

    .line 242
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 243
    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 247
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getExpandedY()F

    move-result p1

    iget p2, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleSizePx:F

    add-float/2addr p1, p2

    cmpl-float p1, p3, p1

    if-gtz p1, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getExpandedY()F

    move-result p1

    iget p2, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleSizePx:F

    sub-float/2addr p1, p2

    cmpg-float p1, p3, p1

    if-gez p1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    .line 248
    :cond_4
    :goto_1
    iget-boolean p1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleDraggedOutEnough:Z

    if-eq v1, p1, :cond_5

    .line 249
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->updateBubblePositions()V

    .line 250
    iput-boolean v1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleDraggedOutEnough:Z

    :cond_5
    return-void
.end method

.method public expandFromStack(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAnimatingCollapse:Z

    const/4 v0, 0x1

    .line 127
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAnimatingExpand:Z

    .line 128
    iput-object p1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAfterExpand:Ljava/lang/Runnable;

    .line 130
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->startOrUpdateExpandAnimation()V

    return-void
.end method

.method getAnimatedProperties()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x5

    new-array p0, p0, [Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 389
    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/4 v1, 0x1

    aput-object v0, p0, v1

    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/4 v1, 0x2

    aput-object v0, p0, v1

    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/4 v1, 0x3

    aput-object v0, p0, v1

    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/4 v1, 0x4

    aput-object v0, p0, v1

    invoke-static {p0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object p0

    return-object p0
.end method

.method public getBubbleLeft(I)F
    .locals 2

    .line 498
    iget v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 499
    iget-boolean p1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mOnLeft:Z

    if-eqz p1, :cond_0

    .line 500
    iget-object p1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mStackBounds:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget p0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleEdgeMargin:I

    int-to-float p0, p0

    add-float/2addr p1, p0

    return p1

    .line 502
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mStackBounds:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->right:F

    iget v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleEdgeMargin:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget p0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mPointerHeight:I

    int-to-float p0, p0

    sub-float/2addr p1, p0

    return p1

    :cond_1
    int-to-float p1, p1

    .line 506
    iget v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleSizePx:F

    iget v1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubblePaddingPx:F

    add-float/2addr v0, v1

    mul-float/2addr p1, v0

    .line 507
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getRowLeft()F

    move-result p0

    add-float/2addr p0, p1

    return p0
.end method

.method public getDraggedOutBubble()Landroid/view/View;
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleDraggingOut:Landroid/view/View;

    return-object p0
.end method

.method public getExpandedY()F
    .locals 4

    .line 355
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 359
    iget v2, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubblePaddingPx:F

    iget p0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mStatusBarHeight:F

    .line 361
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 362
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v0

    int-to-float v1, v0

    .line 359
    :cond_1
    invoke-static {p0, v1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    add-float/2addr v2, p0

    return v2

    :cond_2
    :goto_0
    return v1
.end method

.method getNextAnimationInChain(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;I)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method getOffsetForChainedPropertyAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method getSpringForce(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringForce;
    .locals 0

    .line 409
    new-instance p0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 p1, 0x3f400000    # 0.75f

    .line 410
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 p1, 0x43480000    # 200.0f

    .line 411
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    return-object p0
.end method

.method public synthetic lambda$startOrUpdateCollapseAnimation$2$ExpandedAnimationController(FILcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)V
    .locals 3

    .line 183
    invoke-virtual {p0, p2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->shouldBubbleBeVisible(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mCollapsePoint:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    int-to-float p2, p2

    mul-float/2addr p1, p2

    iget p0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mStackOffsetPx:F

    mul-float/2addr p1, p0

    add-float/2addr v2, p1

    iget p0, v0, Landroid/graphics/PointF;->y:F

    new-array p1, v1, [Ljava/lang/Runnable;

    invoke-virtual {p3, v2, p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->position(FF[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    goto :goto_0

    .line 188
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mCollapsePoint:Landroid/graphics/PointF;

    iget p1, p0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    new-array p2, v1, [Ljava/lang/Runnable;

    invoke-virtual {p3, p1, p0, p2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->position(FF[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    const/4 p0, 0x0

    new-array p1, v1, [Ljava/lang/Runnable;

    invoke-virtual {p3, p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->alpha(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    :goto_0
    return-void
.end method

.method public synthetic lambda$startOrUpdateCollapseAnimation$3$ExpandedAnimationController()V
    .locals 1

    const/4 v0, 0x0

    .line 193
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAnimatingCollapse:Z

    .line 195
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAfterCollapse:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 196
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 v0, 0x0

    .line 199
    iput-object v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAfterCollapse:Ljava/lang/Runnable;

    return-void
.end method

.method public synthetic lambda$startOrUpdateExpandAnimation$0$ExpandedAnimationController(ILcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 157
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 158
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getBubbleLeft(I)F

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getBubbleTop(I)F

    move-result p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Runnable;

    invoke-virtual {p2, v0, p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->position(FF[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    return-void
.end method

.method public synthetic lambda$startOrUpdateExpandAnimation$1$ExpandedAnimationController()V
    .locals 1

    const/4 v0, 0x0

    .line 163
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAnimatingExpand:Z

    .line 165
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAfterExpand:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 166
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 v0, 0x0

    .line 169
    iput-object v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAfterExpand:Ljava/lang/Runnable;

    return-void
.end method

.method public synthetic lambda$updateYPosition$5$ExpandedAnimationController(ILcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)V
    .locals 0

    .line 336
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getBubbleTop(I)F

    move-result p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Runnable;

    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->translationY(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    return-void
.end method

.method public magnetBubbleToDismiss(Landroid/view/View;FFFLjava/lang/Runnable;)V
    .locals 3

    const/4 v0, 0x1

    .line 275
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mIndividualBubbleWithinDismissTarget:Z

    const/4 v1, 0x0

    .line 276
    iput-boolean v1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mSpringingBubbleToTouch:Z

    .line 277
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationForChild(Landroid/view/View;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object p1

    const v2, 0x44bb8000    # 1500.0f

    .line 278
    invoke-virtual {p1, v2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->withStiffness(F)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    const/high16 v2, 0x3f400000    # 0.75f

    .line 279
    invoke-virtual {p1, v2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->withDampingRatio(F)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    .line 280
    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->withPositionStartVelocities(FF)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    iget-object p2, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    .line 281
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    iget p0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleSizePx:F

    div-float/2addr p0, p3

    sub-float/2addr p2, p0

    new-array p0, v1, [Ljava/lang/Runnable;

    invoke-virtual {p1, p2, p0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->translationX(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array p0, v0, [Ljava/lang/Runnable;

    aput-object p5, p0, v1

    .line 282
    invoke-virtual {p1, p4, p0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->translationY(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array p0, v1, [Ljava/lang/Runnable;

    .line 283
    invoke-virtual {p1, p0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->start([Ljava/lang/Runnable;)V

    return-void
.end method

.method onActiveControllerForLayout(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;)V
    .locals 2

    .line 368
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 369
    sget v0, Lcom/android/systemui/R$dimen;->bubble_stack_offset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mStackOffsetPx:F

    .line 370
    sget v0, Lcom/android/systemui/R$dimen;->bubble_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubblePaddingPx:F

    .line 371
    sget v0, Lcom/android/systemui/R$dimen;->individual_bubble_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleSizePx:F

    const v0, 0x105020f

    .line 373
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mStatusBarHeight:F

    .line 374
    sget v0, Lcom/android/systemui/R$dimen;->pip_dismiss_gradient_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mPipDismissHeight:F

    .line 378
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 379
    sget-object v0, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$2WcTtI3gu7zcaAxtSsEqApMIf2s;->INSTANCE:Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$2WcTtI3gu7zcaAxtSsEqApMIf2s;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationsForChildrenFromIndex(ILcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$ChildAnimationConfigurator;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$MultiAnimationStarter;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Runnable;

    .line 380
    invoke-interface {v0, v1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$MultiAnimationStarter;->startAll([Ljava/lang/Runnable;)V

    .line 382
    sget v0, Lcom/android/systemui/R$dimen;->qr_bubble_background_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mExpandedBubbleSize:I

    .line 383
    sget v0, Lcom/android/systemui/R$dimen;->qr_bubble_edge_margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleEdgeMargin:I

    .line 384
    sget v0, Lcom/android/systemui/R$dimen;->qr_bubble_pointer_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mPointerHeight:I

    return-void
.end method

.method onChildAdded(Landroid/view/View;I)V
    .locals 3

    .line 418
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAnimatingExpand:Z

    if-eqz v0, :cond_0

    .line 419
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->startOrUpdateExpandAnimation()V

    goto :goto_0

    .line 420
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mAnimatingCollapse:Z

    if-eqz v0, :cond_1

    .line 421
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->startOrUpdateCollapseAnimation()V

    goto :goto_0

    .line 423
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getXForChildAtIndex(I)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 424
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationForChild(Landroid/view/View;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object p1

    .line 426
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getExpandedY()F

    move-result p2

    iget v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleSizePx:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    sub-float/2addr p2, v0

    .line 427
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getExpandedY()F

    move-result v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Runnable;

    .line 425
    invoke-virtual {p1, p2, v0, v2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->translationY(FF[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array p2, v1, [Ljava/lang/Runnable;

    .line 428
    invoke-virtual {p1, p2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->start([Ljava/lang/Runnable;)V

    .line 429
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->updateBubblePositions()V

    :goto_0
    return-void
.end method

.method onChildRemoved(Landroid/view/View;ILjava/lang/Runnable;)V
    .locals 2

    .line 435
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationForChild(Landroid/view/View;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object p2

    .line 438
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleDraggingOut:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 439
    iput-object p1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleDraggingOut:Landroid/view/View;

    .line 440
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Runnable;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    .line 442
    invoke-virtual {p2, p1, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->alpha(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    const p1, 0x461c4000    # 10000.0f

    .line 443
    invoke-virtual {p2, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->withStiffness(F)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 444
    invoke-virtual {p2, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->withDampingRatio(F)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array p1, v1, [Ljava/lang/Runnable;

    const p3, 0x3f8ccccd    # 1.1f

    .line 445
    invoke-virtual {p2, p3, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->scaleX(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array p1, v1, [Ljava/lang/Runnable;

    .line 446
    invoke-virtual {p2, p3, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->scaleY(F[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    new-array p1, v1, [Ljava/lang/Runnable;

    .line 447
    invoke-virtual {p2, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->start([Ljava/lang/Runnable;)V

    .line 451
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->updateBubblePositions()V

    return-void
.end method

.method onChildReordered(Landroid/view/View;II)V
    .locals 0

    .line 456
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->updateBubblePositions()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/Context;)V
    .locals 0

    .line 544
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mOrientation:I

    .line 545
    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Landroid/graphics/Point;->x:I

    return-void
.end method

.method public onGestureFinished()V
    .locals 1

    const/4 v0, 0x0

    .line 322
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleDraggedOutEnough:Z

    const/4 v0, 0x0

    .line 323
    iput-object v0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleDraggingOut:Landroid/view/View;

    return-void
.end method

.method public prepareForBubbleDrag(Landroid/view/View;)V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->cancelAnimationsOnView(Landroid/view/View;)V

    .line 218
    iput-object p1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleDraggingOut:Landroid/view/View;

    .line 219
    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mBubbleDraggingOut:Landroid/view/View;

    const p1, 0x46fffe00    # 32767.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationZ(F)V

    return-void
.end method

.method public bridge synthetic setBubbleMoreView(Lcom/oneplus/systemui/bubbles/OpBubbleMore;)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->setBubbleMoreView(Lcom/oneplus/systemui/bubbles/OpBubbleMore;)V

    return-void
.end method

.method public setStackOnLeftOrWillBe(Z)V
    .locals 0

    .line 554
    iput-boolean p1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mOnLeft:Z

    return-void
.end method

.method public snapBubbleBack(Landroid/view/View;FF)V
    .locals 5

    .line 307
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 309
    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationForChildAtIndex(I)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object v1

    .line 312
    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getBubbleLeft(I)F

    move-result v2

    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getBubbleTop(I)F

    move-result v0

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v0, v4}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->position(FF[Ljava/lang/Runnable;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    .line 314
    invoke-virtual {v1, p2, p3}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->withPositionStartVelocities(FF)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Runnable;

    new-instance p3, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$N9wvaPtVhtSOeiJ2KFEP39-mzf4;

    invoke-direct {p3, p1}, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$N9wvaPtVhtSOeiJ2KFEP39-mzf4;-><init>(Landroid/view/View;)V

    aput-object p3, p2, v3

    .line 315
    invoke-virtual {v1, p2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->start([Ljava/lang/Runnable;)V

    .line 317
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->updateBubblePositions()V

    return-void
.end method

.method public updateBounds(Landroid/graphics/RectF;)V
    .locals 0

    .line 549
    iput-object p1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mStackBounds:Landroid/graphics/RectF;

    .line 550
    invoke-direct {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->updateBubblePositions()V

    return-void
.end method

.method protected updateCurrentBubbleMorePosition()V
    .locals 4

    .line 559
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    iget-object v1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mCollapsePoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->isFirstChildXLeftOfCenter(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 560
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mBubbleMore:Lcom/oneplus/systemui/bubbles/OpBubbleMore;

    iget-object v2, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mCollapsePoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->getBubbleMoreIndex()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mStackOffsetPx:F

    mul-float/2addr v0, v3

    add-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 561
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mBubbleMore:Lcom/oneplus/systemui/bubbles/OpBubbleMore;

    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->mCollapsePoint:Landroid/graphics/PointF;

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method

.method public updateYPosition(Ljava/lang/Runnable;)V
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    if-nez v0, :cond_0

    return-void

    .line 331
    :cond_0
    new-instance v0, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$RA0iBFdMEc39RMWMbXuhyZvsHZo;

    invoke-direct {v0, p0}, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$RA0iBFdMEc39RMWMbXuhyZvsHZo;-><init>(Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationsForChildrenFromIndex(ILcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$ChildAnimationConfigurator;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$MultiAnimationStarter;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Runnable;

    aput-object p1, v0, v1

    .line 336
    invoke-interface {p0, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$MultiAnimationStarter;->startAll([Ljava/lang/Runnable;)V

    return-void
.end method
