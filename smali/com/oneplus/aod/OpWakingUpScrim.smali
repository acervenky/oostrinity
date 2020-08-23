.class public Lcom/oneplus/aod/OpWakingUpScrim;
.super Landroid/view/View;
.source "OpWakingUpScrim.java"


# instance fields
.field private isDisappearAnimationStart:Z

.field private mAnimationFrame:F

.field private mAnimationInitAlpha:F

.field private mCircle1Colr:I

.field private mCircle2Colr:I

.field private mCircle3Colr:I

.field private mDisappearAnimator:Landroid/animation/AnimatorSet;

.field private mRadius:F

.field private mTestUnlockSpeed:Z

.field private mWithoutDelayAnimationDuration:I

.field private mWithoutDelayAnimationStartFrame:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 43
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mRadius:F

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/oneplus/aod/OpWakingUpScrim;->isDisappearAnimationStart:Z

    const/high16 v1, -0x1000000

    .line 30
    iput v1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mCircle1Colr:I

    .line 31
    iput v1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mCircle2Colr:I

    .line 32
    iput v1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mCircle3Colr:I

    .line 37
    iput p1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mWithoutDelayAnimationStartFrame:F

    .line 38
    iput v0, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mWithoutDelayAnimationDuration:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 39
    iput p1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mAnimationInitAlpha:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mRadius:F

    const/4 p2, 0x0

    .line 29
    iput-boolean p2, p0, Lcom/oneplus/aod/OpWakingUpScrim;->isDisappearAnimationStart:Z

    const/high16 v0, -0x1000000

    .line 30
    iput v0, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mCircle1Colr:I

    .line 31
    iput v0, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mCircle2Colr:I

    .line 32
    iput v0, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mCircle3Colr:I

    .line 37
    iput p1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mWithoutDelayAnimationStartFrame:F

    .line 38
    iput p2, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mWithoutDelayAnimationDuration:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 39
    iput p1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mAnimationInitAlpha:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mRadius:F

    const/4 p2, 0x0

    .line 29
    iput-boolean p2, p0, Lcom/oneplus/aod/OpWakingUpScrim;->isDisappearAnimationStart:Z

    const/high16 p3, -0x1000000

    .line 30
    iput p3, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mCircle1Colr:I

    .line 31
    iput p3, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mCircle2Colr:I

    .line 32
    iput p3, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mCircle3Colr:I

    .line 37
    iput p1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mWithoutDelayAnimationStartFrame:F

    .line 38
    iput p2, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mWithoutDelayAnimationDuration:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 39
    iput p1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mAnimationInitAlpha:F

    return-void
.end method

.method static synthetic access$002(Lcom/oneplus/aod/OpWakingUpScrim;F)F
    .locals 0

    .line 24
    iput p1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mRadius:F

    return p1
.end method

.method static synthetic access$102(Lcom/oneplus/aod/OpWakingUpScrim;F)F
    .locals 0

    .line 24
    iput p1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mAnimationFrame:F

    return p1
.end method

.method static synthetic access$200(Lcom/oneplus/aod/OpWakingUpScrim;F)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/oneplus/aod/OpWakingUpScrim;->calculateCircleColor(F)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/aod/OpWakingUpScrim;)F
    .locals 0

    .line 24
    iget p0, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mAnimationInitAlpha:F

    return p0
.end method

.method private calculateCircleColor(F)V
    .locals 9

    .line 256
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x41033333    # 8.2f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    div-float v1, v0, v1

    const/high16 v2, 0x41100000    # 9.0f

    mul-float/2addr v2, v0

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    .line 262
    iget v3, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mRadius:F

    cmpl-float v4, v0, v3

    const v5, 0x3f4f5c29    # 0.81f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const v8, 0x3f68f5c3    # 0.91f

    if-ltz v4, :cond_2

    cmpl-float v4, v3, v1

    if-ltz v4, :cond_2

    cmpl-float v4, v3, v2

    if-lez v4, :cond_0

    sub-float p1, v0, v3

    sub-float v2, v0, v2

    div-float/2addr p1, v2

    mul-float/2addr p1, v8

    :goto_0
    move v7, p1

    goto :goto_1

    :cond_0
    sub-float p1, v6, p1

    cmpg-float v2, v8, p1

    if-gez v2, :cond_1

    goto :goto_0

    :cond_1
    move p1, v8

    goto :goto_0

    :goto_1
    mul-float/2addr v5, v7

    .line 269
    iget p1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mRadius:F

    sub-float p1, v0, p1

    sub-float/2addr v0, v1

    div-float/2addr p1, v0

    mul-float/2addr p1, v5

    goto :goto_3

    .line 270
    :cond_2
    iget v0, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mRadius:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    sub-float/2addr v6, p1

    cmpg-float p1, v8, v6

    if-gez p1, :cond_3

    move v7, v6

    goto :goto_2

    :cond_3
    move v7, v8

    :goto_2
    mul-float/2addr v5, v7

    cmpl-float p1, v6, v5

    if-lez p1, :cond_4

    move v5, v6

    :cond_4
    move p1, v5

    goto :goto_3

    :cond_5
    move p1, v7

    .line 277
    :goto_3
    invoke-direct {p0, p1}, Lcom/oneplus/aod/OpWakingUpScrim;->getColor(F)I

    move-result p1

    iput p1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mCircle1Colr:I

    .line 278
    invoke-direct {p0, v7}, Lcom/oneplus/aod/OpWakingUpScrim;->getColor(F)I

    move-result p1

    iput p1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mCircle2Colr:I

    return-void
.end method

.method private getColor(F)I
    .locals 1

    .line 115
    iget p0, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mCircle3Colr:I

    const v0, 0xffffff

    and-int/2addr p0, v0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public getDisappearAnimationWithDelay()Landroid/animation/AnimatorSet;
    .locals 6

    .line 205
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mDisappearAnimator:Landroid/animation/AnimatorSet;

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 206
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1db

    .line 207
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 208
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 209
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ecccccd    # 0.4f

    const/4 v3, 0x0

    const v4, 0x3e99999a    # 0.3f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 210
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 211
    new-instance v1, Lcom/oneplus/aod/OpWakingUpScrim$3;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/OpWakingUpScrim$3;-><init>(Lcom/oneplus/aod/OpWakingUpScrim;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 225
    new-instance v1, Lcom/oneplus/aod/OpWakingUpScrim$4;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/OpWakingUpScrim$4;-><init>(Lcom/oneplus/aod/OpWakingUpScrim;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 250
    iget-object v1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mDisappearAnimator:Landroid/animation/AnimatorSet;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 252
    iget-object p0, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mDisappearAnimator:Landroid/animation/AnimatorSet;

    return-object p0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getDisappearAnimationWithoutDelay(Z)Landroid/animation/Animator;
    .locals 6

    .line 153
    iget v0, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mWithoutDelayAnimationStartFrame:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    :goto_0
    const/16 v2, 0x1db

    if-eqz p1, :cond_1

    .line 154
    iget p1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mWithoutDelayAnimationDuration:I

    if-lez p1, :cond_1

    move v2, p1

    .line 155
    :cond_1
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mDisappearAnimator:Landroid/animation/AnimatorSet;

    const/4 p1, 0x2

    new-array p1, p1, [F

    const/4 v3, 0x0

    aput v0, p1, v3

    const/4 v0, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, p1, v0

    .line 156
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    int-to-long v4, v2

    .line 157
    invoke-virtual {p1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 158
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e99999a    # 0.3f

    const v4, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v2, v1, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 159
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 160
    new-instance v0, Lcom/oneplus/aod/OpWakingUpScrim$1;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/OpWakingUpScrim$1;-><init>(Lcom/oneplus/aod/OpWakingUpScrim;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 174
    new-instance v0, Lcom/oneplus/aod/OpWakingUpScrim$2;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/OpWakingUpScrim$2;-><init>(Lcom/oneplus/aod/OpWakingUpScrim;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 200
    iget-object v0, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mDisappearAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 201
    iget-object p0, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mDisappearAnimator:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 57
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 58
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 59
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 60
    div-int/lit8 v4, v2, 0x2

    .line 61
    div-int/lit8 v5, v3, 0x2

    .line 63
    iget v6, v0, Lcom/oneplus/aod/OpWakingUpScrim;->mRadius:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    const/high16 v7, 0x41200000    # 10.0f

    if-lez v6, :cond_0

    .line 64
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    int-to-float v11, v2

    int-to-float v12, v3

    .line 65
    sget-object v13, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move-object v8, v6

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    int-to-float v2, v4

    int-to-float v3, v5

    .line 66
    iget v4, v0, Lcom/oneplus/aod/OpWakingUpScrim;->mRadius:F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v6, v2, v3, v4, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 67
    sget-object v4, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v6, v4}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 68
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 69
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 71
    iget v5, v0, Lcom/oneplus/aod/OpWakingUpScrim;->mCircle3Colr:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    invoke-virtual {v1, v6, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 74
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 76
    new-instance v4, Landroid/graphics/RadialGradient;

    iget v5, v0, Lcom/oneplus/aod/OpWakingUpScrim;->mRadius:F

    const/4 v6, 0x3

    new-array v6, v6, [I

    const/4 v7, 0x0

    iget v8, v0, Lcom/oneplus/aod/OpWakingUpScrim;->mCircle1Colr:I

    aput v8, v6, v7

    const/4 v7, 0x1

    iget v8, v0, Lcom/oneplus/aod/OpWakingUpScrim;->mCircle2Colr:I

    aput v8, v6, v7

    iget v7, v0, Lcom/oneplus/aod/OpWakingUpScrim;->mCircle3Colr:I

    const/4 v8, 0x2

    aput v7, v6, v8

    const/16 v19, 0x0

    sget-object v20, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v14, v4

    move v15, v2

    move/from16 v16, v3

    move/from16 v17, v5

    move-object/from16 v18, v6

    invoke-direct/range {v14 .. v20}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 83
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 84
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 85
    iget v4, v0, Lcom/oneplus/aod/OpWakingUpScrim;->mRadius:F

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 86
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 88
    iget-boolean v2, v0, Lcom/oneplus/aod/OpWakingUpScrim;->mTestUnlockSpeed:Z

    if-eqz v2, :cond_1

    .line 89
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 90
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, -0x1

    .line 91
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v3, 0x42c80000    # 100.0f

    .line 93
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 94
    iget v3, v0, Lcom/oneplus/aod/OpWakingUpScrim;->mAnimationFrame:F

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x43480000    # 200.0f

    invoke-virtual {v1, v3, v4, v4, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 95
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 96
    sget-boolean v1, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_1

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTestUnlockSpeed draw mRadius:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/oneplus/aod/OpWakingUpScrim;->mAnimationFrame:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpWakingUpScrim"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 102
    :cond_0
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    int-to-float v11, v2

    int-to-float v12, v3

    .line 103
    sget-object v13, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move-object v8, v4

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 104
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 105
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 106
    iget v0, v0, Lcom/oneplus/aod/OpWakingUpScrim;->mCircle3Colr:I

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 108
    invoke-virtual {v1, v4, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 5

    const-string v0, "OpWakingUpScrim"

    const-string v1, "reset"

    .line 120
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 121
    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    const/4 v1, 0x0

    .line 122
    iput v1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mRadius:F

    .line 123
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 v1, 0x0

    const-string v2, "debug.wakingup.scrim"

    .line 124
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mTestUnlockSpeed:Z

    .line 125
    iget-boolean v2, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mTestUnlockSpeed:Z

    if-eqz v2, :cond_1

    const-string v2, "debug.wakingup.scrim.animation.start.frame"

    .line 126
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    iput v2, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mWithoutDelayAnimationStartFrame:F

    const-string v2, "debug.wakingup.scrim.animation.start.duration"

    .line 127
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mWithoutDelayAnimationDuration:I

    const/16 v2, 0x64

    const-string v4, "debug.wakingup.scrim.animation.init.alpha"

    .line 128
    invoke-static {v4, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mAnimationInitAlpha:F

    .line 129
    sget-boolean v2, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_0

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "debug AnimationStartFrame:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mWithoutDelayAnimationStartFrame:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " AnimationDuration:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mWithoutDelayAnimationDuration:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mAnimationInitAlpha:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mAnimationInitAlpha:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    const-string v2, "debug.wakingup.scrim2"

    .line 138
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "debug.wakingup.scrim.color"

    const-string v3, "FF000000"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 141
    iput v2, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mCircle1Colr:I

    .line 142
    iput v2, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mCircle2Colr:I

    .line 143
    iput v2, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mCircle3Colr:I

    .line 144
    sget-boolean v3, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_2

    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "debug mCircle3Colr:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mCircle3Colr:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " debugColor:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " debugColorText:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void
.end method
