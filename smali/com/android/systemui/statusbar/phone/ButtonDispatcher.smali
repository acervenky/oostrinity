.class public Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
.super Ljava/lang/Object;
.source "ButtonDispatcher.java"


# instance fields
.field private mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private mAlpha:Ljava/lang/Float;

.field private final mAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mCurrentView:Landroid/view/View;

.field private mDarkIntensity:Ljava/lang/Float;

.field private mDelayTouchFeedback:Ljava/lang/Boolean;

.field private mFadeAnimator:Landroid/animation/ValueAnimator;

.field private final mFadeListener:Landroid/animation/AnimatorListenerAdapter;

.field private final mId:I

.field private mImageDrawable:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mLongClickable:Ljava/lang/Boolean;

.field private mOnHoverListener:Landroid/view/View$OnHoverListener;

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private mVertical:Z

.field private final mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibility:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 49
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mVisibility:Ljava/lang/Integer;

    .line 57
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$ButtonDispatcher$YQ5xchhAskLzgLUT3UrgvCxrRAQ;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$ButtonDispatcher$YQ5xchhAskLzgLUT3UrgvCxrRAQ;-><init>(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 60
    new-instance v0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher$1;-><init>(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mFadeListener:Landroid/animation/AnimatorListenerAdapter;

    .line 69
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mId:I

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mFadeAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method


# virtual methods
.method public abortCurrentGesture()V
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 159
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/systemui/statusbar/phone/ButtonInterface;

    if-eqz v2, :cond_0

    .line 160
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/ButtonInterface;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/ButtonInterface;->abortCurrentGesture()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method addView(Landroid/view/View;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mLongClickable:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mAlpha:Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mVisibility:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 89
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_3

    .line 92
    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 94
    :cond_3
    instance-of v0, p1, Lcom/android/systemui/statusbar/phone/ButtonInterface;

    if-eqz v0, :cond_7

    .line 95
    check-cast p1, Lcom/android/systemui/statusbar/phone/ButtonInterface;

    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mDarkIntensity:Ljava/lang/Float;

    if-eqz v0, :cond_4

    .line 97
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/ButtonInterface;->setDarkIntensity(F)V

    .line 99
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mImageDrawable:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    if-eqz v0, :cond_5

    .line 100
    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/ButtonInterface;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mDelayTouchFeedback:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    .line 103
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/ButtonInterface;->setDelayTouchFeedback(Z)V

    .line 105
    :cond_6
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mVertical:Z

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/phone/ButtonInterface;->setVertical(Z)V

    :cond_7
    return-void
.end method

.method clear()V
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getAlpha()F
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mAlpha:Ljava/lang/Float;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    return p0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    return-object p0
.end method

.method public getId()I
    .locals 0

    .line 110
    iget p0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mId:I

    return p0
.end method

.method public getImageDrawable()Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mImageDrawable:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    return-object p0
.end method

.method public getViews()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 281
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getVisibility()I
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mVisibility:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isVisible()Z
    .locals 0

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$new$0$ButtonDispatcher(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 58
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setAlpha(F)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    return-void
.end method

.method public setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
    .locals 3

    .line 255
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 256
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 258
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    const/4 v0, 0x0

    .line 166
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setAlpha(FZ)V

    return-void
.end method

.method public setAlpha(FZ)V
    .locals 2

    .line 170
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getAlpha()F

    move-result v0

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    const-wide/16 v0, 0x96

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x64

    :goto_0
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setAlpha(FZJ)V

    return-void
.end method

.method public setAlpha(FZJ)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 175
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mFadeAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_0

    .line 176
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 178
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    const/4 p2, 0x2

    new-array p2, p2, [F

    .line 179
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getAlpha()F

    move-result v1

    aput v1, p2, v0

    const/4 v0, 0x1

    aput p1, p2, v0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mFadeAnimator:Landroid/animation/ValueAnimator;

    .line 180
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mFadeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 181
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mFadeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getAlpha()F

    move-result p3

    cmpg-float p1, p3, p1

    if-gez p1, :cond_1

    sget-object p1, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    :goto_0
    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 182
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mFadeAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mFadeListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 183
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mFadeAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 184
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mFadeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    .line 186
    :cond_2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mAlpha:Ljava/lang/Float;

    .line 187
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_1
    if-ge v0, p2, :cond_3

    .line 189
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    invoke-virtual {p3, p1}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public setCurrentView(Landroid/view/View;)V
    .locals 1

    .line 289
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    .line 290
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mImageDrawable:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    if-eqz p1, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 293
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 294
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 295
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 296
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationZ(F)V

    :cond_1
    return-void
.end method

.method public setDarkIntensity(F)V
    .locals 3

    .line 195
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mDarkIntensity:Ljava/lang/Float;

    .line 196
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 198
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/systemui/statusbar/phone/ButtonInterface;

    if-eqz v2, :cond_0

    .line 199
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/ButtonInterface;

    invoke-interface {v2, p1}, Lcom/android/systemui/statusbar/phone/ButtonInterface;->setDarkIntensity(F)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V
    .locals 3

    .line 130
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mImageDrawable:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 131
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 133
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/systemui/statusbar/phone/ButtonInterface;

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ButtonInterface;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mImageDrawable:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/phone/ButtonInterface;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mImageDrawable:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    if-eqz p1, :cond_2

    .line 138
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_2
    return-void
.end method

.method public setLongClickable(Z)V
    .locals 3

    .line 231
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mLongClickable:Ljava/lang/Boolean;

    .line 232
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mLongClickable:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLongClickable(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 3

    .line 215
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mClickListener:Landroid/view/View$OnClickListener;

    .line 216
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOnHoverListener(Landroid/view/View$OnHoverListener;)V
    .locals 3

    .line 247
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    .line 248
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 250
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3

    .line 239
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 240
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 3

    .line 223
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 224
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setVertical(Z)V
    .locals 4

    .line 301
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mVertical:Z

    .line 302
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 304
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 305
    instance-of v3, v2, Lcom/android/systemui/statusbar/phone/ButtonInterface;

    if-eqz v3, :cond_0

    .line 306
    check-cast v2, Lcom/android/systemui/statusbar/phone/ButtonInterface;

    invoke-interface {v2, p1}, Lcom/android/systemui/statusbar/phone/ButtonInterface;->setVertical(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setVisibility(I)V
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mVisibility:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mFadeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 148
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mVisibility:Ljava/lang/Integer;

    .line 149
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    .line 151
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mVisibility:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
