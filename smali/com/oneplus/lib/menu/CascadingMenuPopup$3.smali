.class Lcom/oneplus/lib/menu/CascadingMenuPopup$3;
.super Ljava/lang/Object;
.source "CascadingMenuPopup.java"

# interfaces
.implements Lcom/oneplus/lib/menu/MenuItemHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/menu/CascadingMenuPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/menu/CascadingMenuPopup;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/menu/CascadingMenuPopup;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup$3;->this$0:Lcom/oneplus/lib/menu/CascadingMenuPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemHoverEnter(Lcom/oneplus/lib/menu/MenuBuilder;Landroid/view/MenuItem;)V
    .locals 5

    .line 120
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup$3;->this$0:Lcom/oneplus/lib/menu/CascadingMenuPopup;

    iget-object v0, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mSubMenuHoverHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup$3;->this$0:Lcom/oneplus/lib/menu/CascadingMenuPopup;

    iget-object v0, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-ge v2, v0, :cond_1

    .line 125
    iget-object v4, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup$3;->this$0:Lcom/oneplus/lib/menu/CascadingMenuPopup;

    iget-object v4, v4, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v4, v4, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-ne p1, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_1
    if-ne v2, v3, :cond_2

    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 137
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup$3;->this$0:Lcom/oneplus/lib/menu/CascadingMenuPopup;

    iget-object v0, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 138
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup$3;->this$0:Lcom/oneplus/lib/menu/CascadingMenuPopup;

    iget-object v0, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 143
    :cond_3
    new-instance v0, Lcom/oneplus/lib/menu/CascadingMenuPopup$3$1;

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/oneplus/lib/menu/CascadingMenuPopup$3$1;-><init>(Lcom/oneplus/lib/menu/CascadingMenuPopup$3;Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;Landroid/view/MenuItem;Lcom/oneplus/lib/menu/MenuBuilder;)V

    .line 162
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0xc8

    add-long/2addr v1, v3

    .line 163
    iget-object p0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup$3;->this$0:Lcom/oneplus/lib/menu/CascadingMenuPopup;

    iget-object p0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mSubMenuHoverHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public onItemHoverExit(Lcom/oneplus/lib/menu/MenuBuilder;Landroid/view/MenuItem;)V
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup$3;->this$0:Lcom/oneplus/lib/menu/CascadingMenuPopup;

    iget-object p0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mSubMenuHoverHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method