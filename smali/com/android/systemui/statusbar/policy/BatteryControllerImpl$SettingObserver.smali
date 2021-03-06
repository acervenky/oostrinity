.class final Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;
.super Landroid/database/ContentObserver;
.source "BatteryControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingObserver"
.end annotation


# instance fields
.field private final BATTERY_BAR_STYLE:I

.field private final BATTERY_PERCENT_STYLE:I

.field private final CHARING_OPTIMIZATED_STATUS_URI:Landroid/net/Uri;

.field private final SHOW_BATTERY_PERCENT:Landroid/net/Uri;

.field private final STATUS_BAR_BATTERY_STYLE:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;)V
    .locals 0

    .line 590
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    .line 591
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 p1, 0x0

    .line 567
    iput p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;->BATTERY_BAR_STYLE:I

    const/4 p1, 0x3

    .line 568
    iput p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;->BATTERY_PERCENT_STYLE:I

    const-string/jumbo p1, "status_bar_show_battery_percent"

    .line 571
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;->SHOW_BATTERY_PERCENT:Landroid/net/Uri;

    const-string/jumbo p1, "status_bar_battery_style"

    .line 575
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;->STATUS_BAR_BATTERY_STYLE:Landroid/net/Uri;

    const-string p1, "charging_optimized_status"

    .line 586
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;->CHARING_OPTIMIZATED_STATUS_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .line 595
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 597
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;->SHOW_BATTERY_PERCENT:Landroid/net/Uri;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 599
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;->STATUS_BAR_BATTERY_STYLE:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 601
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;->CHARING_OPTIMIZATED_STATUS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const/4 v0, 0x0

    .line 603
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;->update(Landroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 608
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;->update(Landroid/net/Uri;)V

    return-void
.end method

.method public update(Landroid/net/Uri;)V
    .locals 8

    .line 615
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "status_bar_show_battery_percent"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    .line 616
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;->SHOW_BATTERY_PERCENT:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    goto :goto_2

    .line 617
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    .line 618
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    .line 617
    invoke-static {v0, v1, v3, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_2

    move v5, v2

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->access$302(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;Z)Z

    move v4, v2

    :goto_2
    const-string v5, "BatteryController"

    if-eqz p1, :cond_3

    .line 621
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;->STATUS_BAR_BATTERY_STYLE:Landroid/net/Uri;

    invoke-virtual {v6, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 625
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    .line 626
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v6

    const-string/jumbo v7, "status_bar_battery_style"

    .line 625
    invoke-static {v0, v7, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    invoke-static {v4, v6}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->access$402(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;I)I

    .line 630
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->access$400(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;)I

    move-result v4

    const/4 v6, 0x3

    if-ne v4, v6, :cond_4

    .line 631
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    invoke-static {v4, v3}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->access$402(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;I)I

    .line 632
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    invoke-static {v4, v2}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->access$302(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;Z)Z

    const-string v4, "Migrate battery style from percent to bar and show percentage."

    .line 633
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    .line 638
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->access$400(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;)I

    move-result v4

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v6

    .line 637
    invoke-static {v0, v7, v4, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 641
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    .line 640
    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_4
    move v4, v2

    :cond_5
    if-eqz p1, :cond_7

    .line 647
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;->CHARING_OPTIMIZATED_STATUS_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    move v2, v3

    goto :goto_4

    .line 649
    :cond_7
    :goto_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    const-string v6, "charging_optimized_status"

    invoke-static {v0, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_8

    move v3, v2

    :cond_8
    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->access$502(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;Z)Z

    .line 655
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "update uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " mShowPercent: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    .line 656
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->access$300(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mBatteryStyle: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->access$400(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mIsOptimizatedCharge:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    .line 657
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->access$500(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 655
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_9

    .line 659
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->access$600(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;)V

    :cond_9
    if-eqz v2, :cond_a

    .line 663
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->access$700(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;)V

    :cond_a
    return-void
.end method
