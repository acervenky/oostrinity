.class public final Lcom/android/systemui/qs/tiles/OtgTile_Factory;
.super Ljava/lang/Object;
.source "OtgTile_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/qs/tiles/OtgTile;",
        ">;"
    }
.end annotation


# instance fields
.field private final hostProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSHost;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSHost;",
            ">;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/OtgTile_Factory;->hostProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/OtgTile_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSHost;",
            ">;)",
            "Lcom/android/systemui/qs/tiles/OtgTile_Factory;"
        }
    .end annotation

    .line 25
    new-instance v0, Lcom/android/systemui/qs/tiles/OtgTile_Factory;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/OtgTile_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/OtgTile;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSHost;",
            ">;)",
            "Lcom/android/systemui/qs/tiles/OtgTile;"
        }
    .end annotation

    .line 21
    new-instance v0, Lcom/android/systemui/qs/tiles/OtgTile;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSHost;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/OtgTile;-><init>(Lcom/android/systemui/qs/QSHost;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/qs/tiles/OtgTile;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/OtgTile_Factory;->hostProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/OtgTile_Factory;->provideInstance(Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/OtgTile;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/OtgTile_Factory;->get()Lcom/android/systemui/qs/tiles/OtgTile;

    move-result-object p0

    return-object p0
.end method
