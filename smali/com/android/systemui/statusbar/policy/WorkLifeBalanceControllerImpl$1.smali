.class Lcom/android/systemui/statusbar/policy/WorkLifeBalanceControllerImpl$1;
.super Landroid/database/ContentObserver;
.source "WorkLifeBalanceControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/WorkLifeBalanceControllerImpl;->setListening(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/WorkLifeBalanceControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/WorkLifeBalanceControllerImpl;Landroid/os/Handler;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/WorkLifeBalanceControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/WorkLifeBalanceControllerImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/WorkLifeBalanceControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/WorkLifeBalanceControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/WorkLifeBalanceControllerImpl;->access$000(Lcom/android/systemui/statusbar/policy/WorkLifeBalanceControllerImpl;)V

    return-void
.end method
