.class Lcom/oneplus/lib/widget/OPListViewCompat$GateKeeperDrawable;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "OPListViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/OPListViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GateKeeperDrawable"
.end annotation


# instance fields
.field private mEnabled:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 353
    invoke-direct {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    .line 354
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/OPListViewCompat$GateKeeperDrawable;->mEnabled:Z

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 371
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/OPListViewCompat$GateKeeperDrawable;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 372
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method setEnabled(Z)V
    .locals 0

    .line 358
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/OPListViewCompat$GateKeeperDrawable;->mEnabled:Z

    return-void
.end method

.method public setHotspot(FF)V
    .locals 1

    .line 378
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/OPListViewCompat$GateKeeperDrawable;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 379
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/DrawableWrapper;->setHotspot(FF)V

    :cond_0
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 1

    .line 385
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/OPListViewCompat$GateKeeperDrawable;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 386
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/DrawableWrapper;->setHotspotBounds(IIII)V

    :cond_0
    return-void
.end method

.method public setState([I)Z
    .locals 1

    .line 363
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/OPListViewCompat$GateKeeperDrawable;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 364
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->setState([I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .line 392
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/OPListViewCompat$GateKeeperDrawable;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 393
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/DrawableWrapper;->setVisible(ZZ)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
