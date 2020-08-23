.class public Lcom/oneplus/systemui/bubbles/OpBubbleMore;
.super Landroid/widget/FrameLayout;
.source "OpBubbleMore.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 16
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$layout;->op_bubble_more:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 19
    sget p1, Lcom/android/systemui/R$id;->op_bubble_more:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 20
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->individual_bubble_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 22
    new-instance v1, Lcom/oneplus/systemui/bubbles/OpBubbleMore$1;

    invoke-direct {v1, p0, v0}, Lcom/oneplus/systemui/bubbles/OpBubbleMore$1;-><init>(Lcom/oneplus/systemui/bubbles/OpBubbleMore;I)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 p0, 0x0

    .line 28
    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setClipToOutline(Z)V

    return-void
.end method
