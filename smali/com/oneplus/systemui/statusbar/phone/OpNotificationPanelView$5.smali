.class Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView$5;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "OpNotificationPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;)V
    .locals 0

    .line 678
    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView$5;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardBouncerChanged(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 680
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView$5;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;

    invoke-static {p1}, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->access$500(Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;)Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 681
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView$5;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;

    invoke-static {p0}, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->access$500(Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;)Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->resetTargetedView()V

    :cond_0
    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 0

    .line 686
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView$5;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;

    invoke-static {p1}, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->access$500(Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;)Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 687
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView$5;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;

    invoke-static {p0}, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->access$500(Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;)Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->resetTargetedView()V

    :cond_0
    return-void
.end method
