.class public Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;
.super Ljava/lang/Object;
.source "RtlSpacingHelper.java"


# instance fields
.field private mEnd:I

.field private mExplicitLeft:I

.field private mExplicitRight:I

.field private mIsRelative:Z

.field private mIsRtl:Z

.field private mLeft:I

.field private mRight:I

.field private mStart:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->mLeft:I

    .line 12
    iput v0, p0, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->mRight:I

    const/high16 v1, -0x80000000

    .line 13
    iput v1, p0, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->mStart:I

    .line 14
    iput v1, p0, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->mEnd:I

    .line 15
    iput v0, p0, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->mExplicitLeft:I

    .line 16
    iput v0, p0, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->mExplicitRight:I

    .line 18
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->mIsRtl:Z

    .line 19
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->mIsRelative:Z

    return-void
.end method


# virtual methods
.method public getEnd()I
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->mIsRtl:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->mLeft:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->mRight:I

    :goto_0
    return p0
.end method

.method public getLeft()I
    .locals 0

    .line 22
    iget p0, p0, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->mLeft:I

    return p0
.end method

.method public getRight()I
    .locals 0

    .line 26
    iget p0, p0, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->mRight:I

    return p0
.end method

.method public getStart()I
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->mIsRtl:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->mRight:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->mLeft:I

    :goto_0
    return p0
.end method

.method public setAbsolute(II)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->mIsRelative:Z

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    .line 52
    iput p1, p0, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->mExplicitLeft:I

    iput p1, p0, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->mLeft:I

    :cond_0
    if-eq p2, v0, :cond_1

    .line 53
    iput p2, p0, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->mExplicitRight:I

    iput p2, p0, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->mRight:I

    :cond_1
    return-void
.end method

.method public setDirection(Z)V
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->mIsRtl:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 60
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->mIsRtl:Z

    .line 61
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->mIsRelative:Z

    if-eqz v0, :cond_6

    const/high16 v0, -0x80000000

    if-eqz p1, :cond_3

    .line 63
    iget p1, p0, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->mEnd:I

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->mExplicitLeft:I

    :goto_0
    iput p1, p0, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->mLeft:I

    .line 64
    iget p1, p0, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->mStart:I

    if-eq p1, v0, :cond_2

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->mExplicitRight:I

    :goto_1
    iput p1, p0, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->mRight:I

    goto :goto_4

    .line 66
    :cond_3
    iget p1, p0, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->mStart:I

    if-eq p1, v0, :cond_4

    goto :goto_2

    :cond_4
    iget p1, p0, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->mExplicitLeft:I

    :goto_2
    iput p1, p0, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->mLeft:I

    .line 67
    iget p1, p0, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->mEnd:I

    if-eq p1, v0, :cond_5

    goto :goto_3

    :cond_5
    iget p1, p0, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->mExplicitRight:I

    :goto_3
    iput p1, p0, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->mRight:I

    goto :goto_4

    .line 70
    :cond_6
    iget p1, p0, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->mExplicitLeft:I

    iput p1, p0, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->mLeft:I

    .line 71
    iget p1, p0, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->mExplicitRight:I

    iput p1, p0, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->mRight:I

    :goto_4
    return-void
.end method

.method public setRelative(II)V
    .locals 2

    .line 38
    iput p1, p0, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->mStart:I

    .line 39
    iput p2, p0, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->mEnd:I

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->mIsRelative:Z

    .line 41
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->mIsRtl:Z

    const/high16 v1, -0x80000000

    if-eqz v0, :cond_1

    if-eq p2, v1, :cond_0

    .line 42
    iput p2, p0, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->mLeft:I

    :cond_0
    if-eq p1, v1, :cond_3

    .line 43
    iput p1, p0, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->mRight:I

    goto :goto_0

    :cond_1
    if-eq p1, v1, :cond_2

    .line 45
    iput p1, p0, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->mLeft:I

    :cond_2
    if-eq p2, v1, :cond_3

    .line 46
    iput p2, p0, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->mRight:I

    :cond_3
    :goto_0
    return-void
.end method