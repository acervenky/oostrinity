.class Lcom/oneplus/lib/preference/PreferenceScreen$SavedState$1;
.super Ljava/lang/Object;
.source "PreferenceScreen.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/preference/PreferenceScreen$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oneplus/lib/preference/PreferenceScreen$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/oneplus/lib/preference/PreferenceScreen$SavedState;
    .locals 0

    .line 295
    new-instance p0, Lcom/oneplus/lib/preference/PreferenceScreen$SavedState;

    invoke-direct {p0, p1}, Lcom/oneplus/lib/preference/PreferenceScreen$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 293
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/PreferenceScreen$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oneplus/lib/preference/PreferenceScreen$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/oneplus/lib/preference/PreferenceScreen$SavedState;
    .locals 0

    .line 299
    new-array p0, p1, [Lcom/oneplus/lib/preference/PreferenceScreen$SavedState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 293
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/PreferenceScreen$SavedState$1;->newArray(I)[Lcom/oneplus/lib/preference/PreferenceScreen$SavedState;

    move-result-object p0

    return-object p0
.end method
