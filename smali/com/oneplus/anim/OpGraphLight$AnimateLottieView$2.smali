.class Lcom/oneplus/anim/OpGraphLight$AnimateLottieView$2;
.super Ljava/lang/Object;
.source "OpGraphLight.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->createLottieDrawable()Lcom/airbnb/lottie/LottieDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;


# direct methods
.method constructor <init>(Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;)V
    .locals 0

    .line 692
    iput-object p1, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView$2;->this$1:Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const-string p0, "OpGraphLight"

    const-string p1, "LottieCancel."

    .line 719
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 702
    iget-object p1, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView$2;->this$1:Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

    iget-object p1, p1, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->this$0:Lcom/oneplus/anim/OpGraphLight;

    invoke-static {p1}, Lcom/oneplus/anim/OpGraphLight;->access$1400(Lcom/oneplus/anim/OpGraphLight;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p1

    const-string v0, "OpGraphLight"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView$2;->this$1:Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

    iget-object p1, p1, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->this$0:Lcom/oneplus/anim/OpGraphLight;

    invoke-static {p1}, Lcom/oneplus/anim/OpGraphLight;->access$1400(Lcom/oneplus/anim/OpGraphLight;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getFacelockController()Lcom/oneplus/faceunlock/OpFacelockController;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView$2;->this$1:Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

    iget-object p1, p1, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->this$0:Lcom/oneplus/anim/OpGraphLight;

    .line 703
    invoke-static {p1}, Lcom/oneplus/anim/OpGraphLight;->access$1400(Lcom/oneplus/anim/OpGraphLight;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getFacelockController()Lcom/oneplus/faceunlock/OpFacelockController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->getOpCameraAnimateController()Lcom/oneplus/anim/OpCameraAnimateController;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 704
    iget-object p1, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView$2;->this$1:Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

    iget-object p1, p1, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->this$0:Lcom/oneplus/anim/OpGraphLight;

    invoke-static {p1}, Lcom/oneplus/anim/OpGraphLight;->access$1400(Lcom/oneplus/anim/OpGraphLight;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getFacelockController()Lcom/oneplus/faceunlock/OpFacelockController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->getOpCameraAnimateController()Lcom/oneplus/anim/OpCameraAnimateController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/anim/OpCameraAnimateController;->isFrontCameraAnimOn()Z

    move-result p1

    .line 705
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAnimOn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move p1, v1

    .line 707
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LottieEnd."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView$2;->this$1:Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

    invoke-static {v3}, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->access$1500(Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView$2;->this$1:Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

    invoke-static {v0}, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->access$1500(Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_2

    .line 710
    :cond_1
    iget-object p1, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView$2;->this$1:Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

    invoke-static {p1, v1}, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->access$1502(Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;Z)Z

    .line 712
    iget-object p0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView$2;->this$1:Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

    invoke-static {p0, v1}, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->access$700(Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;Z)V

    :cond_2
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    const-string p0, "OpGraphLight"

    const-string p1, "LottieRepeat."

    .line 724
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const-string p0, "OpGraphLight"

    const-string p1, "LottieStart."

    .line 695
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
