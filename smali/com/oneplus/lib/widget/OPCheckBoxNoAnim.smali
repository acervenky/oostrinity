.class public Lcom/oneplus/lib/widget/OPCheckBoxNoAnim;
.super Landroid/widget/ImageView;
.source "OPCheckBoxNoAnim.java"


# instance fields
.field private mChecked:Z

.field private mCheckedResId:I

.field private mIntrinsicWidth:I

.field private mUnCheckedResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/OPCheckBoxNoAnim;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/oneplus/lib/widget/OPCheckBoxNoAnim;->mIntrinsicWidth:I

    .line 13
    iput p1, p0, Lcom/oneplus/lib/widget/OPCheckBoxNoAnim;->mCheckedResId:I

    .line 14
    iput p1, p0, Lcom/oneplus/lib/widget/OPCheckBoxNoAnim;->mUnCheckedResId:I

    .line 16
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/OPCheckBoxNoAnim;->mChecked:Z

    .line 29
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPCheckBoxNoAnim;->init()V

    return-void
.end method

.method private init()V
    .locals 0

    return-void
.end method


# virtual methods
.method public setImageResource(I)V
    .locals 0

    return-void
.end method
