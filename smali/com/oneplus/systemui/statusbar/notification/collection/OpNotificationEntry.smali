.class public Lcom/oneplus/systemui/statusbar/notification/collection/OpNotificationEntry;
.super Ljava/lang/Object;
.source "OpNotificationEntry.java"


# instance fields
.field private mOpNotificationController:Lcom/oneplus/notification/OpNotificationController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected init()V
    .locals 1

    .line 12
    const-class v0, Lcom/oneplus/notification/OpNotificationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/notification/OpNotificationController;

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/notification/collection/OpNotificationEntry;->mOpNotificationController:Lcom/oneplus/notification/OpNotificationController;

    return-void
.end method

.method protected shouldShowQuickReplyBubble(Landroid/service/notification/StatusBarNotification;)Z
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/notification/collection/OpNotificationEntry;->mOpNotificationController:Lcom/oneplus/notification/OpNotificationController;

    invoke-virtual {p0, p1}, Lcom/oneplus/notification/OpNotificationController;->shouldShowQuickReplyBubble(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    return p0
.end method
