.class Lcom/oneplus/lib/widget/actionbar/Toolbar$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/actionbar/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oneplus/lib/widget/actionbar/Toolbar$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public expandedMenuItemId:I

.field public isOverflowOpen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2414
    new-instance v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$SavedState$1;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar$SavedState$1;-><init>()V

    sput-object v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2398
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 2399
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$SavedState;->expandedMenuItemId:I

    .line 2400
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$SavedState;->isOverflowOpen:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 2404
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 2409
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2410
    iget p2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$SavedState;->expandedMenuItemId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2411
    iget-boolean p0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$SavedState;->isOverflowOpen:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
