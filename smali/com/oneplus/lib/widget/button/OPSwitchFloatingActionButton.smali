.class public Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;
.super Landroid/widget/RelativeLayout;
.source "OPSwitchFloatingActionButton.java"


# static fields
.field private static final FOCUSED_ENABLED_STATE_SET:[I

.field public static final SWITCH_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mIsDisappear1:Z

.field private mIsSwitchState:Z

.field private mNormalImageView:Landroid/widget/ImageView;

.field private mSwitchImageView:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 40
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const v2, 0x3ecccccd    # 0.4f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->SWITCH_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 41
    fill-array-data v0, :array_0

    sput-object v0, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->FOCUSED_ENABLED_STATE_SET:[I

    return-void

    :array_0
    .array-data 4
        0x101009c
        0x101009e
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 49
    sget v0, Lcom/oneplus/commonctrl/R$attr;->OPSwitchFloatingActionButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 136
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->mIsDisappear1:Z

    .line 219
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->mIsSwitchState:Z

    .line 54
    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->OPSwitchFloatingActionButton:[I

    sget v1, Lcom/oneplus/commonctrl/R$style;->OnePlus_Widget_Design_SwitchFloatingActionButton:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 58
    sget p3, Lcom/oneplus/commonctrl/R$styleable;->OPSwitchFloatingActionButton_op_elevation:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    .line 59
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->OPSwitchFloatingActionButton_op_tint_color:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 60
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oneplus/commonctrl/R$drawable;->op_switch_floating_action_button:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 61
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 62
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 63
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/oneplus/commonctrl/R$color;->white:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 65
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 66
    invoke-virtual {p0, p3}, Landroid/widget/RelativeLayout;->setElevation(F)V

    const-string p3, "layout_inflater"

    .line 69
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 70
    sget p3, Lcom/oneplus/commonctrl/R$layout;->op_float_switch_button:I

    invoke-virtual {p1, p3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 71
    sget p1, Lcom/oneplus/commonctrl/R$id;->normal_imageview:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->mNormalImageView:Landroid/widget/ImageView;

    .line 72
    sget p1, Lcom/oneplus/commonctrl/R$styleable;->OPSwitchFloatingActionButton_op_image:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 73
    iget-object p3, p0, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->mNormalImageView:Landroid/widget/ImageView;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    sget p1, Lcom/oneplus/commonctrl/R$id;->switch_imageview:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->mSwitchImageView:Landroid/widget/ImageView;

    .line 75
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
