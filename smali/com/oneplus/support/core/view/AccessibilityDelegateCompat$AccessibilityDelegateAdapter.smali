.class final Lcom/oneplus/support/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;
.super Landroid/view/View$AccessibilityDelegate;
.source "AccessibilityDelegateCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AccessibilityDelegateAdapter"
.end annotation


# instance fields
.field private final mCompat:Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;


# direct methods
.method constructor <init>(Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/oneplus/support/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;->mCompat:Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/oneplus/support/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;->mCompat:Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/oneplus/support/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;->mCompat:Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;

    .line 99
    invoke-virtual {p0, p1}, Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;->getAccessibilityNodeProvider(Landroid/view/View;)Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeProviderCompat;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeProviderCompat;->getProvider()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityNodeProvider;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/oneplus/support/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;->mCompat:Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/oneplus/support/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;->mCompat:Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;

    .line 71
    invoke-static {p2}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p2

    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/oneplus/support/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;->mCompat:Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/oneplus/support/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;->mCompat:Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/oneplus/support/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;->mCompat:Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/oneplus/support/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;->mCompat:Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;->sendAccessibilityEvent(Landroid/view/View;I)V

    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/oneplus/support/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;->mCompat:Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
