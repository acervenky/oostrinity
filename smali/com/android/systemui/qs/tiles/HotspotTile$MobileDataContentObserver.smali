.class Lcom/android/systemui/qs/tiles/HotspotTile$MobileDataContentObserver;
.super Landroid/database/ContentObserver;
.source "HotspotTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/HotspotTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MobileDataContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/HotspotTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V
    .locals 0

    .line 622
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$MobileDataContentObserver;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    .line 623
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 628
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$MobileDataContentObserver;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$1200(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "mobile_data"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 630
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$MobileDataContentObserver;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {p0, v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$1300(Lcom/android/systemui/qs/tiles/HotspotTile;Z)V

    return-void
.end method
