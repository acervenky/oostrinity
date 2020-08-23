.class Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver$1;
.super Ljava/lang/Object;
.source "OpAodDisplayViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;->onChange(ZLandroid/net/Uri;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;

.field final synthetic val$uri:Landroid/net/Uri;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;Landroid/net/Uri;I)V
    .locals 0

    .line 578
    iput-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver$1;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;

    iput-object p2, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver$1;->val$uri:Landroid/net/Uri;

    iput p3, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver$1;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 581
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver$1;->val$uri:Landroid/net/Uri;

    const-string v1, "aod_clock_style"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver$1;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;

    iget-object v0, v0, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$800(Lcom/oneplus/aod/OpAodDisplayViewManager;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver$1;->val$userId:I

    invoke-static {v0, v1}, Lcom/oneplus/aod/OpAodUtils;->checkAodStyle(Landroid/content/Context;I)V

    .line 585
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver$1;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;

    iget-object v0, v0, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$300(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpClockViewCtrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/OpClockViewCtrl;->updateClockDB()V

    .line 586
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver$1;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;

    iget-object v0, v0, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$500(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpAodMain;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver$1;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;

    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$300(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpClockViewCtrl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/aod/OpClockViewCtrl;->getClockStyle()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oneplus/aod/OpAodMain;->setClockStyle(I)V

    goto :goto_0

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver$1;->val$uri:Landroid/net/Uri;

    const-string v1, "aod_display_text"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 588
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver$1;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;

    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$300(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpClockViewCtrl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/aod/OpClockViewCtrl;->updateDisplayTextDB()V

    goto :goto_0

    .line 589
    :cond_1
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver$1;->val$uri:Landroid/net/Uri;

    const-string v1, "op_custom_horizon_light_animation_style"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 590
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver$1;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;

    iget-object v0, v0, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$900(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpAodLightEffectContainer;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver$1;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;

    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$800(Lcom/oneplus/aod/OpAodDisplayViewManager;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {p0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->setLightIndex(I)V

    :cond_2
    :goto_0
    return-void
.end method
