.class public Lcom/oneplus/lib/widget/AnimationGriditemView;
.super Landroid/widget/FrameLayout;
.source "AnimationGriditemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/AnimationGriditemView$RoundRectOutlineProvider;,
        Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION_RES:I

.field private static final RADIUS_RES:I

.field private static final sRadiusModeTypeArray:[Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;

.field private static final sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;


# instance fields
.field private mCheckBox:Lcom/oneplus/lib/widget/button/OPCheckBox;

.field private mDuration:I

.field private mImage:Landroid/widget/ImageView;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mRadius:I

.field private mRadiusMode:Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;

.field private mZoomOffset:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 25
    sget v0, Lcom/oneplus/commonctrl/R$dimen;->oneplus_contorl_radius_r12:I

    sput v0, Lcom/oneplus/lib/widget/AnimationGriditemView;->RADIUS_RES:I

    .line 26
    sget v0, Lcom/oneplus/commonctrl/R$integer;->oneplus_contorl_time_part5:I

    sput v0, Lcom/oneplus/lib/widget/AnimationGriditemView;->ANIMATION_DURATION_RES:I

    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    .line 45
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    const/4 v5, 0x4

    aput-object v1, v0, v5

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    const/4 v5, 0x5

    aput-object v1, v0, v5

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    const/4 v5, 0x6

    aput-object v1, v0, v5

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    const/4 v5, 0x7

    aput-object v1, v0, v5

    sput-object v0, Lcom/oneplus/lib/widget/AnimationGriditemView;->sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;

    new-array v0, v4, [Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;

    .line 55
    sget-object v1, Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;->NONE:Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;->RADIUS:Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oneplus/lib/widget/AnimationGriditemView;->sRadiusModeTypeArray:[Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    sget-object p1, Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;->NONE:Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;

    iput-object p1, p0, Lcom/oneplus/lib/widget/AnimationGriditemView;->mRadiusMode:Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;

    const p1, 0x3f333333    # 0.7f

    .line 31
    iput p1, p0, Lcom/oneplus/lib/widget/AnimationGriditemView;->mZoomOffset:F

    .line 34
    sget-object p1, Lcom/oneplus/lib/util/AnimatorUtils;->GRID_ITEM_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    iput-object p1, p0, Lcom/oneplus/lib/widget/AnimationGriditemView;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 67
    invoke-direct {p0, p2}, Lcom/oneplus/lib/widget/AnimationGriditemView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 4

    .line 82
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$layout;->op_animation_grid_list_item:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 83
    sget v0, Lcom/oneplus/commonctrl/R$id;->grid_item_img:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/lib/widget/AnimationGriditemView;->mImage:Landroid/widget/ImageView;

    .line 84
    sget v0, Lcom/oneplus/commonctrl/R$id;->grid_item_checkbox:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/button/OPCheckBox;

    iput-object v0, p0, Lcom/oneplus/lib/widget/AnimationGriditemView;->mCheckBox:Lcom/oneplus/lib/widget/button/OPCheckBox;

    .line 85
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oneplus/lib/widget/AnimationGriditemView;->RADIUS_RES:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/AnimationGriditemView;->mRadius:I

    .line 87
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oneplus/lib/widget/AnimationGriditemView;->ANIMATION_DURATION_RES:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/AnimationGriditemView;->mDuration:I

    .line 89
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/oneplus/commonctrl/R$styleable;->AnimationGridItemView:[I

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 92
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->AnimationGridItemView_android_src:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/AnimationGriditemView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    :cond_0
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->AnimationGridItemView_android_scaleType:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    if-ltz v0, :cond_1

    .line 99
    iget-object v1, p0, Lcom/oneplus/lib/widget/AnimationGriditemView;->mImage:Landroid/widget/ImageView;

    sget-object v2, Lcom/oneplus/lib/widget/AnimationGriditemView;->sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 102
    :cond_1
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->AnimationGridItemView_radiusMode:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    if-ltz v0, :cond_2

    .line 104
    sget-object v1, Lcom/oneplus/lib/widget/AnimationGriditemView;->sRadiusModeTypeArray:[Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;

    aget-object v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/AnimationGriditemView;->setRadiusMode(Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;)V

    .line 107
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private scheduleRadiusChange()V
    .locals 4

    .line 151
    iget-object v0, p0, Lcom/oneplus/lib/widget/AnimationGriditemView;->mRadiusMode:Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;

    sget-object v1, Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;->RADIUS:Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;

    if-ne v0, v1, :cond_0

    .line 152
    new-instance v0, Lcom/oneplus/lib/widget/AnimationGriditemView$RoundRectOutlineProvider;

    iget v1, p0, Lcom/oneplus/lib/widget/AnimationGriditemView;->mRadius:I

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/AnimationGriditemView$RoundRectOutlineProvider;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v0, 0x1

    .line 153
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    .line 154
    iget-object v1, p0, Lcom/oneplus/lib/widget/AnimationGriditemView;->mImage:Landroid/widget/ImageView;

    new-instance v2, Lcom/oneplus/lib/widget/AnimationGriditemView$RoundRectOutlineProvider;

    iget v3, p0, Lcom/oneplus/lib/widget/AnimationGriditemView;->mRadius:I

    invoke-direct {v2, v3}, Lcom/oneplus/lib/widget/AnimationGriditemView$RoundRectOutlineProvider;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 155
    iget-object p0, p0, Lcom/oneplus/lib/widget/AnimationGriditemView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/oneplus/lib/widget/AnimationGriditemView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setRadiusMode(Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/oneplus/lib/widget/AnimationGriditemView;->mRadiusMode:Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;

    if-ne v0, p1, :cond_0

    return-void

    .line 127
    :cond_0
    iput-object p1, p0, Lcom/oneplus/lib/widget/AnimationGriditemView;->mRadiusMode:Lcom/oneplus/lib/widget/AnimationGriditemView$RadiusMode;

    .line 128
    invoke-direct {p0}, Lcom/oneplus/lib/widget/AnimationGriditemView;->scheduleRadiusChange()V

    return-void
.end method
