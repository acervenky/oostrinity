.class Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;
.super Landroid/view/IDockedStackListener$Stub;
.source "Divider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/Divider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DockDividerVisibilityListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/Divider;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/Divider;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-direct {p0}, Landroid/view/IDockedStackListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAdjustedForImeChanged$0$Divider$DockDividerVisibilityListener(ZJ)V
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->access$900(Lcom/android/systemui/stackdivider/Divider;)Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 252
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0, p1}, Lcom/android/systemui/stackdivider/Divider;->access$902(Lcom/android/systemui/stackdivider/Divider;Z)Z

    .line 253
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->access$400(Lcom/android/systemui/stackdivider/Divider;)V

    .line 254
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->access$200(Lcom/android/systemui/stackdivider/Divider;)Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {p0}, Lcom/android/systemui/stackdivider/Divider;->access$100(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/stackdivider/DividerView;->setAdjustedForIme(ZJ)V

    goto :goto_0

    .line 258
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {p0}, Lcom/android/systemui/stackdivider/Divider;->access$100(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/stackdivider/DividerView;->setAdjustedForIme(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$onDockSideChanged$1$Divider$DockDividerVisibilityListener(I)V
    .locals 0

    .line 267
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {p0}, Lcom/android/systemui/stackdivider/Divider;->access$100(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/stackdivider/DividerView;->notifyDockSideChanged(I)V

    return-void
.end method

.method public onAdjustedForImeChanged(ZJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->access$100(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/-$$Lambda$Divider$DockDividerVisibilityListener$fZDE4rhC5s3QEgR-7YXeKi_feiY;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/stackdivider/-$$Lambda$Divider$DockDividerVisibilityListener$fZDE4rhC5s3QEgR-7YXeKi_feiY;-><init>(Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;ZJ)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDividerVisibilityChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 232
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {p0, p1}, Lcom/android/systemui/stackdivider/Divider;->access$600(Lcom/android/systemui/stackdivider/Divider;Z)V

    return-void
.end method

.method public onDockSideChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->access$100(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/-$$Lambda$Divider$DockDividerVisibilityListener$cPiHgQdgCDQeKAQTEdGGnGaaM_c;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/stackdivider/-$$Lambda$Divider$DockDividerVisibilityListener$cPiHgQdgCDQeKAQTEdGGnGaaM_c;-><init>(Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;I)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDockedStackExistsChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 237
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {p0, p1}, Lcom/android/systemui/stackdivider/Divider;->access$700(Lcom/android/systemui/stackdivider/Divider;Z)V

    return-void
.end method

.method public onDockedStackMinimizedChanged(ZJZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0, p4}, Lcom/android/systemui/stackdivider/Divider;->access$302(Lcom/android/systemui/stackdivider/Divider;Z)Z

    .line 244
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/systemui/stackdivider/Divider;->access$800(Lcom/android/systemui/stackdivider/Divider;ZJZ)V

    return-void
.end method
