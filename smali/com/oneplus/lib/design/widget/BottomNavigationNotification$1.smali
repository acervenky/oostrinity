.class Lcom/oneplus/lib/design/widget/BottomNavigationNotification$1;
.super Ljava/lang/Object;
.source "BottomNavigationNotification.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/design/widget/BottomNavigationNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oneplus/lib/design/widget/BottomNavigationNotification;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/oneplus/lib/design/widget/BottomNavigationNotification;
    .locals 1

    .line 125
    new-instance p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;-><init>(Landroid/os/Parcel;Lcom/oneplus/lib/design/widget/BottomNavigationNotification$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 122
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationNotification$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oneplus/lib/design/widget/BottomNavigationNotification;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/oneplus/lib/design/widget/BottomNavigationNotification;
    .locals 0

    .line 130
    new-array p0, p1, [Lcom/oneplus/lib/design/widget/BottomNavigationNotification;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 122
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationNotification$1;->newArray(I)[Lcom/oneplus/lib/design/widget/BottomNavigationNotification;

    move-result-object p0

    return-object p0
.end method
