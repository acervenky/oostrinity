.class public Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;
.super Landroid/widget/FrameLayout;
.source "CollapsingToolbarLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;,
        Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;
    }
.end annotation


# instance fields
.field private mCollapsedTitileMarginBottom:I

.field final mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

.field private mCollapsingTitleEnabled:Z

.field private mContentScrim:Landroid/graphics/drawable/Drawable;

.field mCurrentOffset:I

.field private mDrawCollapsingTitle:Z

.field private mDummyView:Landroid/view/View;

.field private mExpandedMarginBottom:I

.field private mExpandedMarginEnd:I

.field private mExpandedMarginStart:I

.field private mExpandedMarginTop:I

.field mLastInsets:Lcom/oneplus/support/core/view/WindowInsetsCompat;

.field private mOnOffsetChangedListener:Lcom/oneplus/lib/design/widget/AppBarLayout$OnOffsetChangedListener;

.field private mRefreshToolbar:Z

.field private mScrimAlpha:I

.field private mScrimAnimationDuration:J

.field private mScrimAnimator:Landroid/animation/ValueAnimator;

.field private mScrimVisibleHeightTrigger:I

.field private mScrimsAreShown:Z

.field mStatusBarScrim:Landroid/graphics/drawable/Drawable;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

.field private mToolbarDirectChild:Landroid/view/View;

.field private mToolbarDrawIndex:I

.field private mToolbarId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 148
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 152
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mRefreshToolbar:Z

    .line 124
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mTmpRect:Landroid/graphics/Rect;

    const/4 v1, -0x1

    .line 135
    iput v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimVisibleHeightTrigger:I

    .line 154
    new-instance v2, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-direct {v2, p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    .line 155
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setTextSizeInterpolator(Landroid/view/animation/Interpolator;)V

    .line 157
    sget-object v2, Lcom/oneplus/commonctrl/R$styleable;->OpCollapsingToolbarLayout:[I

    sget v3, Lcom/oneplus/commonctrl/R$style;->Widget_Design_CollapsingToolbar:I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 161
    iget-object p2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    sget p3, Lcom/oneplus/commonctrl/R$styleable;->OpCollapsingToolbarLayout_opExpandedTitleGravity:I

    const v2, 0x800053

    .line 162
    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 161
    invoke-virtual {p2, p3}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setExpandedTextGravity(I)V

    .line 164
    iget-object p2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    sget p3, Lcom/oneplus/commonctrl/R$styleable;->OpCollapsingToolbarLayout_opCollapsedTitleGravity:I

    const v2, 0x800013

    .line 165
    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 164
    invoke-virtual {p2, p3}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setCollapsedTextGravity(I)V

    .line 168
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->OpCollapsingToolbarLayout_opExpandedTitleMargin:I

    const/4 p3, 0x0

    .line 169
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mExpandedMarginBottom:I

    iput p2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mExpandedMarginEnd:I

    iput p2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mExpandedMarginTop:I

    iput p2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mExpandedMarginStart:I

    .line 171
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->OpCollapsingToolbarLayout_opExpandedTitleMarginStart:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 172
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->OpCollapsingToolbarLayout_opExpandedTitleMarginStart:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mExpandedMarginStart:I

    .line 175
    :cond_0
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->OpCollapsingToolbarLayout_opExpandedTitleMarginEnd:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 176
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->OpCollapsingToolbarLayout_opExpandedTitleMarginEnd:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mExpandedMarginEnd:I

    .line 179
    :cond_1
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->OpCollapsingToolbarLayout_opExpandedTitleMarginTop:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 180
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->OpCollapsingToolbarLayout_opExpandedTitleMarginTop:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mExpandedMarginTop:I

    .line 183
    :cond_2
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->OpCollapsingToolbarLayout_opExpandedTitleMarginBottom:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 184
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->OpCollapsingToolbarLayout_opExpandedTitleMarginBottom:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mExpandedMarginBottom:I

    .line 187
    :cond_3
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->OpCollapsingToolbarLayout_opCollapsedTitleMarginBottom:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 188
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->OpCollapsingToolbarLayout_opCollapsedTitleMarginBottom:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsedTitileMarginBottom:I

    .line 191
    :cond_4
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->OpCollapsingToolbarLayout_opTitleEnabled:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    .line 193
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->OpCollapsingToolbarLayout_android_title:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 196
    iget-object p2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    sget v0, Lcom/oneplus/commonctrl/R$style;->OPTextAppearance_Design_CollapsingToolbar_Expanded:I

    invoke-virtual {p2, v0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setExpandedTextAppearance(I)V

    .line 198
    iget-object p2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    sget v0, Lcom/oneplus/commonctrl/R$style;->TextAppearance_Widget_ActionBar_Title:I

    invoke-virtual {p2, v0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setCollapsedTextAppearance(I)V

    .line 202
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->OpCollapsingToolbarLayout_opExpandedTitleTextAppearance:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 203
    iget-object p2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    sget v0, Lcom/oneplus/commonctrl/R$styleable;->OpCollapsingToolbarLayout_opExpandedTitleTextAppearance:I

    .line 204
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 203
    invoke-virtual {p2, v0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setExpandedTextAppearance(I)V

    .line 207
    :cond_5
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->OpCollapsingToolbarLayout_opCollapsedTitleTextAppearance:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 208
    iget-object p2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    sget v0, Lcom/oneplus/commonctrl/R$styleable;->OpCollapsingToolbarLayout_opCollapsedTitleTextAppearance:I

    .line 209
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 208
    invoke-virtual {p2, v0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setCollapsedTextAppearance(I)V

    .line 213
    :cond_6
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->OpCollapsingToolbarLayout_opScrimVisibleHeightTrigger:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimVisibleHeightTrigger:I

    .line 216
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->OpCollapsingToolbarLayout_opScrimAnimationDuration:I

    const/16 v0, 0x258

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    int-to-long v2, p2

    iput-wide v2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimAnimationDuration:J

    .line 220
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->OpCollapsingToolbarLayout_opContentScrim:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    .line 221
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->OpCollapsingToolbarLayout_opStatusBarScrim:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    .line 223
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->OpCollapsingToolbarLayout_opToolbarId:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbarId:I

    .line 225
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 227
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 229
    new-instance p1, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$1;

    invoke-direct {p1, p0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$1;-><init>(Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;)V

    invoke-static {p0, p1}, Lcom/oneplus/support/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Lcom/oneplus/support/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method private animateScrim(I)V
    .locals 4

    .line 606
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->ensureToolbar()V

    .line 607
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 608
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    .line 609
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    iget-wide v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimAnimationDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 610
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    .line 611
    iget v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    if-le p1, v1, :cond_0

    .line 612
    new-instance v1, Lcom/oneplus/support/core/view/animation/FastOutLinearInInterpolator;

    invoke-direct {v1}, Lcom/oneplus/support/core/view/animation/FastOutLinearInInterpolator;-><init>()V

    goto :goto_0

    .line 613
    :cond_0
    new-instance v1, Lcom/oneplus/support/core/view/animation/LinearOutSlowInInterpolator;

    invoke-direct {v1}, Lcom/oneplus/support/core/view/animation/LinearOutSlowInInterpolator;-><init>()V

    .line 610
    :goto_0
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 614
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$2;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$2;-><init>(Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_1

    .line 620
    :cond_1
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 621
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 624
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 625
    iget-object p0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private ensureToolbar()V
    .locals 6

    .line 343
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mRefreshToolbar:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 348
    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    .line 349
    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbarDirectChild:Landroid/view/View;

    .line 351
    iget v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbarId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 353
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/actionbar/Toolbar;

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    .line 354
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    if-eqz v1, :cond_1

    .line 355
    invoke-direct {p0, v1}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->findDirectChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbarDirectChild:Landroid/view/View;

    .line 359
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    const/4 v2, 0x0

    if-nez v1, :cond_4

    .line 363
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    .line 364
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 365
    instance-of v5, v4, Lcom/oneplus/lib/widget/actionbar/Toolbar;

    if-eqz v5, :cond_2

    .line 366
    move-object v0, v4

    check-cast v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 370
    :cond_3
    :goto_1
    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    .line 373
    :cond_4
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->updateDummyView()V

    .line 374
    iput-boolean v2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mRefreshToolbar:Z

    return-void
.end method

.method private findDirectChild(Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 387
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eq v0, p0, :cond_1

    if-eqz v0, :cond_1

    .line 388
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 389
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    .line 387
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private static getHeightWithMargins(Landroid/view/View;)I
    .locals 2

    .line 501
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 502
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 503
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 504
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p0, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p0, v0

    return p0

    .line 506
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0
.end method

.method static getViewOffsetHelper(Landroid/view/View;)Lcom/oneplus/lib/design/widget/ViewOffsetHelper;
    .locals 2

    .line 510
    sget v0, Lcom/oneplus/commonctrl/R$id;->view_offset_helper:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;

    if-nez v0, :cond_0

    .line 512
    new-instance v0, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;-><init>(Landroid/view/View;)V

    .line 513
    sget v1, Lcom/oneplus/commonctrl/R$id;->view_offset_helper:I

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private isToolbarChildDrawnNext(Landroid/view/View;)Z
    .locals 2

    .line 378
    iget v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbarDrawIndex:I

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result p0

    add-int/2addr p0, v1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private updateDummyView()V
    .locals 2

    .line 396
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 399
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 400
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 403
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    if-eqz v0, :cond_2

    .line 404
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 405
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 408
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1, v1}, Landroid/widget/Toolbar;->addView(Landroid/view/View;II)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1111
    instance-of p0, p1, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;

    return p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 291
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 295
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->ensureToolbar()V

    .line 296
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    if-lez v1, :cond_0

    .line 297
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 298
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 302
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mDrawCollapsingTitle:Z

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->draw(Landroid/graphics/Canvas;)V

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    if-lez v0, :cond_3

    .line 308
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mLastInsets:Lcom/oneplus/support/core/view/WindowInsetsCompat;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oneplus/support/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    if-lez v0, :cond_3

    .line 310
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCurrentOffset:I

    neg-int v3, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCurrentOffset:I

    sub-int/2addr v0, v5

    invoke-virtual {v2, v1, v3, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 312
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 313
    iget-object p0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    .line 323
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p3

    .line 325
    iget-object p4, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz p4, :cond_0

    iget p4, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    if-lez p4, :cond_0

    invoke-direct {p0, p2}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->isToolbarChildDrawnNext(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 326
    iget-object p2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iget p3, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 327
    iget-object p0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 p3, 0x1

    :cond_0
    return p3
.end method

.method protected drawableStateChanged()V
    .locals 4

    .line 732
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 734
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object v0

    .line 737
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 738
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 739
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v2, v1

    .line 741
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 742
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 743
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v2, v1

    .line 745
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    if-eqz v1, :cond_2

    .line 746
    invoke-virtual {v1, v0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setState([I)Z

    move-result v0

    or-int/2addr v2, v0

    :cond_2
    if-eqz v2, :cond_3

    .line 750
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_3
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 106
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->generateDefaultLayoutParams()Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .line 106
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->generateDefaultLayoutParams()Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected generateDefaultLayoutParams()Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;
    .locals 1

    .line 1116
    new-instance p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 106
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 106
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .line 1121
    new-instance v0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .line 1126
    new-instance p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;

    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method final getMaxOffsetForPinChild(Landroid/view/View;)I
    .locals 2

    .line 1252
    invoke-static {p1}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Lcom/oneplus/lib/design/widget/ViewOffsetHelper;

    move-result-object v0

    .line 1253
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;

    .line 1254
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    .line 1255
    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->getLayoutTop()I

    move-result v0

    sub-int/2addr p0, v0

    .line 1256
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int/2addr p0, p1

    iget p1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public getScrimVisibleHeightTrigger()I
    .locals 2

    .line 1072
    iget v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimVisibleHeightTrigger:I

    if-ltz v0, :cond_0

    return v0

    .line 1078
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mLastInsets:Lcom/oneplus/support/core/view/WindowInsetsCompat;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/support/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1080
    :goto_0
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    .line 1083
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    .line 1088
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x3

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 241
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 244
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 245
    instance-of v1, v0, Lcom/oneplus/lib/design/widget/AppBarLayout;

    if-eqz v1, :cond_1

    .line 247
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lcom/oneplus/support/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    invoke-static {p0, v1}, Lcom/oneplus/support/core/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 249
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mOnOffsetChangedListener:Lcom/oneplus/lib/design/widget/AppBarLayout$OnOffsetChangedListener;

    if-nez v1, :cond_0

    .line 250
    new-instance v1, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;-><init>(Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;)V

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mOnOffsetChangedListener:Lcom/oneplus/lib/design/widget/AppBarLayout$OnOffsetChangedListener;

    .line 252
    :cond_0
    check-cast v0, Lcom/oneplus/lib/design/widget/AppBarLayout;

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mOnOffsetChangedListener:Lcom/oneplus/lib/design/widget/AppBarLayout$OnOffsetChangedListener;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/design/widget/AppBarLayout;->addOnOffsetChangedListener(Lcom/oneplus/lib/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    .line 255
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 262
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 263
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mOnOffsetChangedListener:Lcom/oneplus/lib/design/widget/AppBarLayout$OnOffsetChangedListener;

    if-eqz v1, :cond_0

    instance-of v2, v0, Lcom/oneplus/lib/design/widget/AppBarLayout;

    if-eqz v2, :cond_0

    .line 264
    check-cast v0, Lcom/oneplus/lib/design/widget/AppBarLayout;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/design/widget/AppBarLayout;->removeOnOffsetChangedListener(Lcom/oneplus/lib/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    .line 267
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    .line 421
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 423
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mLastInsets:Lcom/oneplus/support/core/view/WindowInsetsCompat;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 425
    invoke-virtual {p1}, Lcom/oneplus/support/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result p1

    .line 426
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 427
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 428
    invoke-static {v3}, Lcom/oneplus/support/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 429
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    if-ge v4, p1, :cond_0

    .line 432
    invoke-static {v3, p1}, Lcom/oneplus/support/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 439
    :cond_1
    iget-boolean p1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    if-eqz p1, :cond_9

    .line 442
    invoke-static {p1}, Lcom/oneplus/support/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    .line 443
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    move p1, v1

    goto :goto_1

    :cond_2
    move p1, v0

    :goto_1
    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mDrawCollapsingTitle:Z

    .line 445
    iget-boolean p1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mDrawCollapsingTitle:Z

    if-eqz p1, :cond_9

    .line 446
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p1

    if-ne p1, v1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v0

    .line 451
    :goto_2
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbarDirectChild:Landroid/view/View;

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    .line 450
    :goto_3
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->getMaxOffsetForPinChild(Landroid/view/View;)I

    move-result p1

    .line 452
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    iget-object v3, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-static {p0, v2, v3}, Lcom/oneplus/lib/design/widget/Utils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 453
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    iget-object v3, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-eqz v1, :cond_5

    .line 455
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getTitleMarginEnd()I

    move-result v4

    goto :goto_4

    .line 456
    :cond_5
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getTitleMarginStart()I

    move-result v4

    :goto_4
    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, p1

    iget-object v5, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    .line 457
    invoke-virtual {v5}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getTitleMarginTop()I

    move-result v5

    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getTitieTopWithoutOffset()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    if-eqz v1, :cond_6

    .line 459
    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getTitleMarginStart()I

    move-result v6

    goto :goto_5

    .line 460
    :cond_6
    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getTitleMarginEnd()I

    move-result v6

    :goto_5
    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, p1

    iget-object p1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    .line 461
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getTitleMarginBottom()I

    move-result p1

    sub-int/2addr v6, p1

    .line 453
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setCollapsedBounds(IIII)V

    .line 464
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    if-eqz v1, :cond_7

    .line 465
    iget v2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mExpandedMarginEnd:I

    goto :goto_6

    :cond_7
    iget v2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mExpandedMarginStart:I

    :goto_6
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mExpandedMarginTop:I

    add-int/2addr v3, v4

    sub-int/2addr p4, p2

    if-eqz v1, :cond_8

    .line 467
    iget p2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mExpandedMarginStart:I

    goto :goto_7

    :cond_8
    iget p2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mExpandedMarginEnd:I

    :goto_7
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    iget p2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mExpandedMarginBottom:I

    sub-int/2addr p5, p2

    .line 464
    invoke-virtual {p1, v2, v3, p4, p5}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setExpandedBounds(IIII)V

    .line 470
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->recalculate()V

    .line 476
    :cond_9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    :goto_8
    if-ge v0, p1, :cond_a

    .line 477
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Lcom/oneplus/lib/design/widget/ViewOffsetHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->onViewLayout()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 481
    :cond_a
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    if-eqz p1, :cond_e

    .line 482
    iget-boolean p1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 484
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    iget-object p2, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setText(Ljava/lang/CharSequence;)V

    .line 486
    :cond_b
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbarDirectChild:Landroid/view/View;

    if-eqz p1, :cond_d

    if-ne p1, p0, :cond_c

    goto :goto_9

    .line 490
    :cond_c
    invoke-static {p1}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->getHeightWithMargins(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    .line 491
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbarDirectChild:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbarDrawIndex:I

    goto :goto_a

    .line 487
    :cond_d
    :goto_9
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-static {p1}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->getHeightWithMargins(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    .line 488
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbarDrawIndex:I

    goto :goto_a

    :cond_e
    const/4 p1, -0x1

    .line 494
    iput p1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbarDrawIndex:I

    .line 497
    :goto_a
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->updateScrimVisibility()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 415
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->ensureToolbar()V

    .line 416
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 336
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 337
    iget-object p0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    const/4 p3, 0x0

    .line 338
    invoke-virtual {p0, p3, p3, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method onWindowInsetChanged(Lcom/oneplus/support/core/view/WindowInsetsCompat;)Lcom/oneplus/support/core/view/WindowInsetsCompat;
    .locals 2

    .line 273
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 279
    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mLastInsets:Lcom/oneplus/support/core/view/WindowInsetsCompat;

    invoke-static {v1, v0}, Lcom/oneplus/lib/design/widget/Utils;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 280
    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mLastInsets:Lcom/oneplus/support/core/view/WindowInsetsCompat;

    .line 281
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 286
    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/support/core/view/WindowInsetsCompat;->consumeSystemWindowInsets()Lcom/oneplus/support/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public setContentScrim(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 649
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_3

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 651
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 653
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    .line 654
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 655
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 656
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 657
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 659
    :cond_2
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method setScrimAlpha(I)V
    .locals 1

    .line 629
    iget v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    if-eq p1, v0, :cond_1

    .line 630
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    if-eqz v0, :cond_0

    .line 632
    invoke-static {v0}, Lcom/oneplus/support/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 634
    :cond_0
    iput p1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    .line 635
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public setScrimsShown(Z)V
    .locals 1

    .line 581
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->setScrimsShown(ZZ)V

    return-void
.end method

.method public setScrimsShown(ZZ)V
    .locals 2

    .line 595
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimsAreShown:Z

    if-eq v0, p1, :cond_3

    const/16 v0, 0xff

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 597
    :goto_0
    invoke-direct {p0, v0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->animateScrim(I)V

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    .line 599
    :goto_1
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->setScrimAlpha(I)V

    .line 601
    :goto_2
    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimsAreShown:Z

    :cond_3
    return-void
.end method

.method public setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 711
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_5

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 713
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 715
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    .line 716
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_4

    .line 717
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 718
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 720
    :cond_2
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    .line 721
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 720
    invoke-static {p1, v0}, Lcom/oneplus/support/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 722
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 723
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 724
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 726
    :cond_4
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 527
    iget-object p0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 761
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 764
    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eq v1, p1, :cond_1

    .line 765
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 767
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eq v1, p1, :cond_2

    .line 768
    iget-object p0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_2
    return-void
.end method

.method final updateScrimVisibility()V
    .locals 2

    .line 1246
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 1247
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mCurrentOffset:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->getScrimVisibleHeightTrigger()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->setScrimsShown(Z)V

    :cond_2
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 756
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
