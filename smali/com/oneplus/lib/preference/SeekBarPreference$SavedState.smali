.class Lcom/oneplus/lib/preference/SeekBarPreference$SavedState;
.super Lcom/oneplus/lib/preference/Preference$BaseSavedState;
.source "SeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/preference/SeekBarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oneplus/lib/preference/SeekBarPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field max:I

.field progress:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 252
    new-instance v0, Lcom/oneplus/lib/preference/SeekBarPreference$SavedState$1;

    invoke-direct {v0}, Lcom/oneplus/lib/preference/SeekBarPreference$SavedState$1;-><init>()V

    sput-object v0, Lcom/oneplus/lib/preference/SeekBarPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 231
    invoke-direct {p0, p1}, Lcom/oneplus/lib/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/preference/SeekBarPreference$SavedState;->progress:I

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/preference/SeekBarPreference$SavedState;->max:I

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 240
    invoke-super {p0, p1, p2}, Landroid/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 243
    iget p2, p0, Lcom/oneplus/lib/preference/SeekBarPreference$SavedState;->progress:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    iget p0, p0, Lcom/oneplus/lib/preference/SeekBarPreference$SavedState;->max:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method