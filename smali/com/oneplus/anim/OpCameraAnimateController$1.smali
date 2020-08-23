.class Lcom/oneplus/anim/OpCameraAnimateController$1;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "OpCameraAnimateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/anim/OpCameraAnimateController;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/anim/OpCameraAnimateController;


# direct methods
.method constructor <init>(Lcom/oneplus/anim/OpCameraAnimateController;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/oneplus/anim/OpCameraAnimateController$1;->this$0:Lcom/oneplus/anim/OpCameraAnimateController;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraAvailable(Ljava/lang/String;)V
    .locals 2

    .line 52
    invoke-super {p0, p1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onCameraAvailable(Ljava/lang/String;)V

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCameraAvailable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpCameraAnimateController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "1"

    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 56
    iget-object p1, p0, Lcom/oneplus/anim/OpCameraAnimateController$1;->this$0:Lcom/oneplus/anim/OpCameraAnimateController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oneplus/anim/OpCameraAnimateController;->access$002(Lcom/oneplus/anim/OpCameraAnimateController;Z)Z

    .line 58
    iget-object p0, p0, Lcom/oneplus/anim/OpCameraAnimateController$1;->this$0:Lcom/oneplus/anim/OpCameraAnimateController;

    invoke-static {p0}, Lcom/oneplus/anim/OpCameraAnimateController;->access$100(Lcom/oneplus/anim/OpCameraAnimateController;)Lcom/oneplus/anim/OpGraphLight;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/anim/OpGraphLight;->stop()V

    :cond_0
    return-void
.end method

.method public onCameraUnavailable(Ljava/lang/String;)V
    .locals 3

    .line 64
    invoke-super {p0, p1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onCameraUnavailable(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/oneplus/anim/OpCameraAnimateController$1;->this$0:Lcom/oneplus/anim/OpCameraAnimateController;

    invoke-static {v0}, Lcom/oneplus/anim/OpCameraAnimateController;->access$200(Lcom/oneplus/anim/OpCameraAnimateController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "one_hand_mode_status"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraUnavailable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", OpUtils.isCutoutHide(mContext):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/anim/OpCameraAnimateController$1;->this$0:Lcom/oneplus/anim/OpCameraAnimateController;

    invoke-static {v2}, Lcom/oneplus/anim/OpCameraAnimateController;->access$200(Lcom/oneplus/anim/OpCameraAnimateController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/util/OpUtils;->isCutoutHide(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", oneHandMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpCameraAnimateController"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "1"

    .line 68
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/anim/OpCameraAnimateController$1;->this$0:Lcom/oneplus/anim/OpCameraAnimateController;

    invoke-static {p1}, Lcom/oneplus/anim/OpCameraAnimateController;->access$200(Lcom/oneplus/anim/OpCameraAnimateController;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/util/OpUtils;->isCutoutHide(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    if-eq v0, p1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/oneplus/anim/OpCameraAnimateController$1;->this$0:Lcom/oneplus/anim/OpCameraAnimateController;

    invoke-static {v0, p1}, Lcom/oneplus/anim/OpCameraAnimateController;->access$002(Lcom/oneplus/anim/OpCameraAnimateController;Z)Z

    .line 73
    iget-object p0, p0, Lcom/oneplus/anim/OpCameraAnimateController$1;->this$0:Lcom/oneplus/anim/OpCameraAnimateController;

    invoke-static {p0}, Lcom/oneplus/anim/OpCameraAnimateController;->access$100(Lcom/oneplus/anim/OpCameraAnimateController;)Lcom/oneplus/anim/OpGraphLight;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/anim/OpGraphLight;->postShow()V

    :cond_0
    return-void
.end method
