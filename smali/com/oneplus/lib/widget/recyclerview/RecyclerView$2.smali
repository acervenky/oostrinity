.class Lcom/oneplus/lib/widget/recyclerview/RecyclerView$2;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->runPendingAnimations()V

    .line 385
    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$502(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Z)Z

    return-void
.end method
