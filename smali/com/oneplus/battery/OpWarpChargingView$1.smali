.class Lcom/oneplus/battery/OpWarpChargingView$1;
.super Ljava/lang/Object;
.source "OpWarpChargingView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/battery/OpWarpChargingView;->getWarpFastChargeAnimation()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/battery/OpWarpChargingView;


# direct methods
.method constructor <init>(Lcom/oneplus/battery/OpWarpChargingView;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/oneplus/battery/OpWarpChargingView$1;->this$0:Lcom/oneplus/battery/OpWarpChargingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/oneplus/battery/OpWarpChargingView$1;->this$0:Lcom/oneplus/battery/OpWarpChargingView;

    invoke-static {v0}, Lcom/oneplus/battery/OpWarpChargingView;->access$000(Lcom/oneplus/battery/OpWarpChargingView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/battery/OpWarpChargingView$1;->this$0:Lcom/oneplus/battery/OpWarpChargingView;

    iget-object p0, p0, Lcom/oneplus/battery/OpWarpChargingView;->mStartAnimationAssets1:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
