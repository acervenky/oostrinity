.class Lcom/oneplus/aod/OpAodDisplayViewManager$3$3;
.super Ljava/lang/Object;
.source "OpAodDisplayViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/OpAodDisplayViewManager$3;->onUserInfoChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$3;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/oneplus/aod/OpAodDisplayViewManager$3;I)V
    .locals 0

    .line 450
    iput-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$3$3;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$3;

    iput p2, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$3$3;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$3$3;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$3;

    iget-object v0, v0, Lcom/oneplus/aod/OpAodDisplayViewManager$3;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$300(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpClockViewCtrl;

    move-result-object v0

    iget p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$3$3;->val$userId:I

    invoke-virtual {v0, p0}, Lcom/oneplus/aod/OpClockViewCtrl;->onUserInfoChanged(I)V

    return-void
.end method
