.class public Lcom/oneplus/lib/widget/OPTooltipView;
.super Landroid/widget/LinearLayout;
.source "OPTooltipView.java"


# instance fields
.field private color:I

.field private mArrowHeight:I

.field private mArrowPath:Landroid/graphics/Path;

.field private mArrowWidth:I

.field private mBody:Landroid/graphics/RectF;

.field private mButton1:Landroid/widget/Button;

.field private mButton2:Landroid/widget/Button;

.field private mContentView:Landroid/widget/LinearLayout;

.field private mDirection:I

.field private mMessage:Landroid/widget/TextView;

.field private mPaint:Landroid/graphics/Paint;

.field private mPercent:F

.field private mRadius:I

.field private mTitle:Landroid/widget/TextView;

.field private porterDuffXfermode:Landroid/graphics/PorterDuffXfermode;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mBody:Landroid/graphics/RectF;

    const/high16 p2, 0x3f000000    # 0.5f

    .line 33
    iput p2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    const/4 v0, 0x3

    .line 34
    iput v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mDirection:I

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/oneplus/commonctrl/R$layout;->op_control_tooltip_view:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 49
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPTooltipView;->initView()V

    const/4 p1, 0x0

    .line 50
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 52
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/oneplus/commonctrl/R$dimen;->oneplus_contorl_radius_r12:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mRadius:I

    .line 53
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/oneplus/commonctrl/R$dimen;->op_control_tooltip_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    .line 54
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/oneplus/commonctrl/R$dimen;->op_control_tooltip_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    .line 56
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPTooltipView;->initPaint()V

    .line 57
    iget p1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mDirection:I

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/widget/OPTooltipView;->setDirection(IF)V

    return-void
.end method

.method private initPaint()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 102
    invoke-virtual {p0, v0, v1}, Landroid/widget/LinearLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 103
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->porterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

    .line 104
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPaint:Landroid/graphics/Paint;

    .line 105
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 106
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oneplus/commonctrl/R$color;->oneplus_accent_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->color:I

    .line 107
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->color:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPaint:Landroid/graphics/Paint;

    const/16 v2, 0xdd

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 109
    iget-object p0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private initView()V
    .locals 1

    .line 94
    sget v0, Lcom/oneplus/commonctrl/R$id;->content:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mContentView:Landroid/widget/LinearLayout;

    .line 95
    sget v0, Lcom/oneplus/commonctrl/R$id;->title:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mTitle:Landroid/widget/TextView;

    .line 96
    sget v0, Lcom/oneplus/commonctrl/R$id;->message:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mMessage:Landroid/widget/TextView;

    .line 97
    sget v0, Lcom/oneplus/commonctrl/R$id;->button1:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mButton1:Landroid/widget/Button;

    .line 98
    sget v0, Lcom/oneplus/commonctrl/R$id;->button2:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mButton2:Landroid/widget/Button;

    return-void
.end method

.method private updateMargin()V
    .locals 4

    .line 241
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 242
    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mDirection:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 262
    :cond_0
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 263
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 264
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 265
    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 256
    :cond_1
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 257
    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 258
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 259
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 250
    :cond_2
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 251
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 252
    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 253
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 244
    :cond_3
    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 245
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 246
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 247
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 270
    :goto_0
    iget-object p0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 114
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 115
    iget v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mDirection:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-ne v4, v0, :cond_0

    .line 116
    iget v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v0, v6

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_0
    if-ne v3, v0, :cond_1

    .line 118
    iget v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v0, v6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {p1, v0, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_1
    if-ne v2, v0, :cond_2

    .line 120
    iget v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v0, v6

    invoke-virtual {p1, v5, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_2
    if-ne v1, v0, :cond_3

    .line 122
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    iget v6, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    sub-int/2addr v0, v6

    int-to-float v0, v0

    iget v6, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    invoke-virtual {p1, v0, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 125
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 126
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 127
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/oneplus/lib/widget/OPTooltipView;->porterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 128
    iget v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mDirection:I

    if-ne v4, v0, :cond_4

    .line 129
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mBody:Landroid/graphics/RectF;

    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    :cond_4
    if-ne v3, v0, :cond_5

    .line 131
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mBody:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    :cond_5
    if-ne v2, v0, :cond_6

    .line 133
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mBody:Landroid/graphics/RectF;

    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    :cond_6
    if-ne v1, v0, :cond_7

    .line 135
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mBody:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 137
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mBody:Landroid/graphics/RectF;

    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 138
    iget-object p0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method public setDirection(IF)V
    .locals 4

    .line 142
    iput p1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mDirection:I

    .line 143
    iput p2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    .line 144
    iget p1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float v0, p1, p2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 145
    iput p2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    goto :goto_0

    :cond_0
    cmpg-float p1, p1, v1

    if-gez p1, :cond_1

    .line 147
    iput v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    .line 150
    :cond_1
    :goto_0
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    .line 151
    iget-object p1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {p1, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    const/4 p1, 0x3

    .line 153
    iget v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mDirection:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne p1, v0, :cond_4

    .line 154
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    div-int/2addr v0, v2

    int-to-float v0, v0

    add-float/2addr p1, v0

    iget v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mRadius:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    .line 155
    iput p2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    .line 156
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 157
    new-instance p2, Landroid/graphics/Point;

    iget v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    neg-int v0, v0

    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    invoke-direct {p2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 158
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    iget v2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mRadius:I

    add-int/2addr v1, v2

    invoke-direct {v0, v3, v1}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_1

    .line 159
    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p1, p2

    iget p2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    div-int/2addr p2, v2

    iget v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mRadius:I

    add-int/2addr p2, v0

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_3

    .line 160
    iput v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    .line 161
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 162
    new-instance p2, Landroid/graphics/Point;

    iget v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mRadius:I

    add-int/2addr v0, v1

    invoke-direct {p2, v3, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 163
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    iget v2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_1

    .line 165
    :cond_3
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 166
    new-instance p2, Landroid/graphics/Point;

    iget v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    neg-int v0, v0

    div-int/2addr v0, v2

    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    invoke-direct {p2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 167
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    div-int/2addr v1, v2

    iget v2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 169
    :goto_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 170
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v2, p2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    invoke-virtual {v1, v2, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 171
    iget-object p2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 172
    iget-object p2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v0, p1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_5

    :cond_4
    const/4 p1, 0x4

    if-ne p1, v0, :cond_7

    .line 174
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p1

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    div-int/2addr v0, v2

    int-to-float v0, v0

    add-float/2addr p1, v0

    iget v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mRadius:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_5

    .line 175
    iput p2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    .line 176
    new-instance p1, Landroid/graphics/Point;

    iget p2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    invoke-direct {p1, v3, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 177
    new-instance p2, Landroid/graphics/Point;

    iget v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    neg-int v0, v0

    invoke-direct {p2, v0, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 178
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mRadius:I

    neg-int v1, v1

    invoke-direct {v0, v3, v1}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_2

    .line 179
    :cond_5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p1

    if-eqz p1, :cond_6

    iget p1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p1, p2

    iget p2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    div-int/2addr p2, v2

    iget v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mRadius:I

    add-int/2addr p2, v0

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_6

    .line 180
    iput v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    .line 181
    new-instance p1, Landroid/graphics/Point;

    iget p2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    invoke-direct {p1, v3, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 182
    new-instance p2, Landroid/graphics/Point;

    iget v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mRadius:I

    neg-int v0, v0

    invoke-direct {p2, v3, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 183
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    invoke-direct {v0, v1, v3}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_2

    .line 185
    :cond_6
    new-instance p1, Landroid/graphics/Point;

    iget p2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    invoke-direct {p1, v3, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 186
    new-instance p2, Landroid/graphics/Point;

    iget v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    neg-int v0, v0

    div-int/2addr v0, v2

    invoke-direct {p2, v0, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 187
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    div-int/2addr v1, v2

    invoke-direct {v0, v1, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 189
    :goto_2
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 190
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v2, p2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    invoke-virtual {v1, v2, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 191
    iget-object p2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 192
    iget-object p2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v0, p1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_5

    :cond_7
    const/4 p1, 0x1

    if-ne p1, v0, :cond_a

    .line 194
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    if-eqz p1, :cond_8

    iget p1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    div-int/2addr v0, v2

    int-to-float v0, v0

    add-float/2addr p1, v0

    iget v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mRadius:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_8

    .line 195
    iput p2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    .line 196
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 197
    new-instance p2, Landroid/graphics/Point;

    iget v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mRadius:I

    add-int/2addr v0, v1

    invoke-direct {p2, v0, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 198
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    iget v2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    neg-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_3

    .line 199
    :cond_8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    if-eqz p1, :cond_9

    iget p1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p1, p2

    iget p2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    div-int/2addr p2, v2

    iget v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mRadius:I

    add-int/2addr p2, v0

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_9

    .line 200
    iput v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    .line 201
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 202
    new-instance p2, Landroid/graphics/Point;

    iget v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mRadius:I

    add-int/2addr v0, v1

    invoke-direct {p2, v0, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 203
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    iget v2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_3

    .line 205
    :cond_9
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 206
    new-instance p2, Landroid/graphics/Point;

    iget v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    div-int/2addr v1, v2

    invoke-direct {p2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 207
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    iget v3, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    neg-int v3, v3

    div-int/2addr v3, v2

    invoke-direct {v0, v1, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 210
    :goto_3
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 211
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v2, p2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    invoke-virtual {v1, v2, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 212
    iget-object p2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 213
    iget-object p2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v0, p1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_5

    :cond_a
    if-ne v2, v0, :cond_d

    .line 215
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    if-eqz p1, :cond_b

    iget p1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    div-int/2addr v0, v2

    int-to-float v0, v0

    add-float/2addr p1, v0

    iget v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mRadius:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_b

    .line 216
    iput p2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    .line 217
    new-instance p1, Landroid/graphics/Point;

    iget p2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    invoke-direct {p1, p2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 218
    new-instance p2, Landroid/graphics/Point;

    iget v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mRadius:I

    neg-int v0, v0

    invoke-direct {p2, v0, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 219
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    neg-int v1, v1

    invoke-direct {v0, v3, v1}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_4

    .line 220
    :cond_b
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    if-eqz p1, :cond_c

    iget p1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p1, p2

    iget p2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    div-int/2addr p2, v2

    iget v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mRadius:I

    add-int/2addr p2, v0

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_c

    .line 221
    iput v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    .line 222
    new-instance p1, Landroid/graphics/Point;

    iget p2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    invoke-direct {p1, p2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 223
    new-instance p2, Landroid/graphics/Point;

    iget v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mRadius:I

    neg-int v0, v0

    invoke-direct {p2, v0, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 224
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    invoke-direct {v0, v3, v1}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_4

    .line 226
    :cond_c
    new-instance p1, Landroid/graphics/Point;

    iget p2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    invoke-direct {p1, p2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 227
    new-instance p2, Landroid/graphics/Point;

    iget v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    neg-int v0, v0

    div-int/2addr v0, v2

    invoke-direct {p2, v3, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 228
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    div-int/2addr v1, v2

    invoke-direct {v0, v3, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 230
    :goto_4
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 231
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v2, p2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    invoke-virtual {v1, v2, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 232
    iget-object p2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 233
    iget-object p2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v0, p1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 235
    :cond_d
    :goto_5
    iget-object p1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 236
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPTooltipView;->updateMargin()V

    .line 237
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method
