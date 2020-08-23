.class Lcom/oneplus/battery/OpNewWarpChargingView$6;
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

    .line 474
    iput-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$6;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 492
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "P3 onAnimationEnd() repeatCount "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView$6;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {v0}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$500(Lcom/oneplus/battery/OpNewWarpChargingView;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mIsWarpAnimRunning "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView$6;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {v0}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$600(Lcom/oneplus/battery/OpNewWarpChargingView;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mIsAnimationPlaying "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView$6;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {v0}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$1100(Lcom/oneplus/battery/OpNewWarpChargingView;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpNewWarpChargingView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$6;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$1100(Lcom/oneplus/battery/OpNewWarpChargingView;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$6;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$500(Lcom/oneplus/battery/OpNewWarpChargingView;)I

    move-result p1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$6;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$600(Lcom/oneplus/battery/OpNewWarpChargingView;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$6;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    .line 494
    invoke-static {p1}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$500(Lcom/oneplus/battery/OpNewWarpChargingView;)I

    move-result p1

    if-ge p1, v0, :cond_2

    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$6;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$800(Lcom/oneplus/battery/OpNewWarpChargingView;)Landroid/animation/AnimatorSet;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$6;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$800(Lcom/oneplus/battery/OpNewWarpChargingView;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 495
    :cond_1
    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$6;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$512(Lcom/oneplus/battery/OpNewWarpChargingView;I)I

    .line 496
    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView$6;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {p0}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$400(Lcom/oneplus/battery/OpNewWarpChargingView;)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 497
    :cond_2
    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$6;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$1100(Lcom/oneplus/battery/OpNewWarpChargingView;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 498
    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView$6;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {p0}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$1200(Lcom/oneplus/battery/OpNewWarpChargingView;)Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 499
    :cond_3
    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$6;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$1100(Lcom/oneplus/battery/OpNewWarpChargingView;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 500
    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView$6;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    const-string p1, "chargingAnimP3"

    invoke-static {p0, p1}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$300(Lcom/oneplus/battery/OpNewWarpChargingView;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 477
    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$6;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$202(Lcom/oneplus/battery/OpNewWarpChargingView;I)I

    .line 478
    sget-boolean p1, Lcom/oneplus/battery/OpNewWarpChargingView;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 479
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P3 onAnimationStart() repeatCount "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$6;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {v1}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$500(Lcom/oneplus/battery/OpNewWarpChargingView;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OpNewWarpChargingView"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_0
    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$6;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$500(Lcom/oneplus/battery/OpNewWarpChargingView;)I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 484
    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$6;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$1000(Lcom/oneplus/battery/OpNewWarpChargingView;)Lcom/oneplus/battery/OpChargingAnimationController;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 485
    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView$6;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {p0}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$1000(Lcom/oneplus/battery/OpNewWarpChargingView;)Lcom/oneplus/battery/OpChargingAnimationController;

    move-result-object p0

    const/16 p1, 0x67

    invoke-interface {p0, p1}, Lcom/oneplus/battery/OpChargingAnimationController;->animationStart(I)V

    :cond_1
    return-void
.end method
