.class Lcom/oneplus/support/viewpager/widget/ViewPager$MyAccessibilityDelegate;
.super Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/viewpager/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/support/viewpager/widget/ViewPager;


# direct methods
.method constructor <init>(Lcom/oneplus/support/viewpager/widget/ViewPager;)V
    .locals 0

    .line 3045
    iput-object p1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/oneplus/support/viewpager/widget/ViewPager;

    invoke-direct {p0}, Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method

.method private canScroll()Z
    .locals 1

    .line 3095
    iget-object p0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/oneplus/support/viewpager/widget/ViewPager;

    iget-object p0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapter:Lcom/oneplus/support/viewpager/widget/PagerAdapter;

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/PagerAdapter;->getCount()I

    move-result p0

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 3049
    invoke-super {p0, p1, p2}, Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3050
    const-class p1, Lcom/oneplus/support/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 3051
    invoke-direct {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager$MyAccessibilityDelegate;->canScroll()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 3052
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p1

    const/16 v0, 0x1000

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/oneplus/support/viewpager/widget/ViewPager;

    iget-object p1, p1, Lcom/oneplus/support/viewpager/widget/ViewPager;->mAdapter:Lcom/oneplus/support/viewpager/widget/PagerAdapter;

    if-eqz p1, :cond_0

    .line 3053
    invoke-virtual {p1}, Lcom/oneplus/support/viewpager/widget/PagerAdapter;->getCount()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 3054
    iget-object p1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/oneplus/support/viewpager/widget/ViewPager;

    iget p1, p1, Lcom/oneplus/support/viewpager/widget/ViewPager;->mCurItem:I

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 3055
    iget-object p0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/oneplus/support/viewpager/widget/ViewPager;

    iget p0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mCurItem:I

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1

    .line 3061
    invoke-super {p0, p1, p2}, Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 3062
    const-class p1, Lcom/oneplus/support/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 3063
    invoke-direct {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager$MyAccessibilityDelegate;->canScroll()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 3064
    iget-object p1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/oneplus/support/viewpager/widget/ViewPager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1000

    .line 3065
    invoke-virtual {p2, p1}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 3067
    :cond_0
    iget-object p0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/oneplus/support/viewpager/widget/ViewPager;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/oneplus/support/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x2000

    .line 3068
    invoke-virtual {p2, p0}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    :cond_1
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 3074
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    return p3

    :cond_0
    const/16 p1, 0x1000

    const/4 v0, 0x0

    if-eq p2, p1, :cond_3

    const/16 p1, 0x2000

    if-eq p2, p1, :cond_1

    return v0

    .line 3085
    :cond_1
    iget-object p1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/oneplus/support/viewpager/widget/ViewPager;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/oneplus/support/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3086
    iget-object p0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/oneplus/support/viewpager/widget/ViewPager;

    iget p1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mCurItem:I

    sub-int/2addr p1, p3

    invoke-virtual {p0, p1}, Lcom/oneplus/support/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return p3

    :cond_2
    return v0

    .line 3079
    :cond_3
    iget-object p1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/oneplus/support/viewpager/widget/ViewPager;

    invoke-virtual {p1, p3}, Lcom/oneplus/support/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3080
    iget-object p0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/oneplus/support/viewpager/widget/ViewPager;

    iget p1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager;->mCurItem:I

    add-int/2addr p1, p3

    invoke-virtual {p0, p1}, Lcom/oneplus/support/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return p3

    :cond_4
    return v0
.end method