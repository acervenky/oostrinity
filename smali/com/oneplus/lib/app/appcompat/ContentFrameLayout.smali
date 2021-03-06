.class public Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;
.super Landroid/widget/FrameLayout;
.source "ContentFrameLayout.java"

# interfaces
.implements Lcom/oneplus/lib/app/appcompat/DecorContentParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/app/appcompat/ContentFrameLayout$OnAttachListener;
    }
.end annotation


# instance fields
.field private mAttachListener:Lcom/oneplus/lib/app/appcompat/ContentFrameLayout$OnAttachListener;

.field private final mDecorPadding:Landroid/graphics/Rect;

.field private mFixedHeightMajor:Landroid/util/TypedValue;

.field private mFixedHeightMinor:Landroid/util/TypedValue;

.field private mFixedWidthMajor:Landroid/util/TypedValue;

.field private mFixedWidthMinor:Landroid/util/TypedValue;

.field private mMinWidthMajor:Landroid/util/TypedValue;

.field private mMinWidthMinor:Landroid/util/TypedValue;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public dispatchFitSystemWindows(Landroid/graphics/Rect;)V
    .locals 0

    .line 236
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 366
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 367
    iget-object p0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mAttachListener:Lcom/oneplus/lib/app/appcompat/ContentFrameLayout$OnAttachListener;

    if-eqz p0, :cond_0

    .line 368
    invoke-interface {p0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout$OnAttachListener;->onAttachedFromWindow()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 374
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 375
    iget-object p0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mAttachListener:Lcom/oneplus/lib/app/appcompat/ContentFrameLayout$OnAttachListener;

    if-eqz p0, :cond_0

    .line 376
    invoke-interface {p0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout$OnAttachListener;->onDetachedFromWindow()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    .line 259
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 260
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ge v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    .line 262
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 263
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/high16 v8, -0x80000000

    const/high16 v9, 0x40000000    # 2.0f

    if-ne v2, v8, :cond_4

    if-eqz v1, :cond_1

    .line 267
    iget-object v10, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mFixedWidthMinor:Landroid/util/TypedValue;

    goto :goto_1

    :cond_1
    iget-object v10, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mFixedWidthMajor:Landroid/util/TypedValue;

    :goto_1
    if-eqz v10, :cond_4

    .line 268
    iget v11, v10, Landroid/util/TypedValue;->type:I

    if-eqz v11, :cond_4

    if-ne v11, v7, :cond_2

    .line 271
    invoke-virtual {v10, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v10

    :goto_2
    float-to-int v10, v10

    goto :goto_3

    :cond_2
    if-ne v11, v6, :cond_3

    .line 273
    iget v11, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v12, v11

    int-to-float v11, v11

    invoke-virtual {v10, v12, v11}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v10

    goto :goto_2

    :cond_3
    move v10, v4

    :goto_3
    if-lez v10, :cond_4

    .line 276
    iget-object v11, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    iget v12, v11, Landroid/graphics/Rect;->left:I

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v11

    sub-int/2addr v10, v12

    .line 277
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 279
    invoke-static {v10, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 278
    invoke-static {p1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    move v10, p1

    move p1, v3

    goto :goto_4

    :cond_4
    move v10, p1

    move p1, v4

    :goto_4
    if-ne v5, v8, :cond_8

    if-eqz v1, :cond_5

    .line 286
    iget-object v5, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mFixedHeightMajor:Landroid/util/TypedValue;

    goto :goto_5

    :cond_5
    iget-object v5, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mFixedHeightMinor:Landroid/util/TypedValue;

    :goto_5
    if-eqz v5, :cond_8

    .line 287
    iget v11, v5, Landroid/util/TypedValue;->type:I

    if-eqz v11, :cond_8

    if-ne v11, v7, :cond_6

    .line 290
    invoke-virtual {v5, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v5

    :goto_6
    float-to-int v5, v5

    goto :goto_7

    :cond_6
    if-ne v11, v6, :cond_7

    .line 292
    iget v11, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v12, v11

    int-to-float v11, v11

    invoke-virtual {v5, v12, v11}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v5

    goto :goto_6

    :cond_7
    move v5, v4

    :goto_7
    if-lez v5, :cond_8

    .line 295
    iget-object v11, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    iget v12, v11, Landroid/graphics/Rect;->top:I

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v12, v11

    sub-int/2addr v5, v12

    .line 296
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 298
    invoke-static {v5, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 297
    invoke-static {p2, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 303
    :cond_8
    invoke-super {p0, v10, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 305
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    .line 308
    invoke-static {v5, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    if-nez p1, :cond_d

    if-ne v2, v8, :cond_d

    if-eqz v1, :cond_9

    .line 311
    iget-object p1, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mMinWidthMinor:Landroid/util/TypedValue;

    goto :goto_8

    :cond_9
    iget-object p1, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mMinWidthMajor:Landroid/util/TypedValue;

    :goto_8
    if-eqz p1, :cond_d

    .line 312
    iget v1, p1, Landroid/util/TypedValue;->type:I

    if-eqz v1, :cond_d

    if-ne v1, v7, :cond_a

    .line 315
    invoke-virtual {p1, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result p1

    :goto_9
    float-to-int p1, p1

    goto :goto_a

    :cond_a
    if-ne v1, v6, :cond_b

    .line 317
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result p1

    goto :goto_9

    :cond_b
    move p1, v4

    :goto_a
    if-lez p1, :cond_c

    .line 320
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    sub-int/2addr p1, v1

    :cond_c
    if-ge v5, p1, :cond_d

    .line 323
    invoke-static {p1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    goto :goto_b

    :cond_d
    move v3, v4

    :goto_b
    if-eqz v3, :cond_e

    .line 330
    invoke-super {p0, v10, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :cond_e
    return-void
.end method
