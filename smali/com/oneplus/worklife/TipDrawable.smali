.class public Lcom/oneplus/worklife/TipDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "TipDrawable.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHeight:F

.field private mWidth:F

.field paint:Landroid/graphics/Paint;

.field path:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(IILandroid/content/Context;)V
    .locals 2

    .line 22
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/worklife/TipDrawable;->paint:Landroid/graphics/Paint;

    .line 19
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/oneplus/worklife/TipDrawable;->path:Landroid/graphics/Path;

    .line 23
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 24
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 25
    iput-object p3, p0, Lcom/oneplus/worklife/TipDrawable;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getPercentageValue(IF)F
    .locals 0

    const/high16 p0, 0x42c80000    # 100.0f

    div-float/2addr p2, p0

    int-to-float p0, p1

    mul-float/2addr p2, p0

    return p2
.end method


# virtual methods
.method public dpTopixel(F)F
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/oneplus/worklife/TipDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 38
    iget-object v0, p0, Lcom/oneplus/worklife/TipDrawable;->path:Landroid/graphics/Path;

    const/high16 v1, 0x41100000    # 9.0f

    invoke-virtual {p0, v1}, Lcom/oneplus/worklife/TipDrawable;->dpTopixel(F)F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 39
    iget-object v0, p0, Lcom/oneplus/worklife/TipDrawable;->path:Landroid/graphics/Path;

    iget v2, p0, Lcom/oneplus/worklife/TipDrawable;->mWidth:F

    const/16 v4, 0x53

    invoke-direct {p0, v4, v2}, Lcom/oneplus/worklife/TipDrawable;->getPercentageValue(IF)F

    move-result v2

    invoke-virtual {p0, v1}, Lcom/oneplus/worklife/TipDrawable;->dpTopixel(F)F

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 40
    iget-object v0, p0, Lcom/oneplus/worklife/TipDrawable;->path:Landroid/graphics/Path;

    iget v2, p0, Lcom/oneplus/worklife/TipDrawable;->mWidth:F

    const/16 v4, 0x55

    invoke-direct {p0, v4, v2}, Lcom/oneplus/worklife/TipDrawable;->getPercentageValue(IF)F

    move-result v2

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 41
    iget-object v0, p0, Lcom/oneplus/worklife/TipDrawable;->path:Landroid/graphics/Path;

    iget v2, p0, Lcom/oneplus/worklife/TipDrawable;->mWidth:F

    const/16 v4, 0x57

    invoke-direct {p0, v4, v2}, Lcom/oneplus/worklife/TipDrawable;->getPercentageValue(IF)F

    move-result v2

    invoke-virtual {p0, v1}, Lcom/oneplus/worklife/TipDrawable;->dpTopixel(F)F

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 42
    iget-object v0, p0, Lcom/oneplus/worklife/TipDrawable;->path:Landroid/graphics/Path;

    iget v2, p0, Lcom/oneplus/worklife/TipDrawable;->mWidth:F

    invoke-virtual {p0, v1}, Lcom/oneplus/worklife/TipDrawable;->dpTopixel(F)F

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 43
    iget-object v0, p0, Lcom/oneplus/worklife/TipDrawable;->path:Landroid/graphics/Path;

    iget v2, p0, Lcom/oneplus/worklife/TipDrawable;->mWidth:F

    iget v4, p0, Lcom/oneplus/worklife/TipDrawable;->mHeight:F

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 44
    iget-object v0, p0, Lcom/oneplus/worklife/TipDrawable;->path:Landroid/graphics/Path;

    iget v2, p0, Lcom/oneplus/worklife/TipDrawable;->mHeight:F

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 45
    iget-object v0, p0, Lcom/oneplus/worklife/TipDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {p0, v1}, Lcom/oneplus/worklife/TipDrawable;->dpTopixel(F)F

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 46
    iget-object v0, p0, Lcom/oneplus/worklife/TipDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 47
    iget-object v0, p0, Lcom/oneplus/worklife/TipDrawable;->paint:Landroid/graphics/Paint;

    const-string v1, "#DE2296F3"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    iget-object v0, p0, Lcom/oneplus/worklife/TipDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 49
    iget-object v0, p0, Lcom/oneplus/worklife/TipDrawable;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 50
    iget-object v0, p0, Lcom/oneplus/worklife/TipDrawable;->path:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/oneplus/worklife/TipDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    int-to-float p1, p1

    .line 33
    iput p1, p0, Lcom/oneplus/worklife/TipDrawable;->mHeight:F

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    int-to-float p1, p1

    .line 29
    iput p1, p0, Lcom/oneplus/worklife/TipDrawable;->mWidth:F

    return-void
.end method
