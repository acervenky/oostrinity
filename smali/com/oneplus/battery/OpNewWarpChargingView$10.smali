.class Lcom/oneplus/battery/OpNewWarpChargingView$10;
.super Ljava/lang/Object;
.source "OpNewWarpChargingView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/battery/OpNewWarpChargingView;->getChargeAnimation()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/battery/OpNewWarpChargingView;


# direct methods
.method constructor <init>(Lcom/oneplus/battery/OpNewWarpChargingView;)V
    .locals 0

    .line 555
    iput-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$10;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 566
    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$10;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$1100(Lcom/oneplus/battery/OpNewWarpChargingView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 567
    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView$10;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {p0}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$400(Lcom/oneplus/battery/OpNewWarpChargingView;)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 569
    :cond_0
    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView$10;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    const-string p1, "chargingAnimP2"

    invoke-static {p0, p1}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$300(Lcom/oneplus/battery/OpNewWarpChargingView;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 558
    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView$10;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$202(Lcom/oneplus/battery/OpNewWarpChargingView;I)I

    .line 559
    sget-boolean p0, Lcom/oneplus/battery/OpNewWarpChargingView;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "OpNewWarpChargingView"

    const-string p1, "P2 onAnimationStart()"

    .line 560
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
