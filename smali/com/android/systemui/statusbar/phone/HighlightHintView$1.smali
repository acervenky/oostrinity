.class Lcom/android/systemui/statusbar/phone/HighlightHintView$1;
.super Ljava/lang/Object;
.source "HighlightHintView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/HighlightHintView;->playBreathingAnimation(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/HighlightHintView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/HighlightHintView;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView$1;->this$0:Lcom/android/systemui/statusbar/phone/HighlightHintView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView$1;->this$0:Lcom/android/systemui/statusbar/phone/HighlightHintView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->access$002(Lcom/android/systemui/statusbar/phone/HighlightHintView;I)I

    .line 324
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView$1;->this$0:Lcom/android/systemui/statusbar/phone/HighlightHintView;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->access$000(Lcom/android/systemui/statusbar/phone/HighlightHintView;)I

    move-result p0

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method
