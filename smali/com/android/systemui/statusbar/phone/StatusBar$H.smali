.class public Lcom/android/systemui/statusbar/phone/StatusBar$H;
.super Landroid/os/Handler;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 2002
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 2005
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x402

    if-eq v0, v1, :cond_1

    const/16 v1, 0x403

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2023
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$700(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    goto :goto_0

    .line 2017
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateExpandSettingsPanel(Ljava/lang/String;)V

    goto :goto_0

    .line 2020
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels()V

    goto :goto_0

    .line 2014
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateExpandNotificationsPanel()V

    goto :goto_0

    .line 2010
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissKeyboardShortcuts()V

    goto :goto_0

    .line 2007
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->toggleKeyboardShortcuts(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
