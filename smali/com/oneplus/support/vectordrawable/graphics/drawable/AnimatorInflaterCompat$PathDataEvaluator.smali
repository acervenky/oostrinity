.class Lcom/oneplus/support/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;
.super Ljava/lang/Object;
.source "AnimatorInflaterCompat.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/vectordrawable/graphics/drawable/AnimatorInflaterCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PathDataEvaluator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "[",
        "Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;",
        ">;"
    }
.end annotation


# instance fields
.field private mNodeArray:[Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/support/vectordrawable/graphics/drawable/AnimatorInflaterCompat$1;)V
    .locals 0

    .line 157
    invoke-direct {p0}, Lcom/oneplus/support/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 157
    check-cast p2, [Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;

    check-cast p3, [Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/support/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;->evaluate(F[Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;[Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;)[Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;

    move-result-object p0

    return-object p0
.end method

.method public evaluate(F[Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;[Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;)[Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;
    .locals 4

    .line 185
    invoke-static {p2, p3}, Lcom/oneplus/support/core/graphics/PathParser;->canMorph([Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;[Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 190
    iget-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;->mNodeArray:[Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;

    if-eqz v0, :cond_0

    invoke-static {v0, p2}, Lcom/oneplus/support/core/graphics/PathParser;->canMorph([Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;[Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 191
    :cond_0
    invoke-static {p2}, Lcom/oneplus/support/core/graphics/PathParser;->deepCopyNodes([Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;)[Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;->mNodeArray:[Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;

    :cond_1
    const/4 v0, 0x0

    .line 194
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_2

    .line 195
    iget-object v1, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;->mNodeArray:[Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;

    aget-object v1, v1, v0

    aget-object v2, p2, v0

    aget-object v3, p3, v0

    invoke-virtual {v1, v2, v3, p1}, Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;->interpolatePathDataNode(Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    :cond_2
    iget-object p0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;->mNodeArray:[Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;

    return-object p0

    .line 186
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t interpolate between two incompatible pathData"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
