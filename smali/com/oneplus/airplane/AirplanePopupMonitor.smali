.class public Lcom/oneplus/airplane/AirplanePopupMonitor;
.super Ljava/lang/Object;
.source "AirplanePopupMonitor.java"


# static fields
.field private static sInstance:Lcom/oneplus/airplane/AirplanePopupMonitor;


# instance fields
.field private mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/oneplus/airplane/AirplanePopupMonitor;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 21
    iput-object p1, p0, Lcom/oneplus/airplane/AirplanePopupMonitor;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/airplane/AirplanePopupMonitor;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/oneplus/airplane/AirplanePopupMonitor;->unRegisterReceiver()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/airplane/AirplanePopupMonitor;)Landroid/content/Context;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/oneplus/airplane/AirplanePopupMonitor;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Landroid/content/Context;)Z
    .locals 0

    .line 14
    invoke-static {p0}, Lcom/oneplus/airplane/AirplanePopupMonitor;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/airplane/AirplanePopupMonitor;
    .locals 1

    .line 43
    sget-object v0, Lcom/oneplus/airplane/AirplanePopupMonitor;->sInstance:Lcom/oneplus/airplane/AirplanePopupMonitor;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/oneplus/airplane/AirplanePopupMonitor;

    invoke-direct {v0, p0}, Lcom/oneplus/airplane/AirplanePopupMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/airplane/AirplanePopupMonitor;->sInstance:Lcom/oneplus/airplane/AirplanePopupMonitor;

    .line 46
    :cond_0
    sget-object p0, Lcom/oneplus/airplane/AirplanePopupMonitor;->sInstance:Lcom/oneplus/airplane/AirplanePopupMonitor;

    return-object p0
.end method

.method private static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 2

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "airplane_mode_on"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private registerReceiver()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/oneplus/airplane/AirplanePopupMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/airplane/AirplanePopupMonitor;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method private unRegisterReceiver()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/oneplus/airplane/AirplanePopupMonitor;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/oneplus/airplane/AirplanePopupMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/airplane/AirplanePopupMonitor;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/oneplus/airplane/AirplanePopupMonitor;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    :cond_0
    return-void
.end method


# virtual methods
.method public init()V
    .locals 1

    .line 26
    new-instance v0, Lcom/oneplus/airplane/AirplanePopupMonitor$1;

    invoke-direct {v0, p0}, Lcom/oneplus/airplane/AirplanePopupMonitor$1;-><init>(Lcom/oneplus/airplane/AirplanePopupMonitor;)V

    iput-object v0, p0, Lcom/oneplus/airplane/AirplanePopupMonitor;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 38
    invoke-direct {p0}, Lcom/oneplus/airplane/AirplanePopupMonitor;->registerReceiver()V

    return-void
.end method
