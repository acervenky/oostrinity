.class Lcom/android/systemui/ScreenDecorations$4;
.super Ljava/lang/Object;
.source "ScreenDecorations.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/ScreenDecorations;->setupDecorations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/ScreenDecorations;


# direct methods
.method constructor <init>(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0

    .line 560
    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$4;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 565
    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations$4;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {p1}, Lcom/android/systemui/ScreenDecorations;->access$700(Lcom/android/systemui/ScreenDecorations;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 566
    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations$4;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {p1}, Lcom/android/systemui/ScreenDecorations;->access$700(Lcom/android/systemui/ScreenDecorations;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    .line 567
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p3, 0x3e8

    .line 568
    invoke-virtual {p1, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 569
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 570
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$4;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {p0}, Lcom/android/systemui/ScreenDecorations;->access$800(Lcom/android/systemui/ScreenDecorations;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 571
    invoke-virtual {p0, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 572
    invoke-virtual {p0, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 573
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
