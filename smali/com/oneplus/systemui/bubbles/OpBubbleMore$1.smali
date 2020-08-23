.class Lcom/oneplus/systemui/bubbles/OpBubbleMore$1;
.super Landroid/view/ViewOutlineProvider;
.source "OpBubbleMore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/systemui/bubbles/OpBubbleMore;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/bubbles/OpBubbleMore;

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/bubbles/OpBubbleMore;I)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/oneplus/systemui/bubbles/OpBubbleMore$1;->this$0:Lcom/oneplus/systemui/bubbles/OpBubbleMore;

    iput p2, p0, Lcom/oneplus/systemui/bubbles/OpBubbleMore$1;->val$size:I

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 0

    .line 25
    iget p0, p0, Lcom/oneplus/systemui/bubbles/OpBubbleMore$1;->val$size:I

    const/4 p1, 0x0

    invoke-virtual {p2, p1, p1, p0, p0}, Landroid/graphics/Outline;->setOval(IIII)V

    return-void
.end method
