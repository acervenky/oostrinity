.class Lcom/oneplus/aod/OpAodDisplayViewManager$3$2;
.super Ljava/lang/Object;
.source "OpAodDisplayViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/OpAodDisplayViewManager$3;->onUserSwitchComplete(I)V
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

    .line 431
    iput-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$3$2;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$3;

    iput p2, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$3$2;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 435
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$3$2;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$3;

    iget-object v0, v0, Lcom/oneplus/aod/OpAodDisplayViewManager$3;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$300(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpClockViewCtrl;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$3$2;->val$userId:I

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/OpClockViewCtrl;->onUserSwitchComplete(I)V

    .line 436
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$3$2;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$3;

    iget-object v0, v0, Lcom/oneplus/aod/OpAodDisplayViewManager$3;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$500(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpAodMain;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$3$2;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$3;

    iget-object v1, v1, Lcom/oneplus/aod/OpAodDisplayViewManager$3;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v1}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$300(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpClockViewCtrl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/aod/OpClockViewCtrl;->getClockStyle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/OpAodMain;->setClockStyle(I)V

    .line 437
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$3$2;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$3;

    iget-object v0, v0, Lcom/oneplus/aod/OpAodDisplayViewManager$3;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$500(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpAodMain;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$3$2;->val$userId:I

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/OpAodMain;->onUserSwitchComplete(I)V

    .line 440
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$3$2;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$3;

    iget-object v0, v0, Lcom/oneplus/aod/OpAodDisplayViewManager$3;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$600(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpAodNotificationIconAreaController;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$3$2;->val$userId:I

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->onUserSwitchComplete(I)V

    .line 442
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$3$2;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$3;

    iget-object v0, v0, Lcom/oneplus/aod/OpAodDisplayViewManager$3;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$400(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/slice/OpSliceManager;

    move-result-object v0

    iget p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$3$2;->val$userId:I

    invoke-virtual {v0, p0}, Lcom/oneplus/aod/slice/OpSliceManager;->onUserSwitchComplete(I)V

    return-void
.end method
