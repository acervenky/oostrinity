.class public Lcom/android/systemui/qs/tiles/WorkLifeBalanceTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "WorkLifeBalanceTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/WorkLifeBalanceController$WorkLifeBalanceControllerCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;",
        "Lcom/android/systemui/statusbar/policy/WorkLifeBalanceController$WorkLifeBalanceControllerCallback;"
    }
.end annotation


# instance fields
.field private final mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private final mWorkLifeBalanceController:Lcom/android/systemui/statusbar/policy/WorkLifeBalanceController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 42
    sget p1, Lcom/android/systemui/R$drawable;->ic_qs_work_life_balance:I

    invoke-static {p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WorkLifeBalanceTile;->mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 48
    const-class p1, Lcom/android/systemui/statusbar/policy/WorkLifeBalanceController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/WorkLifeBalanceController;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WorkLifeBalanceTile;->mWorkLifeBalanceController:Lcom/android/systemui/statusbar/policy/WorkLifeBalanceController;

    return-void
.end method

.method private getAccessibilityString(Z)Ljava/lang/String;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->accessibility_work_life_balance_mode:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getLongClickIntentWlb()Landroid/content/Intent;
    .locals 1

    .line 132
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WorkLifeBalanceTile;->mWorkLifeBalanceController:Lcom/android/systemui/statusbar/policy/WorkLifeBalanceController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/WorkLifeBalanceController;->isWlbSetupDone()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 133
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.oneplus.intent.ACTION_LAUNCH_WLB"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 135
    :cond_0
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.WLB_SETUP_POPUP"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    .line 121
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->accessibility_work_life_balance_mode_on:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 123
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->accessibility_work_life_balance_mode_off:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WorkLifeBalanceTile;->getLongClickIntentWlb()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x7d6

    return p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 99
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->work_life_balance_mode:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handleClick()V
    .locals 3

    .line 72
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WorkLifeBalanceTile;->mWorkLifeBalanceController:Lcom/android/systemui/statusbar/policy/WorkLifeBalanceController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/WorkLifeBalanceController;->isWlbSetupDone()Z

    move-result p0

    const/4 v0, 0x0

    const-string v1, "popup_type"

    if-nez p0, :cond_0

    .line 73
    new-instance p0, Landroid/content/Intent;

    const-string v2, "android.intent.action.WLB_SETUP_POPUP"

    invoke-direct {p0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 74
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 75
    const-class v1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v1, p0, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void

    .line 79
    :cond_0
    new-instance p0, Landroid/content/Intent;

    const-string v2, "com.oneplus.intent.ACTION_WLB_MODE_CHANGE"

    invoke-direct {p0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    .line 80
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    const-class v1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v1, p0, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void
.end method

.method public handleSetListening(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 59
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WorkLifeBalanceTile;->mWorkLifeBalanceController:Lcom/android/systemui/statusbar/policy/WorkLifeBalanceController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    goto :goto_0

    .line 61
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WorkLifeBalanceTile;->mWorkLifeBalanceController:Lcom/android/systemui/statusbar/policy/WorkLifeBalanceController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 1

    .line 104
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/WorkLifeBalanceTile;->mWorkLifeBalanceController:Lcom/android/systemui/statusbar/policy/WorkLifeBalanceController;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/WorkLifeBalanceController;->isWlbOn()Z

    move-result p2

    .line 105
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 106
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WorkLifeBalanceTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 107
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkLifeBalanceTile;->mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 108
    invoke-direct {p0, p2}, Lcom/android/systemui/qs/tiles/WorkLifeBalanceTile;->getAccessibilityString(Z)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 109
    const-class p0, Landroid/widget/Switch;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 110
    iget-boolean p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    iput p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 40
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/WorkLifeBalanceTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 0

    .line 53
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WorkLifeBalanceTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method

.method public onWorkLifeBalanceModeEnabled()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkLifeBalanceTile;->mWorkLifeBalanceController:Lcom/android/systemui/statusbar/policy/WorkLifeBalanceController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/WorkLifeBalanceController;->isWlbOn()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method
