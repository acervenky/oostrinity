.class Lcom/oneplus/anim/OpGraphLight$AnimateImageView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OpGraphLight.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/anim/OpGraphLight$AnimateImageView;-><init>(Lcom/oneplus/anim/OpGraphLight;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCancelled:Z

.field final synthetic this$1:Lcom/oneplus/anim/OpGraphLight$AnimateImageView;

.field final synthetic val$this$0:Lcom/oneplus/anim/OpGraphLight;


# direct methods
.method constructor <init>(Lcom/oneplus/anim/OpGraphLight$AnimateImageView;Lcom/oneplus/anim/OpGraphLight;)V
    .locals 0

    .line 541
    iput-object p1, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView$3;->this$1:Lcom/oneplus/anim/OpGraphLight$AnimateImageView;

    iput-object p2, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView$3;->val$this$0:Lcom/oneplus/anim/OpGraphLight;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 551
    iput-boolean p1, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView$3;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 556
    iget-boolean p1, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView$3;->mCancelled:Z

    if-nez p1, :cond_0

    const-string p1, "OpGraphLight"

    const-string v0, "onAnimationEnd & !mCancelled"

    .line 557
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object p1, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView$3;->this$1:Lcom/oneplus/anim/OpGraphLight$AnimateImageView;

    invoke-virtual {p1}, Lcom/oneplus/anim/OpGraphLight$FrontCameraAnimateBaseImageView;->relaseAnimationList()V

    .line 559
    iget-object p0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView$3;->this$1:Lcom/oneplus/anim/OpGraphLight$AnimateImageView;

    iget-object p0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->this$0:Lcom/oneplus/anim/OpGraphLight;

    invoke-static {p0}, Lcom/oneplus/anim/OpGraphLight;->access$900(Lcom/oneplus/anim/OpGraphLight;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x0

    .line 546
    iput-boolean p1, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView$3;->mCancelled:Z

    return-void
.end method
