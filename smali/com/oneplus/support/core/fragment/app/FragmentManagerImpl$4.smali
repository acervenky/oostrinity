.class Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->completeShowHideFragment(Lcom/oneplus/support/core/fragment/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

.field final synthetic val$animatingView:Landroid/view/View;

.field final synthetic val$container:Landroid/view/ViewGroup;

.field final synthetic val$fragment:Lcom/oneplus/support/core/fragment/app/Fragment;


# direct methods
.method constructor <init>(Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;Landroid/view/ViewGroup;Landroid/view/View;Lcom/oneplus/support/core/fragment/app/Fragment;)V
    .locals 0

    .line 1728
    iput-object p1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$4;->this$0:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    iput-object p2, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$4;->val$container:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$4;->val$animatingView:Landroid/view/View;

    iput-object p4, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$4;->val$fragment:Lcom/oneplus/support/core/fragment/app/Fragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1731
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$4;->val$container:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$4;->val$animatingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 1732
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1733
    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$4;->val$fragment:Lcom/oneplus/support/core/fragment/app/Fragment;

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz p0, :cond_0

    const/16 p1, 0x8

    .line 1734
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
