.class public Lcom/oneplus/lib/widget/OPEmptyPageView;
.super Landroid/widget/LinearLayout;
.source "OPEmptyPageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/OPEmptyPageView$OnEmptyViewActionButtonClickedListener;
    }
.end annotation


# instance fields
.field private mBottomActionTextView:Landroid/widget/TextView;

.field private mImageView:Landroid/widget/ImageView;

.field private mMiddleActionTextView:Landroid/widget/TextView;

.field private mTempView:Landroid/view/View;

.field private mTextView:Landroid/widget/TextView;

.field private mTopActionTextView:Landroid/widget/TextView;

.field private onActionButtonClickedListener:Lcom/oneplus/lib/widget/OPEmptyPageView$OnEmptyViewActionButtonClickedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 47
    sget v0, Lcom/oneplus/commonctrl/R$attr;->op_emptyPageStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/OPEmptyPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/OPEmptyPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 55
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$layout;->op_control_empty_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 56
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPEmptyPageView;->initView()V

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/widget/OPEmptyPageView;->initTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private checkShowComplete()Z
    .locals 7

    .line 126
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne v2, v0, :cond_0

    return v1

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mTopActionTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/4 v2, -0x1

    if-nez v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mTopActionTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 135
    :goto_0
    iget-object v3, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mMiddleActionTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 136
    iget-object v3, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mMiddleActionTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    goto :goto_1

    :cond_2
    move v3, v2

    .line 138
    :goto_1
    iget-object v4, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mBottomActionTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    .line 139
    iget-object p0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mBottomActionTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result p0

    goto :goto_2

    :cond_3
    move p0, v2

    .line 141
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "topTextHeight = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ,middleTextHeight = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ,bottomTextHeight = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OPEmptyPageView"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    if-eq v0, v2, :cond_4

    add-int/lit8 v5, v0, 0x0

    move v6, v0

    move v0, v1

    goto :goto_3

    :cond_4
    move v0, v4

    move v5, v0

    move v6, v5

    :goto_3
    if-eq v3, v2, :cond_5

    add-int/2addr v5, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    move v3, v6

    :goto_4
    if-eq p0, v2, :cond_6

    add-int/2addr v5, p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    move p0, v3

    :goto_5
    if-eqz v0, :cond_8

    if-eqz v5, :cond_7

    mul-int/2addr p0, v0

    if-ne p0, v5, :cond_7

    return v1

    :cond_7
    return v4

    :cond_8
    return v1
.end method

.method private initTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    .line 68
    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->OPEmptyPageView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 70
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->OPEmptyPageView_emptyDrawable:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 71
    sget p3, Lcom/oneplus/commonctrl/R$styleable;->OPEmptyPageView_emptyText:I

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 72
    sget p4, Lcom/oneplus/commonctrl/R$styleable;->OPEmptyPageView_topActionText:I

    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 73
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->OPEmptyPageView_topActionClick:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 74
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->OPEmptyPageView_middleActionText:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 75
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPEmptyPageView_middleActionClick:I

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 76
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPEmptyPageView_bottomActionText:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 77
    sget v5, Lcom/oneplus/commonctrl/R$styleable;->OPEmptyPageView_bottomActionClick:I

    invoke-virtual {p1, v5, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 78
    invoke-virtual {p0, p2}, Lcom/oneplus/lib/widget/OPEmptyPageView;->setEmptyDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->OPEmptyPageView_topActionColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 80
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->OPEmptyPageView_topActionColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 81
    invoke-virtual {p0, p2}, Lcom/oneplus/lib/widget/OPEmptyPageView;->setTopActionColor(Landroid/content/res/ColorStateList;)V

    .line 83
    :cond_0
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->OPEmptyPageView_middleActionColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 84
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->OPEmptyPageView_middleActionColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 85
    invoke-virtual {p0, p2}, Lcom/oneplus/lib/widget/OPEmptyPageView;->setMiddleActionColor(Landroid/content/res/ColorStateList;)V

    .line 87
    :cond_1
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->OPEmptyPageView_bottomActionColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 88
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->OPEmptyPageView_bottomActionColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 89
    invoke-virtual {p0, p2}, Lcom/oneplus/lib/widget/OPEmptyPageView;->setBottomActionColor(Landroid/content/res/ColorStateList;)V

    .line 91
    :cond_2
    invoke-virtual {p0, p3}, Lcom/oneplus/lib/widget/OPEmptyPageView;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual {p0, p4}, Lcom/oneplus/lib/widget/OPEmptyPageView;->setTopActionText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object p2, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mTopActionTextView:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 94
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/OPEmptyPageView;->setMiddleActionText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object p2, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mMiddleActionTextView:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 96
    invoke-virtual {p0, v4}, Lcom/oneplus/lib/widget/OPEmptyPageView;->setBottomActionText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object p0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mBottomActionTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 98
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initView()V
    .locals 1

    .line 102
    sget v0, Lcom/oneplus/commonctrl/R$id;->empty_image:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mImageView:Landroid/widget/ImageView;

    .line 103
    sget v0, Lcom/oneplus/commonctrl/R$id;->empty_temp:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mTempView:Landroid/view/View;

    .line 104
    sget v0, Lcom/oneplus/commonctrl/R$id;->empty_content:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mTextView:Landroid/widget/TextView;

    .line 105
    sget v0, Lcom/oneplus/commonctrl/R$id;->empty_top_text:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mTopActionTextView:Landroid/widget/TextView;

    .line 106
    sget v0, Lcom/oneplus/commonctrl/R$id;->empty_middle_text:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mMiddleActionTextView:Landroid/widget/TextView;

    .line 107
    sget v0, Lcom/oneplus/commonctrl/R$id;->empty_bottom_text:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mBottomActionTextView:Landroid/widget/TextView;

    .line 108
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mTopActionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mMiddleActionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mBottomActionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 328
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->onActionButtonClickedListener:Lcom/oneplus/lib/widget/OPEmptyPageView$OnEmptyViewActionButtonClickedListener;

    if-eqz v0, :cond_4

    .line 330
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mTopActionTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mMiddleActionTextView:Landroid/widget/TextView;

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mBottomActionTextView:Landroid/widget/TextView;

    if-ne v0, p1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 338
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    .line 339
    instance-of v2, p1, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 340
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 342
    :cond_3
    iget-object p0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->onActionButtonClickedListener:Lcom/oneplus/lib/widget/OPEmptyPageView$OnEmptyViewActionButtonClickedListener;

    invoke-interface {p0, v0, v1}, Lcom/oneplus/lib/widget/OPEmptyPageView$OnEmptyViewActionButtonClickedListener;->onEmptyViewActionButtonClicked(II)V

    :cond_4
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 115
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 116
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPEmptyPageView;->checkShowComplete()Z

    move-result p1

    if-nez p1, :cond_0

    .line 117
    iget-object p1, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 118
    iget-object p2, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getTop()I

    move-result p2

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 119
    iget-object p2, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    iget-object p1, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->requestLayout()V

    .line 121
    iget-object p0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mImageView:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setBottomActionColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 296
    iget-object p0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mBottomActionTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 297
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setBottomActionText(Ljava/lang/CharSequence;)V
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mBottomActionTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 280
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mBottomActionTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mBottomActionTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 285
    :goto_0
    iget-object p0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mBottomActionTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setEmptyDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mImageView:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    .line 188
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setEmptyText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 197
    iget-object p0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 198
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setMiddleActionColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 257
    iget-object p0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mMiddleActionTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 258
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setMiddleActionText(Ljava/lang/CharSequence;)V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mMiddleActionTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 241
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mMiddleActionTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mMiddleActionTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 246
    :goto_0
    iget-object p0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mMiddleActionTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setTopActionColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 224
    iget-object p0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mTopActionTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 225
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setTopActionText(Ljava/lang/CharSequence;)V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mTopActionTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 208
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mTopActionTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mTopActionTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    :goto_0
    iget-object p0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mTopActionTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
