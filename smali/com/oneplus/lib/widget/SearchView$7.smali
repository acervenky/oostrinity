.class Lcom/oneplus/lib/widget/SearchView$7;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/SearchView;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/SearchView;)V
    .locals 0

    .line 1000
    iput-object p1, p0, Lcom/oneplus/lib/widget/SearchView$7;->this$0:Lcom/oneplus/lib/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1003
    iget-object p0, p0, Lcom/oneplus/lib/widget/SearchView$7;->this$0:Lcom/oneplus/lib/widget/SearchView;

    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 1004
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->onSearchClicked()V

    goto :goto_0

    .line 1005
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 1006
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->onCloseClicked()V

    goto :goto_0

    .line 1007
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    .line 1008
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->onSubmitQuery()V

    goto :goto_0

    .line 1009
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_3

    .line 1010
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->onVoiceClicked()V

    goto :goto_0

    .line 1011
    :cond_3
    iget-object v0, p0, Lcom/oneplus/lib/widget/SearchView;->mSearchSrcTextView:Lcom/oneplus/lib/widget/SearchView$SearchAutoComplete;

    if-ne p1, v0, :cond_4

    .line 1012
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SearchView;->forceSuggestionQuery()V

    :cond_4
    :goto_0
    return-void
.end method
