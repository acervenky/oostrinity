.class public Lcom/android/systemui/statusbar/policy/WorkLifeBalanceControllerImpl;
.super Landroid/content/BroadcastReceiver;
.source "WorkLifeBalanceControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/WorkLifeBalanceController;


# instance fields
.field private final mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/systemui/statusbar/policy/WorkLifeBalanceController$WorkLifeBalanceControllerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/WorkLifeBalanceControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 33
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/WorkLifeBalanceControllerImpl;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/WorkLifeBalanceControllerImpl;->setListening(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/WorkLifeBalanceControllerImpl;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WorkLifeBalanceControllerImpl;->notifyChanged()V

    return-void
.end method

.method private notifyChanged()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WorkLifeBalanceControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/WorkLifeBalanceController$WorkLifeBalanceControllerCallback;

    .line 84
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/WorkLifeBalanceControllerImpl;->notifyChanged(Lcom/android/systemui/statusbar/policy/WorkLifeBalanceController$WorkLifeBalanceControllerCallback;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyChanged(Lcom/android/systemui/statusbar/policy/WorkLifeBalanceController$WorkLifeBalanceControllerCallback;)V
    .locals 0

    .line 79
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/WorkLifeBalanceController$WorkLifeBalanceControllerCallback;->onWorkLifeBalanceModeEnabled()V

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/WorkLifeBalanceController$WorkLifeBalanceControllerCallback;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WorkLifeBalanceControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/WorkLifeBalanceControllerImpl;->notifyChanged(Lcom/android/systemui/statusbar/policy/WorkLifeBalanceController$WorkLifeBalanceControllerCallback;)V

    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lcom/android/systemui/statusbar/policy/WorkLifeBalanceController$WorkLifeBalanceControllerCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/WorkLifeBalanceControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/WorkLifeBalanceController$WorkLifeBalanceControllerCallback;)V

    return-void
.end method

.method public isWlbOn()Z
    .locals 2

    .line 44
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/WorkLifeBalanceControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "oneplus_wlb_mode"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isWlbSetupDone()Z
    .locals 2

    .line 39
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/WorkLifeBalanceControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "oneplus_wlb_setup_done"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 90
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.BOOT_COMPLETED"

    .line 91
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 92
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/WorkLifeBalanceControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oneplus/worklife/OPWLBHelper;->getInstance(Landroid/content/Context;)Lcom/oneplus/worklife/OPWLBHelper;

    :cond_0
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/WorkLifeBalanceController$WorkLifeBalanceControllerCallback;)V
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/WorkLifeBalanceControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lcom/android/systemui/statusbar/policy/WorkLifeBalanceController$WorkLifeBalanceControllerCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/WorkLifeBalanceControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/WorkLifeBalanceController$WorkLifeBalanceControllerCallback;)V

    return-void
.end method

.method public setListening(Z)V
    .locals 3

    .line 65
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/WorkLifeBalanceControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "oneplus_wlb_mode"

    .line 66
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/policy/WorkLifeBalanceControllerImpl$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/WorkLifeBalanceControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/WorkLifeBalanceControllerImpl;Landroid/os/Handler;)V

    const/4 v2, 0x0

    .line 65
    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 73
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 74
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WorkLifeBalanceControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
