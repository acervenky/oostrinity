.class Lcom/android/systemui/keyguard/KeyguardViewMediator$5;
.super Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator$OpHandler;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .locals 0

    .line 1750
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator$OpHandler;-><init>(Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1753
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 1833
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$5100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_2

    .line 1769
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_2

    .line 1785
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_2

    :pswitch_3
    const-string p1, "KeyguardViewMediator#handleMessage NOTIFY_SCREEN_TURNED_ON"

    .line 1780
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1781
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 1782
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_2

    :pswitch_4
    const-string p1, "KeyguardViewMediator#handleMessage NOTIFY_STARTED_WAKING_UP"

    .line 1788
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1789
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 1790
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_2

    :pswitch_5
    const-string p0, "KeyguardViewMediator#handleMessage KEYGUARD_DONE_PENDING_TIMEOUT"

    .line 1828
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string p0, "KeyguardViewMediator"

    const-string p1, "Timeout while waiting for activity drawn!"

    .line 1829
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_2

    .line 1813
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/keyguard/KeyguardViewMediator$DismissMessage;

    .line 1814
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator$DismissMessage;->getCallback()Lcom/android/internal/policy/IKeyguardDismissCallback;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator$DismissMessage;->getMessage()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4900(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1808
    :pswitch_7
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    monitor-enter v0

    .line 1809
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$500(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 1810
    monitor-exit v0

    goto/16 :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_8
    const-string v0, "KeyguardViewMediator#handleMessage SET_OCCLUDED"

    .line 1803
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1804
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-static {p0, v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4800(Lcom/android/systemui/keyguard/KeyguardViewMediator;ZZ)V

    .line 1805
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_2

    :pswitch_9
    const-string p1, "KeyguardViewMediator#handleMessage KEYGUARD_DONE_DRAWING"

    .line 1798
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1799
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4700(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 1800
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_2

    :pswitch_a
    const-string p1, "KeyguardViewMediator#handleMessage KEYGUARD_DONE"

    .line 1793
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1794
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4600(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 1795
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_2

    :pswitch_b
    const-string v0, "KeyguardViewMediator#handleMessage NOTIFY_SCREEN_TURNING_ON"

    .line 1775
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1776
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/policy/IKeyguardDrawnCallback;

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4200(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    .line 1777
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_2

    .line 1772
    :pswitch_c
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto :goto_2

    :pswitch_d
    const-string p1, "KeyguardViewMediator#handleMessage VERIFY_UNLOCK"

    .line 1764
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1765
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3900(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 1766
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_2

    .line 1761
    :pswitch_e
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3800(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto :goto_2

    .line 1758
    :pswitch_f
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3700(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto :goto_2

    .line 1755
    :pswitch_10
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3600(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto :goto_2

    :cond_2
    const-string v0, "KeyguardViewMediator"

    const-string v1, "START_KEYGUARD_EXIT_ANIM_TIMEOUT"

    .line 1818
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :pswitch_11
    const-string v0, "KeyguardViewMediator#handleMessage START_KEYGUARD_EXIT_ANIM"

    .line 1821
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1822
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;

    .line 1823
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-wide v1, p1, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->startTime:J

    iget-wide v3, p1, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->fadeoutDuration:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$5000(Lcom/android/systemui/keyguard/KeyguardViewMediator;JJ)V

    .line 1824
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/classifier/FalsingManagerFactory;->getInstance(Landroid/content/Context;)Lcom/android/systemui/plugins/FalsingManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onSucccessfulUnlock()V

    .line 1825
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_11
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
