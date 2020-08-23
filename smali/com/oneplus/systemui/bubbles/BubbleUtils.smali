.class public Lcom/oneplus/systemui/bubbles/BubbleUtils;
.super Ljava/lang/Object;
.source "BubbleUtils.java"


# static fields
.field private static final DEBUG_SHOW_EVERY_TIME:Z

.field private static sHintEnabled:Z

.field private static sIsHintShow:Z

.field private static sShouldShowHint:Z

.field private static sSp:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "debug.quick_reply_hint_show_every_time"

    .line 10
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/oneplus/systemui/bubbles/BubbleUtils;->DEBUG_SHOW_EVERY_TIME:Z

    const/4 v1, 0x1

    .line 13
    sput-boolean v1, Lcom/oneplus/systemui/bubbles/BubbleUtils;->sShouldShowHint:Z

    .line 14
    sput-boolean v0, Lcom/oneplus/systemui/bubbles/BubbleUtils;->sHintEnabled:Z

    .line 15
    sput-boolean v0, Lcom/oneplus/systemui/bubbles/BubbleUtils;->sIsHintShow:Z

    return-void
.end method

.method public static getHintEnabled()Z
    .locals 1

    .line 53
    sget-boolean v0, Lcom/oneplus/systemui/bubbles/BubbleUtils;->sHintEnabled:Z

    return v0
.end method

.method public static isHintShow()Z
    .locals 1

    .line 62
    sget-boolean v0, Lcom/oneplus/systemui/bubbles/BubbleUtils;->sIsHintShow:Z

    return v0
.end method

.method public static isQuickReply(Landroid/app/Notification;)Z
    .locals 1

    .line 70
    iget p0, p0, Landroid/app/Notification;->flags:I

    const v0, 0x8000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static setHintEnabled(Z)V
    .locals 0

    .line 57
    sput-boolean p0, Lcom/oneplus/systemui/bubbles/BubbleUtils;->sHintEnabled:Z

    return-void
.end method

.method public static setHintShow(Z)V
    .locals 0

    .line 66
    sput-boolean p0, Lcom/oneplus/systemui/bubbles/BubbleUtils;->sIsHintShow:Z

    return-void
.end method

.method public static setHintShown(Landroid/content/Context;)V
    .locals 3

    .line 42
    sget-boolean v0, Lcom/oneplus/systemui/bubbles/BubbleUtils;->sShouldShowHint:Z

    if-eqz v0, :cond_1

    .line 43
    sget-object v0, Lcom/oneplus/systemui/bubbles/BubbleUtils;->sSp:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/oneplus/systemui/bubbles/BubbleUtils;->sSp:Landroid/content/SharedPreferences;

    .line 46
    :cond_0
    sget-object p0, Lcom/oneplus/systemui/bubbles/BubbleUtils;->sSp:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "bubble_hint_shown"

    const-string v2, "1"

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 47
    sput-boolean v1, Lcom/oneplus/systemui/bubbles/BubbleUtils;->sShouldShowHint:Z

    :cond_1
    return-void
.end method

.method public static shouldShowHint(Landroid/content/Context;)Z
    .locals 4

    .line 22
    sget-object v0, Lcom/oneplus/systemui/bubbles/BubbleUtils;->sSp:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/oneplus/systemui/bubbles/BubbleUtils;->sSp:Landroid/content/SharedPreferences;

    .line 25
    :cond_0
    sget-boolean p0, Lcom/oneplus/systemui/bubbles/BubbleUtils;->DEBUG_SHOW_EVERY_TIME:Z

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    return v0

    .line 29
    :cond_1
    sget-boolean p0, Lcom/oneplus/systemui/bubbles/BubbleUtils;->sShouldShowHint:Z

    if-eqz p0, :cond_3

    .line 30
    sget-object p0, Lcom/oneplus/systemui/bubbles/BubbleUtils;->sSp:Landroid/content/SharedPreferences;

    const-string v2, "0"

    const-string v3, "bubble_hint_shown"

    invoke-interface {p0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 31
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 32
    sput-boolean v0, Lcom/oneplus/systemui/bubbles/BubbleUtils;->sShouldShowHint:Z

    goto :goto_0

    .line 34
    :cond_2
    sput-boolean v1, Lcom/oneplus/systemui/bubbles/BubbleUtils;->sShouldShowHint:Z

    .line 37
    :cond_3
    :goto_0
    sget-boolean p0, Lcom/oneplus/systemui/bubbles/BubbleUtils;->sShouldShowHint:Z

    return p0
.end method
