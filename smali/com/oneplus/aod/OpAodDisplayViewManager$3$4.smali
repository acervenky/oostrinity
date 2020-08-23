.class Lcom/oneplus/aod/OpAodDisplayViewManager$3$4;
.super Ljava/lang/Object;
.source "OpAodDisplayViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/OpAodDisplayViewManager$3;->onScreenTurnedOn()V
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

    .line 467
    iput-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$3$4;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 470
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$3$4;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$3;

    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$3;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$300(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpClockViewCtrl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/aod/OpClockViewCtrl;->onScreenTurnedOn()V

    return-void
.end method
