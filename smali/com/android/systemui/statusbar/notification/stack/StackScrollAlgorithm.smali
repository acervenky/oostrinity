.class public Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;
.super Ljava/lang/Object;
.source "StackScrollAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;,
        Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    }
.end annotation


# instance fields
.field private mClipNotificationScrollToTop:Z

.field private mCollapsedSize:I

.field private mGapHeight:I

.field private mHeadsUpInset:F

.field private final mHostView:Landroid/view/ViewGroup;

.field private mIncreasedPaddingBetweenElements:I

.field private mIsExpanded:Z

.field private mPaddingBetweenElements:I

.field private mPinnedZTranslationExtra:I

.field private mStatusBarHeight:I

.field private mTempAlgorithmState:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;-><init>(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mTempAlgorithmState:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .line 64
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHostView:Landroid/view/ViewGroup;

    .line 65
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->initView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    return p0
.end method

.method public static canChildBeDismissed(Landroid/view/View;)Z
    .locals 2

    .line 197
    instance-of v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 200
    :cond_0
    check-cast p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 201
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isBlockingHelperShowingAndTranslationFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 204
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->hasFinishedInitialization()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 207
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->canViewBeDismissed()Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method private childNeedsGapHeight(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;ILandroid/view/View;)Z
    .locals 0

    .line 483
    invoke-interface {p1, p4}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;->beginsSection(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-lez p3, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private clampHunToMaxTranslation(Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;)V
    .locals 2

    .line 587
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getMaxHeadsUpTranslation()F

    move-result p0

    .line 588
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getInnerHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTopPadding()F

    move-result v1

    add-float/2addr v0, v1

    .line 589
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getStackTranslation()F

    move-result p1

    add-float/2addr v0, p1

    .line 590
    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    .line 591
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getCollapsedHeight()I

    move-result p1

    int-to-float p1, p1

    sub-float p1, p0, p1

    .line 592
    iget p2, p3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 593
    iget p2, p3, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float p2, p2

    sub-float/2addr p0, p1

    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    float-to-int p0, p0

    iput p0, p3, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 595
    iput p1, p3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    return-void
.end method

.method private clampHunToTop(Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;)V
    .locals 1

    .line 577
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTopPadding()F

    move-result p0

    .line 578
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getStackTranslation()F

    move-result p1

    add-float/2addr p0, p1

    iget p1, p3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    .line 577
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    .line 579
    iget p1, p3, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float p1, p1

    iget v0, p3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    sub-float v0, p0, v0

    sub-float/2addr p1, v0

    .line 580
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getCollapsedHeight()I

    move-result p2

    int-to-float p2, p2

    .line 579
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p3, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 581
    iput p0, p3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    return-void
.end method

.method private clampPositionToShelf(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V
    .locals 1

    .line 608
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 612
    :cond_0
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getInnerHeight()I

    move-result p0

    .line 613
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v0

    sub-int/2addr p0, v0

    .line 614
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isAppearing()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isAboveShelf()Z

    move-result p3

    if-nez p3, :cond_1

    .line 616
    iget p3, p2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    int-to-float v0, p0

    invoke-static {p3, v0}, Ljava/lang/Math;->max(FF)F

    move-result p3

    iput p3, p2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    .line 618
    :cond_1
    iget p3, p2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    int-to-float p0, p0

    invoke-static {p3, p0}, Ljava/lang/Math;->min(FF)F

    move-result p3

    iput p3, p2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    .line 619
    iget p3, p2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    cmpl-float p0, p3, p0

    if-ltz p0, :cond_3

    .line 620
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isExpandAnimationRunning()Z

    move-result p0

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-nez p0, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->hasExpandingChild()Z

    move-result p0

    if-nez p0, :cond_2

    move p0, p3

    goto :goto_0

    :cond_2
    move p0, v0

    :goto_0
    iput-boolean p0, p2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 621
    iput-boolean p3, p2, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    .line 622
    iput-boolean v0, p2, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    :cond_3
    return-void
.end method

.method private getNotificationChildrenStates(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V
    .locals 3

    .line 125
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    .line 127
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 128
    instance-of v2, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v2, :cond_0

    .line 129
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 130
    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateChildrenStates(Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getPaddingForValue(Ljava/lang/Float;)F
    .locals 2

    if-nez p1, :cond_0

    .line 338
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float p0, p0

    return p0

    .line 339
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 340
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float v0, v0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mIncreasedPaddingBetweenElements:I

    int-to-float p0, p0

    .line 343
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 340
    invoke-static {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result p0

    return p0

    .line 345
    :cond_1
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float p0, p0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 348
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    add-float/2addr p1, v0

    .line 345
    invoke-static {v1, p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result p0

    return p0
.end method

.method private initAlgorithmState(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    move-object/from16 v3, p3

    .line 238
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getOverScrollAmount(Z)F

    move-result v4

    .line 240
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getScrollY()I

    move-result v5

    .line 244
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    float-to-int v4, v5

    .line 245
    iput v4, v1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrollY:I

    .line 252
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 253
    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 254
    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 255
    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->paddingMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 258
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isDark()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 259
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->hasPulsingNotifications()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    move v5, v2

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    move v7, v2

    const/4 v8, 0x0

    :goto_1
    if-ge v2, v4, :cond_b

    move-object/from16 v9, p1

    .line 272
    invoke-virtual {v9, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 273
    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_a

    .line 274
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object v11

    if-ne v10, v11, :cond_2

    goto/16 :goto_5

    :cond_2
    if-lt v2, v5, :cond_3

    const/4 v8, 0x0

    .line 281
    :cond_3
    invoke-direct {v0, v1, v7, v10}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->updateNotGoneIndex(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;ILcom/android/systemui/statusbar/notification/row/ExpandableView;)I

    move-result v7

    .line 282
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIncreasedPaddingAmount()F

    move-result v11

    const/4 v13, 0x0

    cmpl-float v14, v11, v13

    if-eqz v14, :cond_6

    .line 284
    iget-object v15, v1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->paddingMap:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v15, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v8, :cond_7

    .line 286
    iget-object v6, v1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->paddingMap:Ljava/util/HashMap;

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    .line 287
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-direct {v0, v15}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->getPaddingForValue(Ljava/lang/Float;)F

    move-result v15

    if-eqz v6, :cond_5

    .line 289
    invoke-direct {v0, v6}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->getPaddingForValue(Ljava/lang/Float;)F

    move-result v12

    if-lez v14, :cond_4

    .line 291
    invoke-static {v12, v15, v11}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v15

    goto :goto_2

    .line 295
    :cond_4
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v11

    cmpl-float v11, v11, v13

    if-lez v11, :cond_5

    .line 299
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 296
    invoke-static {v15, v12, v6}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v15

    .line 302
    :cond_5
    :goto_2
    iget-object v6, v1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->paddingMap:Ljava/util/HashMap;

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v6, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    if-eqz v8, :cond_7

    .line 307
    iget-object v6, v1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->paddingMap:Ljava/util/HashMap;

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-direct {v0, v6}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->getPaddingForValue(Ljava/lang/Float;)F

    move-result v6

    .line 308
    iget-object v11, v1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->paddingMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v11, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    :cond_7
    :goto_3
    instance-of v6, v10, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v6, :cond_9

    .line 311
    move-object v6, v10

    check-cast v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 314
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v8

    .line 315
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v6

    if-eqz v6, :cond_9

    if-eqz v8, :cond_9

    .line 316
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 317
    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_8

    .line 318
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v8

    .line 319
    iput v7, v8, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_9
    move-object v8, v10

    :cond_a
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 328
    :cond_b
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getExpandingNotification()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 330
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 331
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_6

    .line 332
    :cond_c
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_6

    :cond_d
    const/4 v0, -0x1

    .line 329
    :goto_6
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->access$002(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;I)I

    return-void
.end method

.method private initConstants(Landroid/content/Context;)V
    .locals 2

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 74
    sget v0, Lcom/android/systemui/R$dimen;->notification_divider_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    .line 76
    sget v0, Lcom/android/systemui/R$dimen;->notification_divider_height_increased:I

    .line 77
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mIncreasedPaddingBetweenElements:I

    .line 78
    sget v0, Lcom/android/systemui/R$dimen;->notification_min_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mCollapsedSize:I

    .line 79
    sget v0, Lcom/android/systemui/R$dimen;->status_bar_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mStatusBarHeight:I

    .line 80
    sget v0, Lcom/android/systemui/R$bool;->config_clipNotificationScrollToTop:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mClipNotificationScrollToTop:Z

    .line 81
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mStatusBarHeight:I

    sget v1, Lcom/android/systemui/R$dimen;->heads_up_status_bar_padding:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHeadsUpInset:F

    .line 83
    sget v0, Lcom/android/systemui/R$dimen;->heads_up_pinned_elevation:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPinnedZTranslationExtra:I

    .line 85
    sget v0, Lcom/android/systemui/R$dimen;->notification_section_divider_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mGapHeight:I

    return-void
.end method

.method private resetChildViewStates()V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 118
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 119
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->resetViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateClipping(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V
    .locals 12

    .line 159
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTopPadding()F

    move-result v0

    .line 160
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getStackTranslation()F

    move-result v2

    add-float/2addr v0, v2

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getExpandAnimationTopChange()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 164
    :goto_0
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v1

    move v5, v4

    move v1, v3

    :goto_1
    if-ge v1, v2, :cond_7

    .line 166
    iget-object v6, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 167
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v7

    .line 168
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mustStayOnScreen()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-boolean v8, v7, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    if-eqz v8, :cond_2

    .line 169
    :cond_1
    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 170
    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 172
    :cond_2
    iget v8, v7, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    .line 173
    iget v9, v7, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float v9, v9

    add-float/2addr v9, v8

    .line 175
    instance-of v10, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v10, :cond_3

    move-object v10, v6

    check-cast v10, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 176
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isPinned()Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    goto :goto_2

    :cond_3
    move v10, v3

    .line 177
    :goto_2
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mClipNotificationScrollToTop:Z

    if-eqz v11, :cond_5

    iget-boolean v11, v7, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    if-nez v11, :cond_5

    cmpg-float v11, v8, v4

    if-gez v11, :cond_5

    if-eqz v10, :cond_4

    .line 179
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isShadeExpanded()Z

    move-result v10

    if-eqz v10, :cond_5

    :cond_4
    sub-float v10, v4, v8

    float-to-int v10, v10

    .line 182
    iput v10, v7, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    goto :goto_3

    .line 184
    :cond_5
    iput v3, v7, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    .line 187
    :goto_3
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isTransparent()Z

    move-result v6

    if-nez v6, :cond_6

    move v5, v8

    move v4, v9

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    return-void
.end method

.method private updateDimmedActivatedHideSensitive(Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V
    .locals 10

    .line 215
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isDimmed()Z

    move-result p0

    .line 216
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isFullyDark()Z

    move-result v0

    .line 217
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isHideSensitive()Z

    move-result v1

    .line 218
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getActivatedChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object v2

    .line 219
    iget-object v3, p2, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    .line 221
    iget-object v6, p2, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 222
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v7

    .line 223
    iput-boolean p0, v7, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->dimmed:Z

    .line 224
    iput-boolean v0, v7, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->dark:Z

    .line 225
    iput-boolean v1, v7, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->hideSensitive:Z

    if-ne v2, v6, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    move v6, v4

    :goto_1
    if-eqz p0, :cond_1

    if-eqz v6, :cond_1

    .line 228
    iget v6, v7, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    const/high16 v8, 0x40000000    # 2.0f

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getZDistanceBetweenElements()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v8

    add-float/2addr v6, v9

    iput v6, v7, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateHeadsUpStates(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V
    .locals 12

    .line 515
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v1

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_a

    .line 518
    iget-object v5, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 519
    instance-of v6, v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v6, :cond_0

    goto/16 :goto_3

    .line 522
    :cond_0
    check-cast v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 523
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v6

    if-nez v6, :cond_1

    goto/16 :goto_3

    .line 526
    :cond_1
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v6

    const/4 v7, 0x1

    if-nez v4, :cond_2

    .line 527
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mustStayOnScreen()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-boolean v8, v6, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    if-nez v8, :cond_2

    .line 529
    iput v7, v6, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    move-object v4, v5

    :cond_2
    if-ne v4, v5, :cond_3

    goto :goto_1

    :cond_3
    move v7, v2

    .line 532
    :goto_1
    iget v8, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    iget v9, v6, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    .line 533
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mIsExpanded:Z

    if-eqz v9, :cond_4

    .line 534
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mustStayOnScreen()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-boolean v9, v6, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    if-nez v9, :cond_4

    .line 536
    invoke-direct {p0, p2, v5, v6}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->clampHunToTop(Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;)V

    if-nez v3, :cond_4

    .line 537
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isAboveShelf()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 539
    invoke-direct {p0, p2, v5, v6}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->clampHunToMaxTranslation(Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;)V

    .line 540
    iput-boolean v2, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 544
    :cond_4
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isPinned()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 545
    iget v9, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    iget v10, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHeadsUpInset:F

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iput v9, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    .line 546
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v9

    iget v10, v6, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v6, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 547
    iput-boolean v2, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    if-nez v4, :cond_5

    move-object v9, v1

    goto :goto_2

    .line 549
    :cond_5
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v9

    :goto_2
    if-eqz v9, :cond_7

    if-nez v7, :cond_7

    .line 550
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mIsExpanded:Z

    if-eqz v10, :cond_6

    iget v10, v9, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    iget v11, v9, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    cmpg-float v8, v8, v10

    if-gez v8, :cond_7

    .line 554
    :cond_6
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v8

    iput v8, v6, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 555
    iget v8, v9, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    iget v9, v9, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget v9, v6, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iput v8, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    .line 565
    :cond_7
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mIsExpanded:Z

    if-nez v8, :cond_8

    if-eqz v7, :cond_8

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getScrollY()I

    move-result v7

    if-lez v7, :cond_8

    .line 566
    iget v7, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getScrollY()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iput v7, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    .line 569
    :cond_8
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isHeadsUpAnimatingAway()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 570
    iput-boolean v2, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_a
    :goto_3
    return-void
.end method

.method private updateNotGoneIndex(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;ILcom/android/systemui/statusbar/notification/row/ExpandableView;)I
    .locals 0

    .line 354
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object p0

    .line 355
    iput p2, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    .line 356
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    return p2
.end method

.method private updatePositionsForState(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V
    .locals 9

    .line 383
    iget v0, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrollY:I

    neg-int v0, v0

    int-to-float v0, v0

    .line 384
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v7, v0

    :goto_0
    if-ge v2, v1, :cond_0

    const/4 v8, 0x0

    move-object v3, p0

    move v4, v2

    move-object v5, p1

    move-object v6, p2

    .line 386
    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->updateChild(ILcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;FZ)F

    move-result v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updatePulsingStates(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V
    .locals 4

    .line 497
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_3

    .line 499
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 500
    instance-of v3, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v3, :cond_0

    goto :goto_1

    .line 503
    :cond_0
    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 504
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->showingAmbientPulsing()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isFullyDark()Z

    move-result v3

    if-nez v3, :cond_2

    if-nez v1, :cond_1

    .line 505
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isPulseExpanding()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 508
    :cond_1
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v2

    .line 509
    iput-boolean v0, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private updateShelfState(Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V
    .locals 0

    .line 151
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 153
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationShelf;->updateState(Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V

    :cond_0
    return-void
.end method

.method private updateSpeedBumpState(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V
    .locals 4

    .line 137
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    .line 138
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getSpeedBumpIndex()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    .line 140
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 141
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v2

    if-lt v1, p2, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v0

    .line 145
    :goto_1
    iput-boolean v3, v2, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->belowSpeedBump:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateZValuesForState(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V
    .locals 2

    .line 643
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_0

    .line 646
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->updateChildZValue(IFLcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)F

    move-result v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected getMaxAllowedChildHeight(Landroid/view/View;)I
    .locals 1

    .line 627
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v0, :cond_0

    .line 628
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 629
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result p0

    return p0

    :cond_0
    if-nez p1, :cond_1

    .line 631
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mCollapsedSize:I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    :goto_0
    return p0
.end method

.method protected getPaddingAfterChild(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/row/ExpandableView;)I
    .locals 0

    .line 492
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->getPaddingAfterChild(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)I

    move-result p0

    return p0
.end method

.method public initView(Landroid/content/Context;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->initConstants(Landroid/content/Context;)V

    return-void
.end method

.method public resetViewStates(Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mTempAlgorithmState:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .line 97
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->resetChildViewStates()V

    .line 99
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHostView:Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v0, p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->initAlgorithmState(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V

    .line 101
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->updatePositionsForState(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V

    .line 103
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->updateZValuesForState(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V

    .line 105
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->updateHeadsUpStates(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V

    .line 106
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->updatePulsingStates(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V

    .line 108
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->updateDimmedActivatedHideSensitive(Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V

    .line 109
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->updateClipping(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V

    .line 110
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->updateSpeedBumpState(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V

    .line 111
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->updateShelfState(Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V

    .line 112
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->getNotificationChildrenStates(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V

    return-void
.end method

.method public setIsExpanded(Z)V
    .locals 0

    .line 702
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mIsExpanded:Z

    return-void
.end method

.method protected updateChild(ILcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;FZ)F
    .locals 15

    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 415
    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 417
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getSectionProvider()Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;

    move-result-object v4

    invoke-direct {p0, v4, v2, v1, v3}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->childNeedsGapHeight(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;ILandroid/view/View;)Z

    move-result v4

    .line 418
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v5

    const/4 v6, 0x0

    .line 419
    iput v6, v5, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    if-eqz v4, :cond_0

    if-nez p5, :cond_0

    .line 422
    iget v7, v0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mGapHeight:I

    int-to-float v7, v7

    add-float v7, p4, v7

    goto :goto_0

    :cond_0
    move/from16 v7, p4

    .line 425
    :goto_0
    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->getPaddingAfterChild(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/row/ExpandableView;)I

    move-result v8

    .line 426
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->getMaxAllowedChildHeight(Landroid/view/View;)I

    move-result v9

    const/4 v10, 0x2

    const/4 v11, 0x0

    if-eqz p5, :cond_1

    add-int v12, v9, v8

    int-to-float v12, v12

    sub-float v12, v7, v12

    .line 428
    iput v12, v5, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    cmpg-float v7, v7, v11

    if-gtz v7, :cond_2

    .line 430
    iput v10, v5, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    goto :goto_1

    .line 433
    :cond_1
    iput v7, v5, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    .line 435
    :cond_2
    :goto_1
    instance-of v7, v3, Lcom/android/systemui/statusbar/notification/row/FooterView;

    .line 436
    instance-of v12, v3, Lcom/android/systemui/statusbar/EmptyShadeView;

    const/4 v13, 0x4

    .line 438
    iput v13, v5, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    .line 439
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTopPadding()F

    move-result v13

    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getStackTranslation()F

    move-result v14

    add-float/2addr v13, v14

    .line 440
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->getIndexOfExpandingNotification()I

    move-result v2

    if-gt v1, v2, :cond_3

    .line 441
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getExpandAnimationTopChange()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v13, v2

    .line 443
    :cond_3
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mustStayOnScreen()Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, v5, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    cmpl-float v14, v2, v11

    if-ltz v14, :cond_5

    .line 446
    iget v14, v5, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float v14, v14

    add-float/2addr v2, v14

    add-float/2addr v2, v13

    .line 447
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getMaxHeadsUpTranslation()F

    move-result v14

    cmpg-float v2, v2, v14

    if-gez v2, :cond_4

    const/4 v6, 0x1

    :cond_4
    iput-boolean v6, v5, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    :cond_5
    if-eqz v7, :cond_6

    .line 450
    iget v2, v5, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    .line 451
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getInnerHeight()I

    move-result v3

    sub-int/2addr v3, v9

    int-to-float v3, v3

    .line 450
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v5, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    goto :goto_2

    :cond_6
    if-eqz v12, :cond_7

    .line 453
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getInnerHeight()I

    move-result v2

    sub-int/2addr v2, v9

    int-to-float v2, v2

    .line 454
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getStackTranslation()F

    move-result v3

    const/high16 v6, 0x3e800000    # 0.25f

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    iput v2, v5, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    goto :goto_2

    :cond_7
    move-object/from16 v2, p3

    .line 456
    invoke-direct {p0, v3, v5, v2}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->clampPositionToShelf(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V

    :goto_2
    if-eqz p5, :cond_8

    .line 460
    iget v2, v5, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    if-eqz v4, :cond_9

    .line 462
    iget v0, v0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mGapHeight:I

    int-to-float v0, v0

    sub-float/2addr v2, v0

    goto :goto_3

    .line 465
    :cond_8
    iget v0, v5, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    int-to-float v2, v9

    add-float/2addr v0, v2

    int-to-float v2, v8

    add-float/2addr v2, v0

    cmpg-float v0, v2, v11

    if-gtz v0, :cond_9

    .line 467
    iput v10, v5, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    .line 470
    :cond_9
    :goto_3
    iget v0, v5, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    if-nez v0, :cond_a

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to assign location for child "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackScrollAlgorithm"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_a
    iget v0, v5, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    add-float/2addr v0, v13

    iput v0, v5, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    return v2
.end method

.method protected updateChildZValue(IFLcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)F
    .locals 7

    .line 654
    iget-object p3, p3, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 655
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v0

    .line 656
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getZDistanceBetweenElements()I

    move-result v1

    .line 657
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getBaseZHeight()I

    move-result v2

    int-to-float v2, v2

    .line 658
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mustStayOnScreen()Z

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_1

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    if-nez v3, :cond_1

    .line 659
    invoke-virtual {p4, p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isDozingAndNotPulsing(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    move-result v3

    if-nez v3, :cond_1

    iget v3, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    .line 660
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTopPadding()F

    move-result v5

    .line 661
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getStackTranslation()F

    move-result v6

    add-float/2addr v5, v6

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-eqz p1, :cond_0

    add-float/2addr p2, v4

    goto :goto_0

    .line 665
    :cond_0
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTopPadding()F

    move-result p1

    .line 666
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getStackTranslation()F

    move-result p4

    add-float/2addr p1, p4

    iget p4, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    sub-float/2addr p1, p4

    .line 667
    iget p4, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float p4, p4

    div-float/2addr p1, p4

    invoke-static {v4, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    add-float/2addr p2, p1

    :goto_0
    int-to-float p1, v1

    mul-float/2addr p1, p2

    add-float/2addr v2, p1

    .line 669
    iput v2, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    goto :goto_2

    :cond_1
    if-nez p1, :cond_4

    .line 671
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isAboveShelf()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 674
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    .line 675
    :cond_2
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result p1

    .line 676
    :goto_1
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getInnerHeight()I

    move-result v3

    sub-int/2addr v3, p1

    int-to-float v3, v3

    .line 677
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTopPadding()F

    move-result v5

    add-float/2addr v3, v5

    .line 678
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getStackTranslation()F

    move-result p4

    add-float/2addr v3, p4

    .line 679
    iget p4, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getPinnedHeadsUpHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr p4, v5

    iget v5, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float v5, v5

    add-float/2addr p4, v5

    cmpl-float v5, v3, p4

    if-lez v5, :cond_3

    .line 682
    iput v2, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    goto :goto_2

    :cond_3
    sub-float/2addr p4, v3

    int-to-float p1, p1

    div-float/2addr p4, p1

    .line 685
    invoke-static {p4, v4}, Ljava/lang/Math;->min(FF)F

    move-result p1

    int-to-float p4, v1

    mul-float/2addr p1, p4

    add-float/2addr v2, p1

    .line 686
    iput v2, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    goto :goto_2

    .line 689
    :cond_4
    iput v2, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    .line 696
    :goto_2
    iget p1, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getHeaderVisibleAmount()F

    move-result p3

    sub-float/2addr v4, p3

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPinnedZTranslationExtra:I

    int-to-float p0, p0

    mul-float/2addr v4, p0

    add-float/2addr p1, v4

    iput p1, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    return p2
.end method
