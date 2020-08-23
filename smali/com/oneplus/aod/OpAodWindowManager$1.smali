.class Lcom/oneplus/aod/OpAodWindowManager$1;
.super Landroid/os/Handler;
.source "OpAodWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/OpAodWindowManager;->initHandler(Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/OpAodWindowManager;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/OpAodWindowManager;Landroid/os/Looper;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/oneplus/aod/OpAodWindowManager$1;->this$0:Lcom/oneplus/aod/OpAodWindowManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 93
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    iget-object p0, p0, Lcom/oneplus/aod/OpAodWindowManager$1;->this$0:Lcom/oneplus/aod/OpAodWindowManager;

    invoke-static {p0}, Lcom/oneplus/aod/OpAodWindowManager;->access$100(Lcom/oneplus/aod/OpAodWindowManager;)V

    goto :goto_0

    .line 95
    :cond_1
    iget-object p0, p0, Lcom/oneplus/aod/OpAodWindowManager$1;->this$0:Lcom/oneplus/aod/OpAodWindowManager;

    invoke-static {p0}, Lcom/oneplus/aod/OpAodWindowManager;->access$000(Lcom/oneplus/aod/OpAodWindowManager;)V

    :goto_0
    return-void
.end method
