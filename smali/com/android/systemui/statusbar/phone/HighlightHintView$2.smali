.class Lcom/android/systemui/statusbar/phone/HighlightHintView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HighlightHintView.java"


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

    .line 339
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView$2;->this$0:Lcom/android/systemui/statusbar/phone/HighlightHintView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 342
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 344
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView$2;->this$0:Lcom/android/systemui/statusbar/phone/HighlightHintView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->access$100(Lcom/android/systemui/statusbar/phone/HighlightHintView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView$2;->this$0:Lcom/android/systemui/statusbar/phone/HighlightHintView;

    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/HighlightHintView;->breathingAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->access$200(Lcom/android/systemui/statusbar/phone/HighlightHintView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 346
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView$2;->this$0:Lcom/android/systemui/statusbar/phone/HighlightHintView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->breathingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 347
    invoke-static {}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->access$300()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "HighlightHintView"

    const-string p1, "playBreathingAnimation, onAnimationEnd: Restart breathing animation"

    .line 348
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
