.class public Lcom/oneplus/lib/design/widget/CoordinatorLayout;
.super Landroid/view/ViewGroup;
.source "CoordinatorLayout.java"

# interfaces
.implements Lcom/oneplus/support/core/view/NestedScrollingParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/design/widget/CoordinatorLayout$SavedState;,
        Lcom/oneplus/lib/design/widget/CoordinatorLayout$HierarchyChangeListener;,
        Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;,
        Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;,
        Lcom/oneplus/lib/design/widget/CoordinatorLayout$DefaultBehavior;,
        Lcom/oneplus/lib/design/widget/CoordinatorLayout$ViewElevationComparator;,
        Lcom/oneplus/lib/design/widget/CoordinatorLayout$OnPreDrawListener;
    }
.end annotation


# static fields
.field static final CONSTRUCTOR_PARAMS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field static final TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field static final WIDGET_PACKAGE_NAME:Ljava/lang/String;

.field static final sConstructors:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor<",
            "Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private mApplyWindowInsetsListener:Lcom/oneplus/support/core/view/OnApplyWindowInsetsListener;

.field private mBehaviorTouchView:Landroid/view/View;

.field private final mChildDag:Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mDependencySortedChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDisallowInterceptReset:Z

.field private mDrawStatusBarBackground:Z

.field private mIsAttachedToWindow:Z

.field private mKeylines:[I

.field private mLastInsets:Lcom/oneplus/support/core/view/WindowInsetsCompat;

.field private mNeedsPreDrawListener:Z

.field private mNestedScrollingDirectChild:Landroid/view/View;

.field private final mNestedScrollingParentHelper:Lcom/oneplus/support/core/view/NestedScrollingParentHelper;

.field private mNestedScrollingTarget:Landroid/view/View;

.field mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private mOnPreDrawListener:Lcom/oneplus/lib/design/widget/CoordinatorLayout$OnPreDrawListener;

.field private mScrimPaint:Landroid/graphics/Paint;

.field private mStatusBarBackground:Landroid/graphics/drawable/Drawable;

.field private final mTempDependenciesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempIntPair:[I

.field private final mTempList1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempRect1:Landroid/graphics/Rect;

.field private final mTempRect2:Landroid/graphics/Rect;

.field private final mTempRect3:Landroid/graphics/Rect;

.field private final mTempRect4:Landroid/graphics/Rect;

.field private final mTempRect5:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 115
    const-class v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    sput-object v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->WIDGET_PACKAGE_NAME:Ljava/lang/String;

    .line 123
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    .line 124
    new-instance v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$ViewElevationComparator;

    invoke-direct {v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$ViewElevationComparator;-><init>()V

    sput-object v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;

    goto :goto_1

    .line 126
    :cond_1
    sput-object v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;

    :goto_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 130
    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->CONSTRUCTOR_PARAMS:[Ljava/lang/Class;

    .line 135
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->sConstructors:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 192
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 196
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    .line 152
    new-instance v0, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;

    invoke-direct {v0}, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mChildDag:Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempList1:Ljava/util/List;

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    .line 156
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempRect1:Landroid/graphics/Rect;

    .line 157
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempRect2:Landroid/graphics/Rect;

    .line 158
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempRect3:Landroid/graphics/Rect;

    .line 159
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempRect4:Landroid/graphics/Rect;

    .line 160
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempRect5:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 161
    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempIntPair:[I

    .line 184
    new-instance v0, Lcom/oneplus/support/core/view/NestedScrollingParentHelper;

    invoke-direct {v0, p0}, Lcom/oneplus/support/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Lcom/oneplus/support/core/view/NestedScrollingParentHelper;

    .line 200
    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->OpCoordinatorLayout:[I

    sget v1, Lcom/oneplus/commonctrl/R$style;->Widget_Design_CoordinatorLayout:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 202
    sget p3, Lcom/oneplus/commonctrl/R$styleable;->OpCoordinatorLayout_opKeylines:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-eqz p3, :cond_0

    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 205
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p3

    iput-object p3, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mKeylines:[I

    .line 206
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 207
    iget-object p3, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mKeylines:[I

    array-length p3, p3

    :goto_0
    if-ge v0, p3, :cond_0

    .line 209
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mKeylines:[I

    aget v2, v1, v0

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    :cond_0
    sget p1, Lcom/oneplus/commonctrl/R$styleable;->OpCoordinatorLayout_opStatusBarBackground:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 213
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 215
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->setupForInsets()V

    .line 216
    new-instance p1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$HierarchyChangeListener;

    invoke-direct {p1, p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$HierarchyChangeListener;-><init>(Lcom/oneplus/lib/design/widget/CoordinatorLayout;)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method private constrainChildRect(Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;Landroid/graphics/Rect;II)V
    .locals 5

    .line 1010
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    .line 1011
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    .line 1014
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, p2, Landroid/graphics/Rect;->left:I

    .line 1016
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    sub-int/2addr v0, v4

    sub-int/2addr v0, p3

    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v0, v4

    .line 1015
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1014
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1017
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, p2, Landroid/graphics/Rect;->top:I

    .line 1019
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v1, p0

    sub-int/2addr v1, p4

    iget p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v1, p0

    .line 1018
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 1017
    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/2addr p3, v0

    add-int/2addr p4, p0

    .line 1021
    invoke-virtual {p2, v0, p0, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private dispatchApplyWindowInsetsToBehaviors(Lcom/oneplus/support/core/view/WindowInsetsCompat;)Lcom/oneplus/support/core/view/WindowInsetsCompat;
    .locals 4

    .line 799
    invoke-virtual {p1}, Lcom/oneplus/support/core/view/WindowInsetsCompat;->isConsumed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 803
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 804
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 805
    invoke-static {v2}, Lcom/oneplus/support/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 806
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 807
    invoke-virtual {v3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 811
    invoke-virtual {v3, p0, v2, p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onApplyWindowInsets(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Lcom/oneplus/support/core/view/WindowInsetsCompat;)Lcom/oneplus/support/core/view/WindowInsetsCompat;

    move-result-object p1

    .line 812
    invoke-virtual {p1}, Lcom/oneplus/support/core/view/WindowInsetsCompat;->isConsumed()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object p1
.end method

.method private getDesiredAnchoredChildRectWithoutConstraints(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;II)V
    .locals 4

    .line 936
    iget p0, p5, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 937
    invoke-static {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->resolveAnchoredChildGravity(I)I

    move-result p0

    .line 936
    invoke-static {p0, p2}, Lcom/oneplus/support/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result p0

    .line 938
    iget p1, p5, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 939
    invoke-static {p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->resolveGravity(I)I

    move-result p1

    .line 938
    invoke-static {p1, p2}, Lcom/oneplus/support/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result p1

    and-int/lit8 p2, p0, 0x7

    and-int/lit8 p0, p0, 0x70

    and-int/lit8 p5, p1, 0x7

    and-int/lit8 p1, p1, 0x70

    const/4 v0, 0x5

    const/4 v1, 0x1

    if-eq p5, v1, :cond_1

    if-eq p5, v0, :cond_0

    .line 956
    iget p5, p3, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 959
    :cond_0
    iget p5, p3, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 962
    :cond_1
    iget p5, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr p5, v2

    :goto_0
    const/16 v2, 0x50

    const/16 v3, 0x10

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    .line 969
    iget p1, p3, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 972
    :cond_2
    iget p1, p3, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 975
    :cond_3
    iget p1, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p1, p3

    :goto_1
    if-eq p2, v1, :cond_4

    if-eq p2, v0, :cond_5

    sub-int/2addr p5, p6

    goto :goto_2

    .line 989
    :cond_4
    div-int/lit8 p2, p6, 0x2

    sub-int/2addr p5, p2

    :cond_5
    :goto_2
    if-eq p0, v3, :cond_6

    if-eq p0, v2, :cond_7

    sub-int/2addr p1, p7

    goto :goto_3

    .line 1002
    :cond_6
    div-int/lit8 p0, p7, 0x2

    sub-int/2addr p1, p0

    :cond_7
    :goto_3
    add-int/2addr p6, p5

    add-int/2addr p7, p1

    .line 1006
    invoke-virtual {p4, p5, p1, p6, p7}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private getKeyline(I)I
    .locals 4

    .line 559
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mKeylines:[I

    const/4 v1, 0x0

    const-string v2, "CoordinatorLayout"

    if-nez v0, :cond_0

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No keylines defined for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " - attempted index lookup "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    if-ltz p1, :cond_2

    .line 564
    array-length v3, v0

    if-lt p1, v3, :cond_1

    goto :goto_0

    .line 569
    :cond_1
    aget p0, v0, p1

    return p0

    .line 565
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Keyline index "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " out of range for "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private getTopSortedChildren(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 395
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 397
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v0

    .line 398
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    :goto_0
    if-ltz v2, :cond_1

    if-eqz v0, :cond_0

    .line 400
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v3

    goto :goto_1

    :cond_0
    move v3, v2

    .line 401
    :goto_1
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 402
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 405
    :cond_1
    sget-object p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;

    if-eqz p0, :cond_2

    .line 406
    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-void
.end method

.method private hasDependencies(Landroid/view/View;)Z
    .locals 0

    .line 1512
    iget-object p0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mChildDag:Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->hasOutgoingEdges(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private layoutChild(Landroid/view/View;I)V
    .locals 7

    .line 1135
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1136
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempRect1:Landroid/graphics/Rect;

    .line 1137
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    .line 1138
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    .line 1139
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    sub-int/2addr v3, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v3, v5

    .line 1140
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v5, v6

    .line 1137
    invoke-virtual {v4, v1, v2, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1142
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mLastInsets:Lcom/oneplus/support/core/view/WindowInsetsCompat;

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1143
    invoke-static {p1}, Lcom/oneplus/support/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1146
    iget v1, v4, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mLastInsets:Lcom/oneplus/support/core/view/WindowInsetsCompat;

    invoke-virtual {v2}, Lcom/oneplus/support/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v4, Landroid/graphics/Rect;->left:I

    .line 1147
    iget v1, v4, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mLastInsets:Lcom/oneplus/support/core/view/WindowInsetsCompat;

    invoke-virtual {v2}, Lcom/oneplus/support/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v4, Landroid/graphics/Rect;->top:I

    .line 1148
    iget v1, v4, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mLastInsets:Lcom/oneplus/support/core/view/WindowInsetsCompat;

    invoke-virtual {v2}, Lcom/oneplus/support/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v4, Landroid/graphics/Rect;->right:I

    .line 1149
    iget v1, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mLastInsets:Lcom/oneplus/support/core/view/WindowInsetsCompat;

    invoke-virtual {v2}, Lcom/oneplus/support/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v4, Landroid/graphics/Rect;->bottom:I

    .line 1152
    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempRect2:Landroid/graphics/Rect;

    .line 1153
    iget v0, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    invoke-static {v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->resolveGravity(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1154
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    move-object v5, p0

    move v6, p2

    .line 1153
    invoke-static/range {v1 .. v6}, Lcom/oneplus/support/core/view/GravityCompat;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 1155
    iget p2, p0, Landroid/graphics/Rect;->left:I

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private layoutChildWithAnchor(Landroid/view/View;Landroid/view/View;I)V
    .locals 2

    .line 1050
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1052
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempRect1:Landroid/graphics/Rect;

    .line 1053
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempRect2:Landroid/graphics/Rect;

    .line 1054
    invoke-virtual {p0, p2, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1055
    invoke-virtual {p0, p1, p3, v0, v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getDesiredAnchoredChildRect(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1057
    iget p0, v1, Landroid/graphics/Rect;->left:I

    iget p2, v1, Landroid/graphics/Rect;->top:I

    iget p3, v1, Landroid/graphics/Rect;->right:I

    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p0, p2, p3, v0}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private layoutChildWithKeyline(Landroid/view/View;II)V
    .locals 8

    .line 1072
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1073
    iget v1, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 1074
    invoke-static {v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->resolveKeylineGravity(I)I

    move-result v1

    .line 1073
    invoke-static {v1, p3}, Lcom/oneplus/support/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    and-int/lit8 v2, v1, 0x7

    and-int/lit8 v1, v1, 0x70

    .line 1078
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    .line 1079
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    .line 1080
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 1081
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    const/4 v7, 0x1

    if-ne p3, v7, :cond_0

    sub-int p2, v3, p2

    .line 1087
    :cond_0
    invoke-direct {p0, p2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getKeyline(I)I

    move-result p2

    sub-int/2addr p2, v5

    const/4 p3, 0x0

    if-eq v2, v7, :cond_2

    const/4 v7, 0x5

    if-eq v2, v7, :cond_1

    goto :goto_0

    :cond_1
    add-int/2addr p2, v5

    goto :goto_0

    .line 1099
    :cond_2
    div-int/lit8 v2, v5, 0x2

    add-int/2addr p2, v2

    :goto_0
    const/16 v2, 0x10

    if-eq v1, v2, :cond_4

    const/16 v2, 0x50

    if-eq v1, v2, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 p3, v6, 0x0

    goto :goto_1

    .line 1112
    :cond_4
    div-int/lit8 v1, v6, 0x2

    add-int/2addr p3, v1

    .line 1117
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    .line 1119
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v3, v2

    sub-int/2addr v3, v5

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v3, v2

    .line 1118
    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1117
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1120
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v2

    .line 1122
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v4, p0

    sub-int/2addr v4, v6

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v4, p0

    .line 1121
    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 1120
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/2addr v5, p2

    add-int/2addr v6, p0

    .line 1124
    invoke-virtual {p1, p2, p0, v5, v6}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private offsetChildByInset(Landroid/view/View;Landroid/graphics/Rect;I)V
    .locals 7

    .line 1325
    invoke-static {p1}, Lcom/oneplus/support/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1330
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempRect5:Landroid/graphics/Rect;

    .line 1331
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1332
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 1337
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1338
    invoke-virtual {v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v2

    .line 1339
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempRect3:Landroid/graphics/Rect;

    .line 1340
    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    if-eqz v2, :cond_3

    .line 1342
    invoke-virtual {v2, p0, p1, v3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->getInsetDodgeRect(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1344
    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 1345
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Rect should be within the child\'s bounds. Rect:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1346
    invoke-virtual {v3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " | Bounds:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1347
    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1350
    :cond_3
    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1353
    :goto_0
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 1358
    :cond_4
    iget v0, v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    invoke-static {v0, p3}, Lcom/oneplus/support/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result p3

    and-int/lit8 v0, p3, 0x30

    const/16 v2, 0x30

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v0, v2, :cond_5

    .line 1363
    iget v0, v3, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v0, v2

    iget v2, v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetY:I

    sub-int/2addr v0, v2

    .line 1364
    iget v2, p2, Landroid/graphics/Rect;->top:I

    if-ge v0, v2, :cond_5

    sub-int/2addr v2, v0

    .line 1365
    invoke-direct {p0, p1, v2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->setInsetOffsetY(Landroid/view/View;I)V

    move v0, v4

    goto :goto_1

    :cond_5
    move v0, v5

    :goto_1
    and-int/lit8 v2, p3, 0x50

    const/16 v6, 0x50

    if-ne v2, v6, :cond_6

    .line 1370
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v6

    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v2, v6

    iget v6, v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetY:I

    add-int/2addr v2, v6

    .line 1371
    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v6, :cond_6

    sub-int/2addr v2, v6

    .line 1372
    invoke-direct {p0, p1, v2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->setInsetOffsetY(Landroid/view/View;I)V

    move v0, v4

    :cond_6
    if-nez v0, :cond_7

    .line 1377
    invoke-direct {p0, p1, v5}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->setInsetOffsetY(Landroid/view/View;I)V

    :cond_7
    and-int/lit8 v0, p3, 0x3

    const/4 v2, 0x3

    if-ne v0, v2, :cond_8

    .line 1382
    iget v0, v3, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v0, v2

    iget v2, v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetX:I

    sub-int/2addr v0, v2

    .line 1383
    iget v2, p2, Landroid/graphics/Rect;->left:I

    if-ge v0, v2, :cond_8

    sub-int/2addr v2, v0

    .line 1384
    invoke-direct {p0, p1, v2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->setInsetOffsetX(Landroid/view/View;I)V

    move v0, v4

    goto :goto_2

    :cond_8
    move v0, v5

    :goto_2
    const/4 v2, 0x5

    and-int/2addr p3, v2

    if-ne p3, v2, :cond_9

    .line 1389
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p3

    iget v2, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr p3, v2

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr p3, v2

    iget v1, v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetX:I

    add-int/2addr p3, v1

    .line 1390
    iget p2, p2, Landroid/graphics/Rect;->right:I

    if-ge p3, p2, :cond_9

    sub-int/2addr p3, p2

    .line 1391
    invoke-direct {p0, p1, p3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->setInsetOffsetX(Landroid/view/View;I)V

    move v0, v4

    :cond_9
    if-nez v0, :cond_a

    .line 1396
    invoke-direct {p0, p1, v5}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->setInsetOffsetX(Landroid/view/View;I)V

    :cond_a
    return-void
.end method

.method static parseBehavior(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    .locals 4

    .line 573
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "."

    .line 578
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/16 v0, 0x2e

    .line 581
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_2

    goto :goto_0

    .line 586
    :cond_2
    sget-object v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->WIDGET_PACKAGE_NAME:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 587
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->WIDGET_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 592
    :cond_3
    :goto_0
    :try_start_0
    sget-object v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->sConstructors:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_4

    .line 594
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 595
    sget-object v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->sConstructors:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 597
    :cond_4
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    if-nez v1, :cond_5

    .line 600
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 599
    invoke-static {p2, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 601
    sget-object v3, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->CONSTRUCTOR_PARAMS:[Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 602
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 603
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v0, v3

    aput-object p1, v0, v2

    .line 605
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 607
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not inflate Behavior subclass "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private performIntercept(Landroid/view/MotionEvent;I)Z
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 416
    invoke-static/range {p1 .. p1}, Lcom/oneplus/support/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v3

    .line 418
    iget-object v4, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempList1:Ljava/util/List;

    .line 419
    invoke-direct {v0, v4}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getTopSortedChildren(Ljava/util/List;)V

    .line 422
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v6

    move v9, v8

    move-object v10, v7

    move v7, v9

    :goto_0
    if-ge v7, v5, :cond_b

    .line 424
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    .line 425
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 426
    invoke-virtual {v12}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v13

    const/4 v14, 0x1

    if-nez v8, :cond_0

    if-eqz v9, :cond_4

    :cond_0
    if-eqz v3, :cond_4

    if-eqz v13, :cond_a

    if-nez v10, :cond_1

    .line 433
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    const/16 v19, 0x3

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-wide/from16 v15, v17

    .line 434
    invoke-static/range {v15 .. v22}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    :cond_1
    if-eqz v2, :cond_3

    if-eq v2, v14, :cond_2

    goto :goto_3

    .line 442
    :cond_2
    invoke-virtual {v13, v0, v11, v10}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onTouchEvent(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_3

    .line 439
    :cond_3
    invoke-virtual {v13, v0, v11, v10}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onInterceptTouchEvent(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_3

    :cond_4
    if-nez v8, :cond_7

    if-eqz v13, :cond_7

    if-eqz v2, :cond_6

    if-eq v2, v14, :cond_5

    goto :goto_1

    .line 455
    :cond_5
    invoke-virtual {v13, v0, v11, v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onTouchEvent(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v8

    goto :goto_1

    .line 452
    :cond_6
    invoke-virtual {v13, v0, v11, v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onInterceptTouchEvent(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v8

    :goto_1
    if-eqz v8, :cond_7

    .line 459
    iput-object v11, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    .line 465
    :cond_7
    invoke-virtual {v12}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->didBlockInteraction()Z

    move-result v9

    .line 466
    invoke-virtual {v12, v0, v11}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->isBlockingInteractionBelow(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_8

    if-nez v9, :cond_8

    goto :goto_2

    :cond_8
    move v14, v6

    :goto_2
    if-eqz v11, :cond_9

    if-nez v14, :cond_9

    goto :goto_4

    :cond_9
    move v9, v14

    :cond_a
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 475
    :cond_b
    :goto_4
    invoke-interface {v4}, Ljava/util/List;->clear()V

    return v8
.end method

.method private prepareChildren()V
    .locals 7

    .line 634
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 635
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mChildDag:Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->clear()V

    .line 637
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    .line 638
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 640
    invoke-virtual {p0, v3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getResolvedLayoutParams(Landroid/view/View;)Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    move-result-object v4

    .line 641
    invoke-virtual {v4, p0, v3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->findAnchorView(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/view/View;

    .line 643
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mChildDag:Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;

    invoke-virtual {v4, v3}, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->addNode(Ljava/lang/Object;)V

    move v4, v1

    :goto_1
    if-ge v4, v0, :cond_3

    if-ne v4, v2, :cond_0

    goto :goto_2

    .line 650
    :cond_0
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 651
    invoke-virtual {p0, v5}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getResolvedLayoutParams(Landroid/view/View;)Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    move-result-object v6

    .line 652
    invoke-virtual {v6, p0, v5, v3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->dependsOn(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 653
    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mChildDag:Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;

    invoke-virtual {v6, v5}, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 655
    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mChildDag:Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;

    invoke-virtual {v6, v5}, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->addNode(Ljava/lang/Object;)V

    .line 658
    :cond_1
    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mChildDag:Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;

    invoke-virtual {v6, v3, v5}, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->addEdge(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 664
    :cond_4
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mChildDag:Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;

    invoke-virtual {v1}, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->getSortedList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 667
    iget-object p0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    return-void
.end method

.method private resetTouchBehaviors()V
    .locals 9

    .line 369
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 370
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 372
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v1, v3

    .line 373
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 375
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    invoke-virtual {v0, p0, v2, v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onTouchEvent(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 376
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    :cond_0
    const/4 v0, 0x0

    .line 378
    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    .line 381
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 383
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 384
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 385
    invoke-virtual {v3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->resetTouchBehaviorTracking()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 387
    :cond_2
    iput-boolean v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mDisallowInterceptReset:Z

    return-void
.end method

.method private static resolveAnchoredChildGravity(I)I
    .locals 0

    if-nez p0, :cond_0

    const/16 p0, 0x11

    :cond_0
    return p0
.end method

.method private static resolveGravity(I)I
    .locals 0

    if-nez p0, :cond_0

    const p0, 0x800033

    :cond_0
    return p0
.end method

.method private static resolveKeylineGravity(I)I
    .locals 0

    if-nez p0, :cond_0

    const p0, 0x800035

    :cond_0
    return p0
.end method

.method private setInsetOffsetX(Landroid/view/View;I)V
    .locals 1

    .line 1401
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1402
    iget v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetX:I

    if-eq v0, p2, :cond_0

    sub-int v0, p2, v0

    .line 1404
    invoke-static {p1, v0}, Lcom/oneplus/support/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 1405
    iput p2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetX:I

    :cond_0
    return-void
.end method

.method private setInsetOffsetY(Landroid/view/View;I)V
    .locals 1

    .line 1410
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1411
    iget v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetY:I

    if-eq v0, p2, :cond_0

    sub-int v0, p2, v0

    .line 1413
    invoke-static {p1, v0}, Lcom/oneplus/support/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 1414
    iput p2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetY:I

    :cond_0
    return-void
.end method

.method private setupForInsets()V
    .locals 2

    .line 2962
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    return-void

    .line 2966
    :cond_0
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2967
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mApplyWindowInsetsListener:Lcom/oneplus/support/core/view/OnApplyWindowInsetsListener;

    if-nez v0, :cond_1

    .line 2968
    new-instance v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$1;-><init>(Lcom/oneplus/lib/design/widget/CoordinatorLayout;)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mApplyWindowInsetsListener:Lcom/oneplus/support/core/view/OnApplyWindowInsetsListener;

    .line 2978
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mApplyWindowInsetsListener:Lcom/oneplus/support/core/view/OnApplyWindowInsetsListener;

    invoke-static {p0, v0}, Lcom/oneplus/support/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Lcom/oneplus/support/core/view/OnApplyWindowInsetsListener;)V

    const/16 v0, 0x500

    .line 2981
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 2984
    invoke-static {p0, v0}, Lcom/oneplus/support/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Lcom/oneplus/support/core/view/OnApplyWindowInsetsListener;)V

    :goto_0
    return-void
.end method


# virtual methods
.method addPreDrawListener()V
    .locals 2

    .line 1520
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    if-eqz v0, :cond_1

    .line 1522
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mOnPreDrawListener:Lcom/oneplus/lib/design/widget/CoordinatorLayout$OnPreDrawListener;

    if-nez v0, :cond_0

    .line 1523
    new-instance v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$OnPreDrawListener;-><init>(Lcom/oneplus/lib/design/widget/CoordinatorLayout;)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mOnPreDrawListener:Lcom/oneplus/lib/design/widget/CoordinatorLayout$OnPreDrawListener;

    .line 1525
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1526
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mOnPreDrawListener:Lcom/oneplus/lib/design/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1
    const/4 v0, 0x1

    .line 1531
    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 1652
    instance-of v0, p1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public dispatchDependentViewsChanged(Landroid/view/View;)V
    .locals 4

    .line 1429
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mChildDag:Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->getIncomingEdges(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1430
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 1431
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1432
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1434
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1435
    invoke-virtual {v3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1437
    invoke-virtual {v3, p0, v2, p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onDependentViewChanged(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 8

    .line 1184
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1185
    iget-object v1, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    if-eqz v1, :cond_2

    .line 1186
    invoke-virtual {v1, p0, p2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->getScrimOpacity(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2

    .line 1188
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_0

    .line 1189
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    .line 1191
    :cond_0
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    iget-object v0, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    invoke-virtual {v0, p0, p2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->getScrimColor(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1192
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0xff

    invoke-static {v1, v2, v3}, Lcom/oneplus/lib/util/MathUtils;->constrain(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1194
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 1195
    invoke-virtual {p2}, Landroid/view/View;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1198
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v3, v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v5, v1

    .line 1199
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v6, v1

    sget-object v7, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v2, p1

    .line 1198
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 1202
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    int-to-float v3, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    int-to-float v4, v1

    .line 1203
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v5, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v6, v1

    iget-object v7, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    move-object v2, p1

    .line 1202
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1205
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1208
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    return p0
.end method

.method protected drawableStateChanged()V
    .locals 4

    .line 294
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 296
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDrawableState()[I

    move-result-object v0

    .line 299
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 300
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 301
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/2addr v2, v0

    :cond_0
    if-eqz v2, :cond_1

    .line 305
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_1
    return-void
.end method

.method ensurePreDrawListener()V
    .locals 4

    .line 1490
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1492
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1493
    invoke-direct {p0, v3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->hasDependencies(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1499
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    if-eq v1, v0, :cond_3

    if-eqz v1, :cond_2

    .line 1501
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->addPreDrawListener()V

    goto :goto_2

    .line 1503
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->removePreDrawListener()V

    :cond_3
    :goto_2
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 110
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->generateDefaultLayoutParams()Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected generateDefaultLayoutParams()Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    .locals 1

    .line 1647
    new-instance p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    .locals 1

    .line 1632
    new-instance v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    .locals 0

    .line 1637
    instance-of p0, p1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    if-eqz p0, :cond_0

    .line 1638
    new-instance p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    check-cast p1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;-><init>(Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;)V

    return-object p0

    .line 1639
    :cond_0
    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_1

    .line 1640
    new-instance p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object p0

    .line 1642
    :cond_1
    new-instance p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .locals 2

    .line 923
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    .line 928
    invoke-virtual {p0, p1, p3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 930
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-virtual {p3, p0, p2, v0, p1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void

    .line 924
    :cond_2
    :goto_1
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public getDependencies(Landroid/view/View;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1453
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mChildDag:Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->getOutgoingEdges(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 1454
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 1456
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1458
    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    return-object p0
.end method

.method final getDependencySortedChildren()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1481
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->prepareChildren()V

    .line 1482
    iget-object p0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getDependents(Landroid/view/View;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1471
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mChildDag:Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->getIncomingEdges(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 1472
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 1474
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1476
    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    return-object p0
.end method

.method getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .line 678
    invoke-static {p0, p1, p2}, Lcom/oneplus/lib/design/widget/Utils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method getDesiredAnchoredChildRect(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 11

    .line 1034
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1035
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 1036
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, v0

    move v7, v9

    move v8, v10

    .line 1037
    invoke-direct/range {v1 .. v8}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getDesiredAnchoredChildRectWithoutConstraints(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;II)V

    .line 1039
    invoke-direct {p0, v0, p4, v9, v10}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->constrainChildRect(Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;Landroid/graphics/Rect;II)V

    return-void
.end method

.method getLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .line 909
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 910
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getLastChildRect()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method final getLastWindowInsets()Lcom/oneplus/support/core/view/WindowInsetsCompat;
    .locals 0

    .line 359
    iget-object p0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mLastInsets:Lcom/oneplus/support/core/view/WindowInsetsCompat;

    return-object p0
.end method

.method public getNestedScrollAxes()I
    .locals 0

    .line 1830
    iget-object p0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Lcom/oneplus/support/core/view/NestedScrollingParentHelper;

    invoke-virtual {p0}, Lcom/oneplus/support/core/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result p0

    return p0
.end method

.method getResolvedLayoutParams(Landroid/view/View;)Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    .locals 3

    .line 612
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 613
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    if-nez v0, :cond_2

    .line 614
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_0

    .line 616
    const-class v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$DefaultBehavior;

    .line 617
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$DefaultBehavior;

    if-nez v0, :cond_0

    .line 618
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 622
    :try_start_0
    invoke-interface {v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$DefaultBehavior;->value()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->setBehavior(Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 624
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default behavior class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$DefaultBehavior;->value()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " could not be instantiated. Did you forget a default constructor?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoordinatorLayout"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    const/4 p1, 0x1

    .line 628
    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    :cond_2
    return-object p0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 2

    .line 688
    invoke-super {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    add-int/2addr v1, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 2

    .line 683
    invoke-super {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p0

    add-int/2addr v1, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public isPointInChildBounds(Landroid/view/View;II)Z
    .locals 1

    .line 1604
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempRect1:Landroid/graphics/Rect;

    .line 1605
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1606
    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method offsetChildToAnchor(Landroid/view/View;I)V
    .locals 16

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 1557
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1558
    iget-object v0, v10, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 1559
    iget-object v3, v8, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempRect1:Landroid/graphics/Rect;

    .line 1560
    iget-object v11, v8, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempRect2:Landroid/graphics/Rect;

    .line 1561
    iget-object v12, v8, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempRect3:Landroid/graphics/Rect;

    .line 1563
    invoke-virtual {v8, v0, v3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    const/4 v13, 0x0

    .line 1564
    invoke-virtual {v8, v9, v13, v11}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 1566
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 1567
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v4, v12

    move-object v5, v10

    move v6, v14

    move v7, v15

    .line 1568
    invoke-direct/range {v0 .. v7}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getDesiredAnchoredChildRectWithoutConstraints(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;II)V

    .line 1570
    iget v0, v12, Landroid/graphics/Rect;->left:I

    iget v1, v11, Landroid/graphics/Rect;->left:I

    if-ne v0, v1, :cond_0

    iget v0, v12, Landroid/graphics/Rect;->top:I

    iget v1, v11, Landroid/graphics/Rect;->top:I

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v13, 0x1

    .line 1572
    :cond_1
    invoke-direct {v8, v10, v12, v14, v15}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->constrainChildRect(Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;Landroid/graphics/Rect;II)V

    .line 1574
    iget v0, v12, Landroid/graphics/Rect;->left:I

    iget v1, v11, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    .line 1575
    iget v1, v12, Landroid/graphics/Rect;->top:I

    iget v2, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    if-eqz v0, :cond_2

    .line 1578
    invoke-static {v9, v0}, Lcom/oneplus/support/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    :cond_2
    if-eqz v1, :cond_3

    .line 1581
    invoke-static {v9, v1}, Lcom/oneplus/support/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    :cond_3
    if-eqz v13, :cond_4

    .line 1586
    invoke-virtual {v10}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1588
    iget-object v1, v10, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0, v8, v9, v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onDependentViewChanged(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    :cond_4
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 226
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 227
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->resetTouchBehaviors()V

    .line 228
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mOnPreDrawListener:Lcom/oneplus/lib/design/widget/CoordinatorLayout$OnPreDrawListener;

    if-nez v0, :cond_0

    .line 230
    new-instance v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$OnPreDrawListener;-><init>(Lcom/oneplus/lib/design/widget/CoordinatorLayout;)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mOnPreDrawListener:Lcom/oneplus/lib/design/widget/CoordinatorLayout$OnPreDrawListener;

    .line 232
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mOnPreDrawListener:Lcom/oneplus/lib/design/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mLastInsets:Lcom/oneplus/support/core/view/WindowInsetsCompat;

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 238
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    :cond_2
    const/4 v0, 0x1

    .line 240
    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    return-void
.end method

.method final onChildViewsChanged(I)V
    .locals 13

    .line 1228
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 1229
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1230
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempRect4:Landroid/graphics/Rect;

    .line 1231
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_e

    .line 1233
    iget-object v5, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1234
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    move v7, v3

    :goto_1
    if-ge v7, v4, :cond_1

    .line 1238
    iget-object v8, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 1240
    iget-object v9, v6, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    if-ne v9, v8, :cond_0

    .line 1241
    invoke-virtual {p0, v5, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->offsetChildToAnchor(Landroid/view/View;I)V

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1246
    :cond_1
    iget-object v7, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempRect1:Landroid/graphics/Rect;

    const/4 v8, 0x1

    .line 1247
    invoke-virtual {p0, v5, v8, v7}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 1250
    iget v9, v6, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    if-eqz v9, :cond_6

    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_6

    .line 1251
    iget v9, v6, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    invoke-static {v9, v0}, Lcom/oneplus/support/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v9

    and-int/lit8 v10, v9, 0x70

    const/16 v11, 0x30

    if-eq v10, v11, :cond_3

    const/16 v11, 0x50

    if-eq v10, v11, :cond_2

    goto :goto_2

    .line 1258
    :cond_2
    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v11

    iget v12, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 1255
    :cond_3
    iget v10, v2, Landroid/graphics/Rect;->top:I

    iget v11, v7, Landroid/graphics/Rect;->bottom:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, v2, Landroid/graphics/Rect;->top:I

    :goto_2
    and-int/lit8 v9, v9, 0x7

    const/4 v10, 0x3

    if-eq v9, v10, :cond_5

    const/4 v10, 0x5

    if-eq v9, v10, :cond_4

    goto :goto_3

    .line 1266
    :cond_4
    iget v9, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v10

    iget v11, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v2, Landroid/graphics/Rect;->right:I

    goto :goto_3

    .line 1263
    :cond_5
    iget v9, v2, Landroid/graphics/Rect;->left:I

    iget v10, v7, Landroid/graphics/Rect;->right:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v2, Landroid/graphics/Rect;->left:I

    .line 1272
    :cond_6
    :goto_3
    iget v6, v6, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    if-eqz v6, :cond_7

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_7

    .line 1273
    invoke-direct {p0, v5, v2, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->offsetChildByInset(Landroid/view/View;Landroid/graphics/Rect;I)V

    :cond_7
    if-nez p1, :cond_9

    .line 1278
    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempRect2:Landroid/graphics/Rect;

    .line 1279
    invoke-virtual {p0, v5, v6}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1280
    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_7

    .line 1283
    :cond_8
    invoke-virtual {p0, v5, v7}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->recordLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_9
    add-int/lit8 v6, v4, 0x1

    :goto_4
    if-ge v6, v1, :cond_d

    .line 1288
    iget-object v7, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 1289
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1290
    invoke-virtual {v9}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v10

    if-eqz v10, :cond_c

    .line 1292
    invoke-virtual {v10, p0, v7, v5}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->layoutDependsOn(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_c

    if-nez p1, :cond_a

    .line 1293
    invoke-virtual {v9}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getChangedAfterNestedScroll()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1296
    invoke-virtual {v9}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->resetChangedAfterNestedScroll()V

    goto :goto_6

    :cond_a
    const/4 v11, 0x2

    if-eq p1, v11, :cond_b

    .line 1310
    invoke-virtual {v10, p0, v7, v5}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onDependentViewChanged(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    goto :goto_5

    .line 1305
    :cond_b
    invoke-virtual {v10, p0, v7, v5}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onDependentViewRemoved(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    move v7, v8

    :goto_5
    if-ne p1, v8, :cond_c

    .line 1317
    invoke-virtual {v9, v7}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->setChangedAfterNestedScroll(Z)V

    :cond_c
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_d
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_e
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 245
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 246
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->resetTouchBehaviors()V

    .line 247
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mOnPreDrawListener:Lcom/oneplus/lib/design/widget/CoordinatorLayout$OnPreDrawListener;

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mOnPreDrawListener:Lcom/oneplus/lib/design/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 252
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->onStopNestedScroll(Landroid/view/View;)V

    :cond_1
    const/4 v0, 0x0

    .line 254
    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 870
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 871
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mDrawStatusBarBackground:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 872
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mLastInsets:Lcom/oneplus/support/core/view/WindowInsetsCompat;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/support/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-lez v0, :cond_1

    .line 874
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    invoke-virtual {v2, v1, v1, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 875
    iget-object p0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 484
    invoke-static {p1}, Lcom/oneplus/support/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    if-nez v0, :cond_0

    .line 488
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->resetTouchBehaviors()V

    :cond_0
    const/4 v1, 0x0

    .line 491
    invoke-direct {p0, p1, v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->performIntercept(Landroid/view/MotionEvent;I)Z

    move-result p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 498
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->resetTouchBehaviors()V

    :cond_2
    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 850
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p1

    .line 851
    iget-object p2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_3

    .line 853
    iget-object p4, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/View;

    .line 854
    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result p5

    const/16 v0, 0x8

    if-ne p5, v0, :cond_0

    goto :goto_1

    .line 859
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    check-cast p5, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 860
    invoke-virtual {p5}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object p5

    if-eqz p5, :cond_1

    .line 862
    invoke-virtual {p5, p0, p4, p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onLayoutChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result p5

    if-nez p5, :cond_2

    .line 863
    :cond_1
    invoke-virtual {p0, p4, p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    :cond_2
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onLayoutChild(Landroid/view/View;I)V
    .locals 2

    .line 834
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 835
    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->checkAnchorChanged()Z

    move-result v1

    if-nez v1, :cond_2

    .line 839
    iget-object v1, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 840
    invoke-direct {p0, p1, v1, p2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->layoutChildWithAnchor(Landroid/view/View;Landroid/view/View;I)V

    goto :goto_0

    .line 841
    :cond_0
    iget v0, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    if-ltz v0, :cond_1

    .line 842
    invoke-direct {p0, p1, v0, p2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->layoutChildWithKeyline(Landroid/view/View;II)V

    goto :goto_0

    .line 844
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->layoutChild(Landroid/view/View;I)V

    :goto_0
    return-void

    .line 836
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected onMeasure(II)V
    .locals 30

    move-object/from16 v7, p0

    .line 712
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->prepareChildren()V

    .line 713
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->ensurePreDrawListener()V

    .line 715
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v8

    .line 716
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    .line 717
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v9

    .line 718
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    .line 719
    invoke-static/range {p0 .. p0}, Lcom/oneplus/support/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v10

    const/4 v2, 0x1

    if-ne v10, v2, :cond_0

    move v12, v2

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    .line 721
    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 722
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    .line 723
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    .line 724
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    add-int v17, v8, v9

    add-int v18, v0, v1

    .line 728
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getSuggestedMinimumWidth()I

    move-result v0

    .line 729
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getSuggestedMinimumHeight()I

    move-result v1

    .line 732
    iget-object v3, v7, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mLastInsets:Lcom/oneplus/support/core/view/WindowInsetsCompat;

    if-eqz v3, :cond_1

    invoke-static/range {p0 .. p0}, Lcom/oneplus/support/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    move/from16 v19, v2

    goto :goto_1

    :cond_1
    const/16 v19, 0x0

    .line 734
    :goto_1
    iget-object v2, v7, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    move v4, v0

    move v2, v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v6, :cond_d

    .line 736
    iget-object v0, v7, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Landroid/view/View;

    .line 737
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    move/from16 v22, v5

    move/from16 v29, v6

    goto/16 :goto_6

    .line 742
    :cond_2
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 745
    iget v0, v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    if-ltz v0, :cond_8

    if-eqz v13, :cond_8

    .line 746
    invoke-direct {v7, v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getKeyline(I)I

    move-result v0

    .line 747
    iget v11, v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 748
    invoke-static {v11}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->resolveKeylineGravity(I)I

    move-result v11

    .line 747
    invoke-static {v11, v10}, Lcom/oneplus/support/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v11

    and-int/lit8 v11, v11, 0x7

    move/from16 v22, v2

    const/4 v2, 0x3

    if-ne v11, v2, :cond_3

    if-eqz v12, :cond_4

    :cond_3
    const/4 v2, 0x5

    if-ne v11, v2, :cond_5

    if-eqz v12, :cond_5

    :cond_4
    sub-int v2, v14, v9

    sub-int/2addr v2, v0

    const/4 v0, 0x0

    .line 752
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v11, v0

    move/from16 v21, v2

    goto :goto_3

    :cond_5
    if-ne v11, v2, :cond_6

    if-eqz v12, :cond_7

    :cond_6
    const/4 v2, 0x3

    if-ne v11, v2, :cond_9

    if-eqz v12, :cond_9

    :cond_7
    sub-int/2addr v0, v8

    const/4 v11, 0x0

    .line 755
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move/from16 v21, v0

    goto :goto_3

    :cond_8
    move/from16 v22, v2

    :cond_9
    const/4 v11, 0x0

    move/from16 v21, v11

    :goto_3
    if-eqz v19, :cond_a

    .line 761
    invoke-static/range {v20 .. v20}, Lcom/oneplus/support/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 764
    iget-object v0, v7, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mLastInsets:Lcom/oneplus/support/core/view/WindowInsetsCompat;

    invoke-virtual {v0}, Lcom/oneplus/support/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v0

    iget-object v2, v7, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mLastInsets:Lcom/oneplus/support/core/view/WindowInsetsCompat;

    .line 765
    invoke-virtual {v2}, Lcom/oneplus/support/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v2

    add-int/2addr v0, v2

    .line 766
    iget-object v2, v7, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mLastInsets:Lcom/oneplus/support/core/view/WindowInsetsCompat;

    invoke-virtual {v2}, Lcom/oneplus/support/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v2

    iget-object v11, v7, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mLastInsets:Lcom/oneplus/support/core/view/WindowInsetsCompat;

    .line 767
    invoke-virtual {v11}, Lcom/oneplus/support/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v11

    add-int/2addr v2, v11

    sub-int v0, v14, v0

    .line 769
    invoke-static {v0, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sub-int v2, v16, v2

    .line 771
    invoke-static {v2, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    move v11, v0

    move/from16 v23, v2

    goto :goto_4

    :cond_a
    move/from16 v11, p1

    move/from16 v23, p2

    .line 775
    :goto_4
    invoke-virtual {v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    if-eqz v0, :cond_b

    const/16 v24, 0x0

    move-object v2, v1

    move-object/from16 v1, p0

    move-object/from16 v26, v2

    move/from16 v25, v22

    move-object/from16 v2, v20

    move/from16 v27, v3

    move v3, v11

    move/from16 v28, v4

    move/from16 v4, v21

    move/from16 v22, v5

    move/from16 v5, v23

    move/from16 v29, v6

    move/from16 v6, v24

    .line 776
    invoke-virtual/range {v0 .. v6}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onMeasureChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_5

    :cond_b
    move-object/from16 v26, v1

    move/from16 v27, v3

    move/from16 v28, v4

    move/from16 v29, v6

    move/from16 v25, v22

    move/from16 v22, v5

    :goto_5
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move v2, v11

    move/from16 v3, v21

    move/from16 v4, v23

    .line 778
    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    .line 782
    :cond_c
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int v0, v17, v0

    move-object/from16 v1, v26

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v0, v2

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v2

    move/from16 v2, v28

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 785
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int v2, v18, v2

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v1

    move/from16 v1, v25

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 788
    invoke-static/range {v20 .. v20}, Lcom/oneplus/support/core/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v2

    move/from16 v11, v27

    .line 787
    invoke-static {v11, v2}, Lcom/oneplus/support/core/view/ViewCompat;->combineMeasuredStates(II)I

    move-result v2

    move v4, v0

    move v3, v2

    move v2, v1

    :goto_6
    add-int/lit8 v5, v22, 0x1

    move/from16 v6, v29

    goto/16 :goto_2

    :cond_d
    move v1, v2

    move v11, v3

    move v2, v4

    const/high16 v0, -0x1000000

    and-int/2addr v0, v11

    move/from16 v3, p1

    .line 791
    invoke-static {v2, v3, v0}, Lcom/oneplus/support/core/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v0

    shl-int/lit8 v2, v11, 0x10

    move/from16 v3, p2

    .line 793
    invoke-static {v1, v3, v2}, Lcom/oneplus/support/core/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v1

    .line 795
    invoke-virtual {v7, v0, v1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public onMeasureChild(Landroid/view/View;IIII)V
    .locals 0

    .line 706
    invoke-virtual/range {p0 .. p5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 10

    .line 1788
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1790
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1791
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1792
    invoke-virtual {v3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 1796
    :cond_0
    invoke-virtual {v3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object v4, p0

    move-object v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    .line 1798
    invoke-virtual/range {v3 .. v9}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onNestedFling(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z

    move-result v3

    or-int/2addr v2, v3

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    const/4 p1, 0x1

    .line 1803
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->onChildViewsChanged(I)V

    :cond_3
    return v2
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 9

    .line 1812
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1814
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1815
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1816
    invoke-virtual {v3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 1820
    :cond_0
    invoke-virtual {v3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object v4, p0

    move-object v6, p1

    move v7, p2

    move v8, p3

    .line 1822
    invoke-virtual/range {v3 .. v8}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onNestedPreFling(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    move-result v3

    or-int/2addr v2, v3

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 14

    move-object v7, p0

    .line 1754
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    const/4 v9, 0x0

    move v0, v9

    move v10, v0

    move v11, v10

    move v12, v11

    :goto_0
    const/4 v13, 0x1

    if-ge v10, v8, :cond_4

    .line 1756
    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1757
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1758
    invoke-virtual {v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_3

    .line 1762
    :cond_0
    invoke-virtual {v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1764
    iget-object v6, v7, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempIntPair:[I

    aput v9, v6, v13

    aput v9, v6, v9

    move-object v0, v1

    move-object v1, p0

    move-object v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    .line 1765
    invoke-virtual/range {v0 .. v6}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onNestedPreScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V

    if-lez p2, :cond_1

    .line 1767
    iget-object v0, v7, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempIntPair:[I

    aget v0, v0, v9

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    .line 1768
    :cond_1
    iget-object v0, v7, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempIntPair:[I

    aget v0, v0, v9

    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_1
    if-lez p3, :cond_2

    .line 1769
    iget-object v1, v7, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempIntPair:[I

    aget v1, v1, v13

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_2

    .line 1770
    :cond_2
    iget-object v1, v7, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mTempIntPair:[I

    aget v1, v1, v13

    invoke-static {v12, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_2
    move v11, v0

    move v12, v1

    move v0, v13

    :cond_3
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1776
    :cond_4
    aput v11, p4, v9

    .line 1777
    aput v12, p4, v13

    if-eqz v0, :cond_5

    .line 1780
    invoke-virtual {p0, v13}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->onChildViewsChanged(I)V

    :cond_5
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 12

    move-object v8, p0

    .line 1725
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    const/4 v0, 0x0

    move v10, v0

    :goto_0
    const/4 v11, 0x1

    if-ge v10, v9, :cond_2

    .line 1729
    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1730
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1731
    invoke-virtual {v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 1735
    :cond_0
    invoke-virtual {v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v0, v1

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    .line 1737
    invoke-virtual/range {v0 .. v7}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onNestedScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V

    move v0, v11

    :cond_1
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 1744
    invoke-virtual {p0, v11}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->onChildViewsChanged(I)V

    :cond_3
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 8

    .line 1679
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Lcom/oneplus/support/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/support/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 1680
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mNestedScrollingDirectChild:Landroid/view/View;

    .line 1681
    iput-object p2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    .line 1683
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1685
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1686
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1687
    invoke-virtual {v2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 1691
    :cond_0
    invoke-virtual {v2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    .line 1693
    invoke-virtual/range {v2 .. v7}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onNestedScrollAccepted(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6

    .line 2900
    instance-of v0, p1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$SavedState;

    if-nez v0, :cond_0

    .line 2901
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 2905
    :cond_0
    check-cast p1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$SavedState;

    .line 2906
    invoke-virtual {p1}, Lcom/oneplus/support/core/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2908
    iget-object p1, p1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 2910
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 2911
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2912
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    .line 2913
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getResolvedLayoutParams(Landroid/view/View;)Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    move-result-object v4

    .line 2914
    invoke-virtual {v4}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v4

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    if-eqz v4, :cond_1

    .line 2917
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    if-eqz v3, :cond_1

    .line 2919
    invoke-virtual {v4, p0, v2, v3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onRestoreInstanceState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8

    .line 2927
    new-instance v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2929
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 2930
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 2931
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2932
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    .line 2933
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 2934
    invoke-virtual {v6}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v6

    const/4 v7, -0x1

    if-eq v5, v7, :cond_0

    if-eqz v6, :cond_0

    .line 2938
    invoke-virtual {v6, p0, v4}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onSaveInstanceState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2940
    invoke-virtual {v1, v5, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2944
    :cond_1
    iput-object v1, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    return-object v0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 11

    .line 1659
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1661
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1662
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1663
    invoke-virtual {v10}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object v5, p0

    move-object v7, p1

    move-object v8, p2

    move v9, p3

    .line 1665
    invoke-virtual/range {v4 .. v9}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onStartNestedScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z

    move-result v4

    or-int/2addr v3, v4

    .line 1669
    invoke-virtual {v10, v4}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->acceptNestedScroll(Z)V

    goto :goto_1

    .line 1671
    :cond_0
    invoke-virtual {v10, v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->acceptNestedScroll(Z)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 5

    .line 1700
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Lcom/oneplus/support/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/support/core/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    .line 1702
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1704
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1705
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1706
    invoke-virtual {v3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 1710
    :cond_0
    invoke-virtual {v3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1712
    invoke-virtual {v4, p0, v2, p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onStopNestedScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    .line 1714
    :cond_1
    invoke-virtual {v3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->resetNestedScroll()V

    .line 1715
    invoke-virtual {v3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->resetChangedAfterNestedScroll()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 1718
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mNestedScrollingDirectChild:Landroid/view/View;

    .line 1719
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 510
    invoke-static {p1}, Lcom/oneplus/support/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 512
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-direct {p0, p1, v2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->performIntercept(Landroid/view/MotionEvent;I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_0
    move v1, v3

    .line 515
    :goto_0
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 516
    invoke-virtual {v4}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 518
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    invoke-virtual {v4, p0, v3, p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onTouchEvent(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    .line 523
    :cond_1
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    const/4 v5, 0x0

    if-nez v4, :cond_2

    .line 524
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    or-int/2addr v3, p1

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    .line 527
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-wide v6, v8

    .line 528
    invoke-static/range {v6 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v5

    .line 531
    invoke-super {p0, v5}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_3
    :goto_1
    if-eqz v5, :cond_4

    .line 539
    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    :cond_4
    if-eq v0, v2, :cond_5

    const/4 p1, 0x3

    if-ne v0, p1, :cond_6

    .line 543
    :cond_5
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->resetTouchBehaviors()V

    :cond_6
    return v3
.end method

.method recordLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .line 897
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 898
    invoke-virtual {p0, p2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->setLastChildRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method removePreDrawListener()V
    .locals 2

    .line 1539
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    if-eqz v0, :cond_0

    .line 1540
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mOnPreDrawListener:Lcom/oneplus/lib/design/widget/CoordinatorLayout$OnPreDrawListener;

    if-eqz v0, :cond_0

    .line 1541
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1542
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mOnPreDrawListener:Lcom/oneplus/lib/design/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    const/4 v0, 0x0

    .line 1545
    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1

    .line 2950
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 2951
    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2954
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;->onRequestChildRectangleOnScreen(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2958
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result p0

    return p0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 551
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    if-eqz p1, :cond_0

    .line 552
    iget-boolean p1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mDisallowInterceptReset:Z

    if-nez p1, :cond_0

    .line 553
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->resetTouchBehaviors()V

    const/4 p1, 0x1

    .line 554
    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mDisallowInterceptReset:Z

    :cond_0
    return-void
.end method

.method public setFitsSystemWindows(Z)V
    .locals 0

    .line 882
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    .line 883
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->setupForInsets()V

    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 316
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 319
    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eq v1, p1, :cond_1

    .line 320
    iget-object p0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1
    return-void
.end method

.method final setWindowInsets(Lcom/oneplus/support/core/view/WindowInsetsCompat;)Lcom/oneplus/support/core/view/WindowInsetsCompat;
    .locals 3

    .line 346
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mLastInsets:Lcom/oneplus/support/core/view/WindowInsetsCompat;

    invoke-static {v0, p1}, Lcom/oneplus/lib/design/widget/Utils;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 347
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mLastInsets:Lcom/oneplus/support/core/view/WindowInsetsCompat;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 348
    invoke-virtual {p1}, Lcom/oneplus/support/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v2

    if-lez v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mDrawStatusBarBackground:Z

    .line 349
    iget-boolean v2, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mDrawStatusBarBackground:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 352
    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->dispatchApplyWindowInsetsToBehaviors(Lcom/oneplus/support/core/view/WindowInsetsCompat;)Lcom/oneplus/support/core/view/WindowInsetsCompat;

    move-result-object p1

    .line 353
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_2
    return-object p1
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 311
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
