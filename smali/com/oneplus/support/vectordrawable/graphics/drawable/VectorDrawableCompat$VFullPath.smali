.class Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;
.super Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VFullPath"
.end annotation


# instance fields
.field mFillAlpha:F

.field mFillColor:I

.field mFillRule:I

.field mStrokeAlpha:F

.field mStrokeColor:I

.field mStrokeLineCap:Landroid/graphics/Paint$Cap;

.field mStrokeLineJoin:Landroid/graphics/Paint$Join;

.field mStrokeMiterlimit:F

.field mStrokeWidth:F

.field private mThemeAttrs:[I

.field mTrimPathEnd:F

.field mTrimPathOffset:F

.field mTrimPathStart:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1656
    invoke-direct {p0}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;-><init>()V

    const/4 v0, 0x0

    .line 1640
    iput v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:I

    const/4 v1, 0x0

    .line 1641
    iput v1, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    .line 1643
    iput v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1644
    iput v2, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    .line 1646
    iput v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillRule:I

    .line 1647
    iput v2, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    .line 1648
    iput v1, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    .line 1649
    iput v2, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    .line 1650
    iput v1, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    .line 1652
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    .line 1653
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    const/high16 v0, 0x40800000    # 4.0f

    .line 1654
    iput v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeMiterlimit:F

    return-void
.end method

.method public constructor <init>(Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;)V
    .locals 3

    .line 1661
    invoke-direct {p0, p1}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;-><init>(Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;)V

    const/4 v0, 0x0

    .line 1640
    iput v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:I

    const/4 v1, 0x0

    .line 1641
    iput v1, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    .line 1643
    iput v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1644
    iput v2, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    .line 1646
    iput v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillRule:I

    .line 1647
    iput v2, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    .line 1648
    iput v1, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    .line 1649
    iput v2, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    .line 1650
    iput v1, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    .line 1652
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    .line 1653
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    const/high16 v0, 0x40800000    # 4.0f

    .line 1654
    iput v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeMiterlimit:F

    .line 1662
    iget-object v0, p1, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mThemeAttrs:[I

    iput-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mThemeAttrs:[I

    .line 1664
    iget v0, p1, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:I

    iput v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:I

    .line 1665
    iget v0, p1, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    iput v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    .line 1666
    iget v0, p1, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    iput v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    .line 1667
    iget v0, p1, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:I

    iput v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:I

    .line 1668
    iget v0, p1, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillRule:I

    iput v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillRule:I

    .line 1669
    iget v0, p1, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    iput v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    .line 1670
    iget v0, p1, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    iput v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    .line 1671
    iget v0, p1, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    iput v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    .line 1672
    iget v0, p1, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    iput v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    .line 1674
    iget-object v0, p1, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    .line 1675
    iget-object v0, p1, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    .line 1676
    iget p1, p1, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeMiterlimit:F

    iput p1, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeMiterlimit:F

    return-void
.end method

.method private getStrokeLineCap(ILandroid/graphics/Paint$Cap;)Landroid/graphics/Paint$Cap;
    .locals 0

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    return-object p2

    .line 1686
    :cond_0
    sget-object p0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    return-object p0

    .line 1684
    :cond_1
    sget-object p0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    return-object p0

    .line 1682
    :cond_2
    sget-object p0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    return-object p0
.end method

.method private getStrokeLineJoin(ILandroid/graphics/Paint$Join;)Landroid/graphics/Paint$Join;
    .locals 0

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    return-object p2

    .line 1699
    :cond_0
    sget-object p0, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    return-object p0

    .line 1697
    :cond_1
    sget-object p0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    return-object p0

    .line 1695
    :cond_2
    sget-object p0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    return-object p0
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3

    const/4 v0, 0x0

    .line 1722
    iput-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mThemeAttrs:[I

    const-string v0, "pathData"

    .line 1729
    invoke-static {p2, v0}, Lcom/oneplus/support/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1736
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1739
    iput-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mPathName:Ljava/lang/String;

    :cond_1
    const/4 v0, 0x2

    .line 1742
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1744
    invoke-static {v0}, Lcom/oneplus/support/core/graphics/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;

    :cond_2
    const/4 v0, 0x1

    .line 1747
    iget v1, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:I

    const-string v2, "fillColor"

    invoke-static {p1, p2, v2, v0, v1}, Lcom/oneplus/support/core/content/res/TypedArrayUtils;->getNamedColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:I

    const/16 v0, 0xc

    .line 1749
    iget v1, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    const-string v2, "fillAlpha"

    invoke-static {p1, p2, v2, v0, v1}, Lcom/oneplus/support/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    const/16 v0, 0x8

    const/4 v1, -0x1

    const-string/jumbo v2, "strokeLineCap"

    .line 1751
    invoke-static {p1, p2, v2, v0, v1}, Lcom/oneplus/support/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    .line 1753
    iget-object v2, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    invoke-direct {p0, v0, v2}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->getStrokeLineCap(ILandroid/graphics/Paint$Cap;)Landroid/graphics/Paint$Cap;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    const/16 v0, 0x9

    const-string/jumbo v2, "strokeLineJoin"

    .line 1754
    invoke-static {p1, p2, v2, v0, v1}, Lcom/oneplus/support/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    .line 1756
    iget-object v1, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->getStrokeLineJoin(ILandroid/graphics/Paint$Join;)Landroid/graphics/Paint$Join;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    const/16 v0, 0xa

    .line 1757
    iget v1, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeMiterlimit:F

    const-string/jumbo v2, "strokeMiterLimit"

    invoke-static {p1, p2, v2, v0, v1}, Lcom/oneplus/support/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeMiterlimit:F

    const/4 v0, 0x3

    .line 1760
    iget v1, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:I

    const-string/jumbo v2, "strokeColor"

    invoke-static {p1, p2, v2, v0, v1}, Lcom/oneplus/support/core/content/res/TypedArrayUtils;->getNamedColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:I

    const/16 v0, 0xb

    .line 1762
    iget v1, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    const-string/jumbo v2, "strokeAlpha"

    invoke-static {p1, p2, v2, v0, v1}, Lcom/oneplus/support/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    const/4 v0, 0x4

    .line 1764
    iget v1, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    const-string/jumbo v2, "strokeWidth"

    invoke-static {p1, p2, v2, v0, v1}, Lcom/oneplus/support/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    const/4 v0, 0x6

    .line 1766
    iget v1, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    const-string/jumbo v2, "trimPathEnd"

    invoke-static {p1, p2, v2, v0, v1}, Lcom/oneplus/support/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    const/4 v0, 0x7

    .line 1768
    iget v1, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    const-string/jumbo v2, "trimPathOffset"

    invoke-static {p1, p2, v2, v0, v1}, Lcom/oneplus/support/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    const/4 v0, 0x5

    .line 1771
    iget v1, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    const-string/jumbo v2, "trimPathStart"

    invoke-static {p1, p2, v2, v0, v1}, Lcom/oneplus/support/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    const/16 v0, 0xd

    .line 1774
    iget v1, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillRule:I

    const-string v2, "fillType"

    invoke-static {p1, p2, v2, v0, v1}, Lcom/oneplus/support/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillRule:I

    return-void
.end method


# virtual methods
.method public inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    .line 1711
    sget-object v0, Lcom/oneplus/support/vectordrawable/graphics/drawable/AndroidResources;->STYLEABLE_VECTOR_DRAWABLE_PATH:[I

    invoke-static {p1, p3, p2, v0}, Lcom/oneplus/support/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 1713
    invoke-direct {p0, p1, p4}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->updateStateFromTypedArray(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1714
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
