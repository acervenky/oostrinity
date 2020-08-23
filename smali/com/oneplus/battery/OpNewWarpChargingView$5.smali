.class Lcom/oneplus/battery/OpNewWarpChargingView$5;
.super Ljava/lang/Object;
.source "OpNewWarpChargingView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    .line 443
    iput-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$5;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8

    .line 446
    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView$5;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {v0}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$000(Lcom/oneplus/battery/OpNewWarpChargingView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$5;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    iget-object v1, v1, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimationAssets:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 449
    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$5;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    .line 450
    invoke-static {p1}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$400(Lcom/oneplus/battery/OpNewWarpChargingView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getTotalDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    mul-long/2addr v0, v2

    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$5;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    .line 451
    invoke-static {p1}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$400(Lcom/oneplus/battery/OpNewWarpChargingView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v2

    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$5;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    .line 452
    invoke-static {p1}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$400(Lcom/oneplus/battery/OpNewWarpChargingView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getTotalDuration()J

    move-result-wide v4

    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$5;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$500(Lcom/oneplus/battery/OpNewWarpChargingView;)I

    move-result p1

    int-to-long v6, p1

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    sub-long/2addr v0, v2

    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$5;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    iget-object p1, p1, Lcom/oneplus/battery/OpNewWarpChargingView;->mWarpAnimationAssets:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    mul-int/lit8 p1, p1, 0x20

    int-to-long v2, p1

    cmp-long p1, v0, v2

    const/4 v0, 0x1

    if-lez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 454
    :goto_0
    sget-boolean v1, Lcom/oneplus/battery/OpNewWarpChargingView;->DEBUG:Z

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$5;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {v1}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$600(Lcom/oneplus/battery/OpNewWarpChargingView;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 455
    iget-object v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$5;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {v1, v0}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$602(Lcom/oneplus/battery/OpNewWarpChargingView;Z)Z

    const-string v0, "OpNewWarpChargingView"

    const-string v1, "Not enough time to play the warp animation."

    .line 456
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_1
    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView$5;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {v0}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$700(Lcom/oneplus/battery/OpNewWarpChargingView;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 461
    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$5;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$800(Lcom/oneplus/battery/OpNewWarpChargingView;)Landroid/animation/AnimatorSet;

    move-result-object p1

    if-nez p1, :cond_2

    .line 462
    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$5;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$900(Lcom/oneplus/battery/OpNewWarpChargingView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$802(Lcom/oneplus/battery/OpNewWarpChargingView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 465
    :cond_2
    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$5;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$600(Lcom/oneplus/battery/OpNewWarpChargingView;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$5;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$400(Lcom/oneplus/battery/OpNewWarpChargingView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 466
    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$5;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$800(Lcom/oneplus/battery/OpNewWarpChargingView;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 467
    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView$5;->this$0:Lcom/oneplus/battery/OpNewWarpChargingView;

    invoke-static {p0}, Lcom/oneplus/battery/OpNewWarpChargingView;->access$800(Lcom/oneplus/battery/OpNewWarpChargingView;)Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_3
    return-void
.end method
