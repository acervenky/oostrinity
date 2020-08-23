.class Lcom/oneplus/anim/OpGraphLight$AnimateLottieView$1;
.super Ljava/lang/Object;
.source "OpGraphLight.java"

# interfaces
.implements Lcom/airbnb/lottie/OnCompositionLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->loadAndPlay(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

.field final synthetic val$showLastFrame:Z


# direct methods
.method constructor <init>(Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;Z)V
    .locals 0

    .line 643
    iput-object p1, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView$1;->this$1:Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

    iput-boolean p2, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView$1;->val$showLastFrame:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompositionLoaded(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 2

    .line 647
    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView$1;->this$1:Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

    invoke-static {v0}, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->access$1100(Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;)Lcom/airbnb/lottie/LottieDrawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 652
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadAndPlay"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView$1;->val$showLastFrame:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpGraphLight"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView$1;->this$1:Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

    invoke-static {v0}, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->access$1100(Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;)Lcom/airbnb/lottie/LottieDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setComposition(Lcom/airbnb/lottie/LottieComposition;)Z

    .line 654
    iget-boolean p1, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView$1;->val$showLastFrame:Z

    if-eqz p1, :cond_1

    .line 655
    iget-object p1, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView$1;->this$1:Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

    invoke-static {p1}, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->access$1100(Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;)Lcom/airbnb/lottie/LottieDrawable;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieDrawable;->setProgress(F)V

    .line 657
    :cond_1
    iget-object p1, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView$1;->this$1:Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

    invoke-static {p1}, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->access$1300(Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->access$1202(Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;I)I

    .line 659
    iget-object p0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView$1;->this$1:Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

    invoke-static {p0}, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->access$1100(Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;)Lcom/airbnb/lottie/LottieDrawable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->playAnimation()V

    return-void
.end method
