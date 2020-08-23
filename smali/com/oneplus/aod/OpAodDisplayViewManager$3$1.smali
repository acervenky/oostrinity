.class Lcom/oneplus/aod/OpAodDisplayViewManager$3$1;
.super Ljava/lang/Object;
.source "OpAodDisplayViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/OpAodDisplayViewManager$3;->onTimeChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$3;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/OpAodDisplayViewManager$3;)V
    .locals 0

    .line 420
    iput-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$3$1;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$3$1;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$3;

    iget-object v0, v0, Lcom/oneplus/aod/OpAodDisplayViewManager$3;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$300(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpClockViewCtrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/OpClockViewCtrl;->onTimeChanged()V

    .line 424
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$3$1;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$3;

    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$3;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$400(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/slice/OpSliceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/aod/slice/OpSliceManager;->onTimeChanged()V

    return-void
.end method
