.class public Lcom/android/settingslib/display/BrightnessUtils;
.super Ljava/lang/Object;
.source "BrightnessUtils.java"


# static fields
.field public static final GAMMA_SPACE_MAX:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x112

    aput v2, v0, v1

    .line 30
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x639c

    goto :goto_0

    :cond_0
    const/16 v0, 0x3ff

    :goto_0
    sput v0, Lcom/android/settingslib/display/BrightnessUtils;->GAMMA_SPACE_MAX:I

    return-void
.end method

.method public static final convertGammaToLinear(III)I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x112

    aput v2, v0, v1

    .line 64
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 65
    sget v0, Lcom/android/settingslib/display/BrightnessUtils;->GAMMA_SPACE_MAX:I

    if-le p0, v0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    if-gez p0, :cond_1

    move p0, v1

    :cond_1
    :goto_0
    int-to-float v0, p1

    int-to-float v1, p2

    int-to-float p0, p0

    .line 66
    sget v2, Lcom/android/settingslib/display/BrightnessUtils;->GAMMA_SPACE_MAX:I

    int-to-float v2, v2

    div-float/2addr p0, v2

    invoke-static {v0, v1, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    float-to-int p0, p0

    if-le p0, p2, :cond_2

    move p0, p2

    goto :goto_1

    :cond_2
    if-ge p0, p1, :cond_3

    move p0, p1

    :cond_3
    :goto_1
    mul-int/lit8 p0, p0, 0x64

    return p0

    :cond_4
    const/4 v0, 0x0

    const/16 v1, 0x200

    if-gt p0, v1, :cond_5

    const v1, 0x44138000    # 590.0f

    int-to-float p0, p0

    .line 73
    invoke-static {v0, v1, p0}, Landroid/util/MathUtils;->norm(FFF)F

    move-result p0

    goto :goto_2

    :cond_5
    sub-int/2addr p0, v1

    .line 75
    sget v1, Lcom/android/settingslib/display/BrightnessUtils;->GAMMA_SPACE_MAX:I

    add-int/lit16 v2, v1, -0x37a

    mul-int/2addr p0, v2

    add-int/lit16 v2, v1, -0x200

    div-int/2addr p0, v2

    add-int/lit16 p0, p0, 0x37a

    int-to-float v1, v1

    int-to-float p0, p0

    .line 76
    invoke-static {v0, v1, p0}, Landroid/util/MathUtils;->norm(FFF)F

    move-result p0

    :goto_2
    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v1, p0, v0

    if-gtz v1, :cond_6

    div-float/2addr p0, v0

    .line 81
    invoke-static {p0}, Landroid/util/MathUtils;->sq(F)F

    move-result p0

    goto :goto_3

    :cond_6
    const v0, 0x3f0f564f

    sub-float/2addr p0, v0

    const v0, 0x3e371ff0

    div-float/2addr p0, v0

    .line 83
    invoke-static {p0}, Landroid/util/MathUtils;->exp(F)F

    move-result p0

    const v0, 0x3e91c020

    add-float/2addr p0, v0

    :goto_3
    int-to-float p1, p1

    int-to-float p2, p2

    const/high16 v0, 0x41400000    # 12.0f

    div-float/2addr p0, v0

    .line 88
    invoke-static {p1, p2, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static final convertLinearToGamma(III)I
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x112

    aput v2, v0, v1

    .line 118
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    int-to-float p0, p0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p0, v0

    int-to-float v0, p2

    cmpl-float v3, p0, v0

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v0, p1

    cmpg-float v3, p0, v0

    if-gez v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, p0

    .line 121
    :goto_0
    sget p0, Lcom/android/settingslib/display/BrightnessUtils;->GAMMA_SPACE_MAX:I

    int-to-float p0, p0

    int-to-float v3, p1

    sub-float/2addr v0, v3

    sub-int/2addr p2, p1

    int-to-float p1, p2

    div-float/2addr v0, p1

    invoke-static {v2, p0, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    float-to-int p0, p0

    .line 122
    sget p1, Lcom/android/settingslib/display/BrightnessUtils;->GAMMA_SPACE_MAX:I

    if-le p0, p1, :cond_2

    move p0, p1

    goto :goto_1

    :cond_2
    if-gez p0, :cond_3

    move p0, v1

    :cond_3
    :goto_1
    return p0

    :cond_4
    int-to-float p1, p1

    int-to-float p2, p2

    int-to-float p0, p0

    .line 125
    invoke-static {p1, p2, p0}, Landroid/util/MathUtils;->norm(FFF)F

    move-result p0

    const/high16 p1, 0x41400000    # 12.0f

    mul-float/2addr p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, p0, p1

    if-gtz p1, :cond_5

    .line 128
    invoke-static {p0}, Landroid/util/MathUtils;->sqrt(F)F

    move-result p0

    const/high16 p1, 0x3f000000    # 0.5f

    mul-float/2addr p0, p1

    goto :goto_2

    :cond_5
    const p1, 0x3e371ff0

    const p2, 0x3e91c020

    sub-float/2addr p0, p2

    .line 130
    invoke-static {p0}, Landroid/util/MathUtils;->log(F)F

    move-result p0

    mul-float/2addr p0, p1

    const p1, 0x3f0f564f

    add-float/2addr p0, p1

    .line 134
    :goto_2
    sget p1, Lcom/android/settingslib/display/BrightnessUtils;->GAMMA_SPACE_MAX:I

    int-to-float p1, p1

    invoke-static {v2, p1, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const p2, 0x445e8000    # 890.0f

    .line 136
    sget v0, Lcom/android/settingslib/display/BrightnessUtils;->GAMMA_SPACE_MAX:I

    int-to-float v1, v0

    div-float/2addr p2, v1

    cmpg-float p0, p0, p2

    if-gtz p0, :cond_6

    mul-int/lit16 p1, p1, 0x200

    .line 138
    div-int/lit16 p1, p1, 0x37a

    int-to-float p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_3

    :cond_6
    add-int/lit16 p1, p1, -0x37a

    add-int/lit16 p0, v0, -0x200

    mul-int/2addr p1, p0

    add-int/lit16 v0, v0, -0x37a

    .line 140
    div-int/2addr p1, v0

    add-int/lit16 p1, p1, 0x200

    int-to-float p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    :goto_3
    return p0
.end method
