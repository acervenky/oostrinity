.class Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;
.super Landroid/view/IPinnedStackListener$Stub;
.source "PipManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/tv/PipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PinnedStackListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/tv/PipManager;


# direct methods
.method private constructor <init>(Lcom/android/systemui/pip/tv/PipManager;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-direct {p0}, Landroid/view/IPinnedStackListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/pip/tv/PipManager;Lcom/android/systemui/pip/tv/PipManager$1;)V
    .locals 0

    .line 184
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;-><init>(Lcom/android/systemui/pip/tv/PipManager;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onActionsChanged$1$PipManager$PinnedStackListener()V
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipManager;->access$1000(Lcom/android/systemui/pip/tv/PipManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 227
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v1}, Lcom/android/systemui/pip/tv/PipManager;->access$1000(Lcom/android/systemui/pip/tv/PipManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/pip/tv/PipManager$Listener;

    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v2}, Lcom/android/systemui/pip/tv/PipManager;->access$900(Lcom/android/systemui/pip/tv/PipManager;)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/systemui/pip/tv/PipManager$Listener;->onPipMenuActionsChanged(Landroid/content/pm/ParceledListSlice;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic lambda$onMovementBoundsChanged$0$PipManager$PinnedStackListener(Landroid/graphics/Rect;)V
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {p0}, Lcom/android/systemui/pip/tv/PipManager;->access$1100(Lcom/android/systemui/pip/tv/PipManager;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onActionsChanged(Landroid/content/pm/ParceledListSlice;)V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v0, p1}, Lcom/android/systemui/pip/tv/PipManager;->access$902(Lcom/android/systemui/pip/tv/PipManager;Landroid/content/pm/ParceledListSlice;)Landroid/content/pm/ParceledListSlice;

    .line 225
    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {p1}, Lcom/android/systemui/pip/tv/PipManager;->access$800(Lcom/android/systemui/pip/tv/PipManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/pip/tv/-$$Lambda$PipManager$PinnedStackListener$KRSqnvGtvsFkEwCqcSExZLuYv1k;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/tv/-$$Lambda$PipManager$PinnedStackListener$KRSqnvGtvsFkEwCqcSExZLuYv1k;-><init>(Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onImeVisibilityChanged(ZI)V
    .locals 4

    .line 191
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipManager;->access$400(Lcom/android/systemui/pip/tv/PipManager;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 192
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipManager;->access$500(Lcom/android/systemui/pip/tv/PipManager;)Z

    move-result v0

    if-eq v0, p1, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 195
    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v2}, Lcom/android/systemui/pip/tv/PipManager;->access$600(Lcom/android/systemui/pip/tv/PipManager;)Landroid/graphics/Rect;

    move-result-object v2

    neg-int v3, p2

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 196
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v0, p2}, Lcom/android/systemui/pip/tv/PipManager;->access$702(Lcom/android/systemui/pip/tv/PipManager;I)I

    goto :goto_0

    .line 199
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {p2}, Lcom/android/systemui/pip/tv/PipManager;->access$600(Lcom/android/systemui/pip/tv/PipManager;)Landroid/graphics/Rect;

    move-result-object p2

    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v2}, Lcom/android/systemui/pip/tv/PipManager;->access$700(Lcom/android/systemui/pip/tv/PipManager;)I

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 201
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {p2, p1}, Lcom/android/systemui/pip/tv/PipManager;->access$502(Lcom/android/systemui/pip/tv/PipManager;Z)Z

    .line 202
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-virtual {p0, v1}, Lcom/android/systemui/pip/tv/PipManager;->resizePinnedStack(I)V

    :cond_1
    return-void
.end method

.method public onListenerRegistered(Landroid/view/IPinnedStackController;)V
    .locals 0

    return-void
.end method

.method public onMinimizedStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onMovementBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZI)V
    .locals 0

    .line 217
    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {p1}, Lcom/android/systemui/pip/tv/PipManager;->access$800(Lcom/android/systemui/pip/tv/PipManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance p3, Lcom/android/systemui/pip/tv/-$$Lambda$PipManager$PinnedStackListener$_5-G38rv0jyzaZL9eAwuaWlTGU4;

    invoke-direct {p3, p0, p2}, Lcom/android/systemui/pip/tv/-$$Lambda$PipManager$PinnedStackListener$_5-G38rv0jyzaZL9eAwuaWlTGU4;-><init>(Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;Landroid/graphics/Rect;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onShelfVisibilityChanged(ZI)V
    .locals 0

    return-void
.end method
