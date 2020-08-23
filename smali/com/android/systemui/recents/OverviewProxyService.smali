.class public Lcom/android/systemui/recents/OverviewProxyService;
.super Ljava/lang/Object;
.source "OverviewProxyService.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;
.implements Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;",
        ">;",
        "Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;",
        "Lcom/android/systemui/Dumpable;"
    }
.end annotation


# instance fields
.field private mActiveNavBarRegion:Landroid/graphics/Region;

.field private final mAssistContentObserver:Landroid/database/ContentObserver;

.field private mAuthenticatingPackage:Ljava/lang/String;

.field private mBound:Z

.field private mConnectionBackoffAttempts:I

.field private final mConnectionCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectionRunnable:Ljava/lang/Runnable;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentBoundedUserId:I

.field private final mDeferredConnectionCallback:Ljava/lang/Runnable;

.field private final mDeviceProvisionedCallback:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

.field private final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private final mHandler:Landroid/os/Handler;

.field private mIsEnabled:Z

.field private final mLauncherStateChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mNavBarButtonAlpha:F

.field private final mNavBarController:Lcom/android/systemui/statusbar/NavigationBarController;

.field private mNavBarMode:I

.field private mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

.field private final mOverviewServiceConnection:Landroid/content/ServiceConnection;

.field private final mOverviewServiceDeathRcpt:Landroid/os/IBinder$DeathRecipient;

.field private final mQuickStepIntent:Landroid/content/Intent;

.field private final mRecentsComponentName:Landroid/content/ComponentName;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mStatusBarGestureDownEvent:Landroid/view/MotionEvent;

.field private final mStatusBarWinController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

.field private final mStatusBarWindowCallback:Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;

.field private mSupportsRoundedCornersOnWindows:Z

.field private mSysUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

.field private mSysUiStateFlags:I

.field private mTouchHandler:Landroid/os/Handler;

.field private mWindowCornerRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/statusbar/NavigationBarController;Lcom/android/systemui/statusbar/phone/NavigationModeController;Lcom/android/systemui/statusbar/phone/StatusBarWindowController;)V
    .locals 5

    .line 672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$2FrwSEVJnaHX9GGsAnD2I96htxU;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$2FrwSEVJnaHX9GGsAnD2I96htxU;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    iput-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionRunnable:Ljava/lang/Runnable;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    const/4 v0, -0x1

    .line 146
    iput v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mCurrentBoundedUserId:I

    const/4 v0, 0x0

    .line 151
    iput v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarMode:I

    const/4 v1, 0x0

    .line 180
    iput-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mAuthenticatingPackage:Ljava/lang/String;

    .line 192
    new-instance v2, Lcom/android/systemui/recents/OverviewProxyService$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/OverviewProxyService$1;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    iput-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    .line 541
    new-instance v2, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$53s1j2vSUNo_EjM7u2nSTJl32gM;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$53s1j2vSUNo_EjM7u2nSTJl32gM;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    iput-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mDeferredConnectionCallback:Ljava/lang/Runnable;

    .line 547
    new-instance v2, Lcom/android/systemui/recents/OverviewProxyService$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/OverviewProxyService$2;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    iput-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mLauncherStateChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 571
    new-instance v2, Lcom/android/systemui/recents/OverviewProxyService$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/OverviewProxyService$3;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    iput-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewServiceConnection:Landroid/content/ServiceConnection;

    .line 647
    new-instance v2, Lcom/android/systemui/recents/OverviewProxyService$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/OverviewProxyService$4;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    iput-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mDeviceProvisionedCallback:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    .line 663
    new-instance v2, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$b7uhSpdl46tRQQQT8ZW7Bieyg6A;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$b7uhSpdl46tRQQQT8ZW7Bieyg6A;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    iput-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarWindowCallback:Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;

    .line 666
    new-instance v2, Lcom/android/systemui/recents/-$$Lambda$FF1twVzMKp_FAsQO2IsbqUbCb-s;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/-$$Lambda$FF1twVzMKp_FAsQO2IsbqUbCb-s;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    iput-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewServiceDeathRcpt:Landroid/os/IBinder$DeathRecipient;

    .line 888
    new-instance v2, Lcom/android/systemui/recents/OverviewProxyService$5;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, p0, v3, v1, v4}, Lcom/android/systemui/recents/OverviewProxyService$5;-><init>(Lcom/android/systemui/recents/OverviewProxyService;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mTouchHandler:Landroid/os/Handler;

    .line 1189
    new-instance v1, Lcom/android/systemui/recents/OverviewProxyService$6;

    new-instance v2, Landroid/os/Handler;

    .line 1190
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/recents/OverviewProxyService$6;-><init>(Lcom/android/systemui/recents/OverviewProxyService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mAssistContentObserver:Landroid/database/ContentObserver;

    .line 673
    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    .line 674
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mHandler:Landroid/os/Handler;

    .line 675
    iput-object p3, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    .line 676
    iput-object p5, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarWinController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    .line 677
    iput-object p2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 678
    iput v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionBackoffAttempts:I

    const p2, 0x10401a6

    .line 679
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mRecentsComponentName:Landroid/content/ComponentName;

    .line 681
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.QUICKSTEP_SERVICE"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mRecentsComponentName:Landroid/content/ComponentName;

    .line 682
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mQuickStepIntent:Landroid/content/Intent;

    .line 683
    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/res/Resources;)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mWindowCornerRadius:F

    .line 684
    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    .line 685
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/policy/ScreenDecorationsUtils;->supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSupportsRoundedCornersOnWindows:Z

    const/high16 p1, 0x3f800000    # 1.0f

    .line 688
    iput p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarButtonAlpha:F

    .line 691
    invoke-virtual {p4, p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->addListener(Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarMode:I

    .line 694
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->updateEnabledState()V

    .line 695
    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iget-object p2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mDeviceProvisionedCallback:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    invoke-interface {p1, p2}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 698
    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string p2, "package"

    .line 699
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 700
    iget-object p2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mRecentsComponentName:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    const-string p2, "android.intent.action.PACKAGE_CHANGED"

    .line 702
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 703
    iget-object p2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/systemui/recents/OverviewProxyService;->mLauncherStateChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, p3, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 706
    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarWindowCallback:Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;

    invoke-virtual {p5, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->registerCallback(Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;)V

    .line 709
    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/Handler;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/Handler;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mTouchHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/recents/OverviewProxyService;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->updateEnabledState()V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/systemui/recents/OverviewProxyService;I)I
    .locals 0

    .line 117
    iput p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionBackoffAttempts:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/lang/Runnable;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mDeferredConnectionCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewServiceDeathRcpt:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/recents/OverviewProxyService;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->disconnectFromLauncherService()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/recents/OverviewProxyService;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->retryConnectionWithBackoff()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/recents/OverviewProxyService;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/recents/OverviewProxyService;)Lcom/android/systemui/shared/recents/IOverviewProxy;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/shared/recents/IOverviewProxy;)Lcom/android/systemui/shared/recents/IOverviewProxy;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/systemui/recents/OverviewProxyService;)Lcom/android/systemui/shared/recents/ISystemUiProxy;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/systemui/recents/OverviewProxyService;)F
    .locals 0

    .line 117
    iget p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mWindowCornerRadius:F

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/content/Context;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/recents/OverviewProxyService;)Z
    .locals 0

    .line 117
    iget-boolean p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSupportsRoundedCornersOnWindows:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/android/systemui/recents/OverviewProxyService;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->dispatchNavButtonBounds()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/systemui/recents/OverviewProxyService;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->notifyConnectionChanged()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/systemui/recents/OverviewProxyService;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->sendAssistantAvailabilityInternal()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/database/ContentObserver;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mAssistContentObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/content/ContentResolver;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/systemui/recents/OverviewProxyService;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->internalConnectToCurrentUser()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/systemui/recents/OverviewProxyService;Landroid/view/MotionEvent;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->dispatchLauncherTouch(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/systemui/recents/OverviewProxyService;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->dispatchCancelTouch()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/systemui/recents/OverviewProxyService;F)F
    .locals 0

    .line 117
    iput p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarButtonAlpha:F

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/lang/String;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mAuthenticatingPackage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/systemui/recents/OverviewProxyService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mAuthenticatingPackage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/systemui/recents/OverviewProxyService;)I
    .locals 0

    .line 117
    iget p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mCurrentBoundedUserId:I

    return p0
.end method

.method static synthetic access$502(Lcom/android/systemui/recents/OverviewProxyService;I)I
    .locals 0

    .line 117
    iput p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mCurrentBoundedUserId:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/recents/OverviewProxyService;Landroid/os/Bundle;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->notifyStartAssistant(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/recents/OverviewProxyService;F)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->notifyAssistantGestureCompletion(F)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/recents/OverviewProxyService;F)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->notifyAssistantProgress(F)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/util/List;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    return-object p0
.end method

.method private disconnectFromLauncherService()V
    .locals 3

    .line 1009
    iget-boolean v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mBound:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1011
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1012
    iput-boolean v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mBound:Z

    .line 1015
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz v0, :cond_1

    .line 1016
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewServiceDeathRcpt:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    .line 1017
    iput-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1018
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/OverviewProxyService;->notifyNavBarButtonAlphaChanged(FZ)V

    .line 1019
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->notifyConnectionChanged()V

    :cond_1
    return-void
.end method

.method private dispatchCancelTouch()V
    .locals 3

    .line 922
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 924
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchCancelTouch, event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarGestureDownEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OverviewProxyService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 925
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarGestureDownEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_1

    .line 926
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "MERONG dispatchNotificationPanelTouchEvent"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 927
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarGestureDownEvent:Landroid/view/MotionEvent;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 928
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarGestureDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->dispatchNotificationsPanelTouchEvent(Landroid/view/MotionEvent;)V

    .line 929
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarGestureDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x0

    .line 930
    iput-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarGestureDownEvent:Landroid/view/MotionEvent;

    :cond_1
    return-void
.end method

.method private dispatchLauncherTouch(Landroid/view/MotionEvent;)V
    .locals 4

    .line 903
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 905
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->dispatchNotificationsPanelTouchEvent(Landroid/view/MotionEvent;)V

    .line 906
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 908
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarGestureDownEvent:Landroid/view/MotionEvent;

    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 911
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchLauncherTouch, event:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarGestureDownEvent:Landroid/view/MotionEvent;

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverviewProxyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarGestureDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_3

    .line 913
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x0

    .line 914
    iput-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarGestureDownEvent:Landroid/view/MotionEvent;

    .line 917
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    :cond_4
    return-void
.end method

.method private dispatchNavButtonBounds()V
    .locals 2

    .line 839
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mActiveNavBarRegion:Landroid/graphics/Region;

    if-eqz p0, :cond_0

    .line 841
    :try_start_0
    invoke-interface {v0, p0}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onActiveNavBarRegionChanges(Landroid/graphics/Region;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "OverviewProxyService"

    const-string v1, "Failed to call onActiveNavBarRegionChanges()"

    .line 843
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private internalConnectToCurrentUser()V
    .locals 6

    .line 936
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->disconnectFromLauncherService()V

    .line 939
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isCurrentUserSetup()Z

    move-result v0

    const-string v1, "OverviewProxyService"

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 945
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 946
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.QUICKSTEP_SERVICE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mRecentsComponentName:Landroid/content/ComponentName;

    .line 947
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 949
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewServiceConnection:Landroid/content/ServiceConnection;

    const v4, 0x2000001

    iget-object v5, p0, Lcom/android/systemui/recents/OverviewProxyService;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 952
    invoke-interface {v5}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->getCurrentUser()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    .line 949
    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mBound:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Unable to bind because of security error"

    .line 954
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 956
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mBound:Z

    if-eqz v0, :cond_1

    .line 958
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mDeferredConnectionCallback:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 961
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->retryConnectionWithBackoff()V

    :goto_1
    return-void

    .line 940
    :cond_2
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot attempt connection, is setup "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 941
    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isCurrentUserSetup()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", is enabled "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 942
    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->isEnabled()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 940
    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic lambda$2FrwSEVJnaHX9GGsAnD2I96htxU(Lcom/android/systemui/recents/OverviewProxyService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->internalConnectToCurrentUser()V

    return-void
.end method

.method public static synthetic lambda$b7uhSpdl46tRQQQT8ZW7Bieyg6A(Lcom/android/systemui/recents/OverviewProxyService;ZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/recents/OverviewProxyService;->onStatusBarStateChanged(ZZZ)V

    return-void
.end method

.method private notifyAssistantGestureCompletion(F)V
    .locals 2

    .line 1059
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1060
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-interface {v1, p1}, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;->onAssistantGestureCompletion(F)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyAssistantProgress(F)V
    .locals 2

    .line 1053
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1054
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-interface {v1, p1}, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;->onAssistantProgress(F)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyConnectionChanged()V
    .locals 4

    .line 1035
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 1036
    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    iget-object v3, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v2, v3}, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;->onConnectionChanged(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifyStartAssistant(Landroid/os/Bundle;)V
    .locals 2

    .line 1071
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1072
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-interface {v1, p1}, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;->startAssistant(Landroid/os/Bundle;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifySystemUiStateChanged(I)V
    .locals 2

    .line 1065
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1066
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-interface {v1, p1}, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;->onSystemUiStateChanged(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifySystemUiStateFlags(I)V
    .locals 3

    const-string v0, "OverviewProxyService"

    .line 776
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1, v2}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v1, :cond_0

    .line 778
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarWindowState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const v1, 0x8000

    or-int/2addr p1, v1

    .line 798
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz v1, :cond_1

    .line 799
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SystemUi flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onSystemUiStateChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Failed to notify sysui state change"

    .line 803
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private onStatusBarStateChanged(ZZZ)V
    .locals 5

    .line 822
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const/16 v4, 0x40

    .line 823
    invoke-virtual {p0, v4, v3, v0}, Lcom/android/systemui/recents/OverviewProxyService;->setSystemUiStateFlag(IZI)V

    const/16 v3, 0x200

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 825
    :goto_1
    invoke-virtual {p0, v3, v1, v0}, Lcom/android/systemui/recents/OverviewProxyService;->setSystemUiStateFlag(IZI)V

    const/16 p1, 0x8

    .line 827
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/systemui/recents/OverviewProxyService;->setSystemUiStateFlag(IZI)V

    return-void
.end method

.method private retryConnectionWithBackoff()V
    .locals 4

    .line 966
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x447a0000    # 1000.0f

    .line 969
    iget v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionBackoffAttempts:I

    .line 970
    invoke-static {v0, v1}, Ljava/lang/Math;->scalb(FI)F

    move-result v0

    const v1, 0x49127c00    # 600000.0f

    .line 969
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-long v0, v0

    .line 971
    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 972
    iget v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionBackoffAttempts:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionBackoffAttempts:I

    .line 973
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to connect on attempt "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionBackoffAttempts:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " will try again in "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OverviewProxyService"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private sendAssistantAvailabilityInternal()V
    .locals 6

    const-string v0, "OverviewProxyService"

    .line 1203
    const-class v1, Lcom/android/systemui/assist/AssistManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/assist/AssistManager;

    const/4 v2, -0x2

    .line 1204
    invoke-virtual {v1, v2}, Lcom/android/systemui/assist/AssistManager;->getAssistInfoForUser(I)Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 1206
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1208
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Send assistant availability data to launcher "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v4

    if-eqz v1, :cond_1

    iget p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarMode:I

    .line 1210
    invoke-static {p0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 1209
    :goto_1
    invoke-interface {v4, v2}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onAssistantAvailable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string p0, "Unable to send assistant availability data to launcher"

    .line 1212
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return-void
.end method

.method private updateEnabledState()V
    .locals 4

    .line 1087
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mQuickStepIntent:Landroid/content/Intent;

    .line 1089
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getCurrentUserId()I

    move-result v2

    const/high16 v3, 0x100000

    .line 1087
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->resolveServiceAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mIsEnabled:Z

    .line 1091
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateEnabledState to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mIsEnabled:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OverviewProxyService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V
    .locals 2

    .line 979
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 980
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-interface {p1, v0}, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;->onConnectionChanged(Z)V

    .line 981
    iget v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarButtonAlpha:F

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;->onNavBarButtonAlphaChanged(FZ)V

    .line 982
    iget p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiStateFlags:I

    invoke-interface {p1, p0}, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;->onSystemUiStateChanged(I)V

    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 116
    check-cast p1, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->addCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    return-void
.end method

.method public cleanupAfterDeath()V
    .locals 2

    .line 853
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarGestureDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 854
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$eCc1ukzT5yAkIaX2QrSVYaZKqYk;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$eCc1ukzT5yAkIaX2QrSVYaZKqYk;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 876
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->startConnectionToCurrentUser()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "OverviewProxyService state:"

    .line 1117
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  recentsComponentName="

    .line 1118
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mRecentsComponentName:Landroid/content/ComponentName;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p1, "  isConnected="

    .line 1119
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  isCurrentUserSetup="

    .line 1120
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 1121
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isCurrentUserSetup()Z

    move-result p1

    .line 1120
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  connectionBackoffAttempts="

    .line 1122
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionBackoffAttempts:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p1, "  quickStepIntent="

    .line 1124
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mQuickStepIntent:Landroid/content/Intent;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p1, "  quickStepIntentResolved="

    .line 1125
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->isEnabled()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mSysUiStateFlags="

    .line 1126
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiStateFlags:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    .line 1127
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiStateFlags:I

    invoke-static {p3}, Lcom/android/systemui/shared/system/QuickStepContract;->getSystemUiStateString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "    backGestureDisabled="

    .line 1128
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1129
    iget p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiStateFlags:I

    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isBackGestureDisabled(I)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "    assistantGestureDisabled="

    .line 1130
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1131
    iget p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiStateFlags:I

    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isAssistantGestureDisabled(I)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "    isEnabled="

    .line 1134
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1135
    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->isEnabled()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "    mNavBarMode="

    .line 1136
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1137
    iget p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarMode:I

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method public getNavBarMode()I
    .locals 0

    .line 1111
    iget p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarMode:I

    return p0
.end method

.method public getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;
    .locals 0

    .line 999
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    return-object p0
.end method

.method public getSysUIProxy()Lcom/android/systemui/shared/recents/ISystemUiProxy;
    .locals 0

    .line 1004
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    return-object p0
.end method

.method public getSystemUiStateFlags()I
    .locals 0

    .line 744
    iget p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiStateFlags:I

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 995
    iget-boolean p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mIsEnabled:Z

    return p0
.end method

.method public synthetic lambda$cleanupAfterDeath$1$OverviewProxyService()V
    .locals 3

    .line 855
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_0

    .line 865
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarGestureDownEvent:Landroid/view/MotionEvent;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 866
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarGestureDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->dispatchNotificationsPanelTouchEvent(Landroid/view/MotionEvent;)V

    .line 867
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarGestureDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x0

    .line 868
    iput-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarGestureDownEvent:Landroid/view/MotionEvent;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "OverviewProxyService"

    const-string v1, "StatusBarGestureDownEvent is null "

    .line 870
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$new$0$OverviewProxyService()V
    .locals 2

    const-string v0, "OverviewProxyService"

    const-string v1, "Binder supposed established connection but actual connection to service timed out, trying again"

    .line 542
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->retryConnectionWithBackoff()V

    return-void
.end method

.method public notifyBackAction(ZIIZZ)V
    .locals 7

    .line 716
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz v0, :cond_0

    .line 717
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onBackAction(ZIIZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "OverviewProxyService"

    const-string p2, "Failed to notify back action"

    .line 720
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public notifyKeyguardDone()V
    .locals 2

    const-string v0, "OverviewProxyService"

    .line 810
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz v1, :cond_0

    .line 811
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    invoke-interface {p0}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onKeyguardDone()V

    const-string p0, "notifyKeyguardDone"

    .line 812
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "Failed to notify keyguard done"

    .line 815
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public notifyNavBarButtonAlphaChanged(FZ)V
    .locals 2

    .line 1029
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1030
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-interface {v1, p1, p2}, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;->onNavBarButtonAlphaChanged(FZ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActiveNavBarRegionChanges(Landroid/graphics/Region;)V
    .locals 0

    .line 834
    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mActiveNavBarRegion:Landroid/graphics/Region;

    .line 835
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->dispatchNavButtonBounds()V

    return-void
.end method

.method public onNavigationModeChanged(I)V
    .locals 2

    .line 1098
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNavigationModeChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverviewProxyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    iput p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarMode:I

    .line 1104
    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->shouldShowSwipeUpUI()Z

    move-result p0

    .line 1105
    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object p1

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->setNavBarVirtualKeyHapticFeedbackEnabled(Z)V

    return-void
.end method

.method public removeCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V
    .locals 0

    .line 987
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 116
    check-cast p1, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->removeCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    return-void
.end method

.method public setSystemUiStateFlag(IZI)V
    .locals 0

    if-eqz p3, :cond_0

    return-void

    .line 730
    :cond_0
    iget p3, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiStateFlags:I

    if-eqz p2, :cond_1

    or-int/2addr p1, p3

    goto :goto_0

    :cond_1
    not-int p1, p1

    and-int/2addr p1, p3

    .line 736
    :goto_0
    iget p2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiStateFlags:I

    if-eq p2, p1, :cond_2

    .line 737
    iput p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiStateFlags:I

    .line 738
    iget p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiStateFlags:I

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->notifySystemUiStateChanged(I)V

    .line 739
    iget p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiStateFlags:I

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->notifySystemUiStateFlags(I)V

    :cond_2
    return-void
.end method

.method public shouldShowSwipeUpUI()Z
    .locals 1

    .line 991
    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarMode:I

    invoke-static {p0}, Lcom/android/systemui/shared/system/QuickStepContract;->isLegacyMode(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public startConnectionToCurrentUser()V
    .locals 2

    .line 880
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 881
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 883
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->internalConnectToCurrentUser()V

    :goto_0
    return-void
.end method

.method public updateSystemUIStateFlagsInternal()V
    .locals 6

    .line 1157
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    .line 1158
    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NavigationBarController;->getNavigationBarView(I)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 1165
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    .line 1167
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-nez v1, :cond_1

    .line 1168
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1, v2}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 1171
    :cond_1
    sget-boolean v1, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_2

    const-string v1, "OverviewProxyService"

    const-string v2, "Update system ui flag state to launcher when navigation bar is hidden"

    .line 1172
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getDisableFlag()I

    move-result v1

    const/16 v2, 0x80

    const/high16 v3, 0x1000000

    and-int/2addr v3, v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    move v3, v4

    goto :goto_0

    :cond_3
    move v3, v5

    .line 1176
    :goto_0
    invoke-virtual {p0, v2, v3, v0}, Lcom/android/systemui/recents/OverviewProxyService;->setSystemUiStateFlag(IZI)V

    const/16 v2, 0x100

    const/high16 v3, 0x200000

    and-int/2addr v1, v3

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    move v4, v5

    .line 1178
    :goto_1
    invoke-virtual {p0, v2, v4, v0}, Lcom/android/systemui/recents/OverviewProxyService;->setSystemUiStateFlag(IZI)V

    .line 1181
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPanel()Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v1, 0x4

    .line 1182
    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 1183
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPanel()Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyExpanded()Z

    move-result v2

    .line 1182
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/systemui/recents/OverviewProxyService;->setSystemUiStateFlag(IZI)V

    :cond_5
    return-void
.end method

.method public updateSystemUiStateFlags()V
    .locals 3

    .line 753
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    .line 754
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NavigationBarController;->getDefaultNavigationBarFragment()Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    move-result-object v0

    .line 755
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    .line 756
    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/NavigationBarController;->getNavigationBarView(I)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v1

    const/4 v2, 0x0

    .line 758
    iput v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiStateFlags:I

    if-eqz v0, :cond_0

    const/4 v2, -0x1

    .line 760
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->updateSystemUiStateFlags(I)V

    :cond_0
    if-eqz v1, :cond_1

    .line 764
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateSystemUiStateFlags()V

    .line 767
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarWinController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    if-eqz v0, :cond_2

    .line 768
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->notifyStateChangedCallbacks()V

    .line 771
    :cond_2
    iget v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiStateFlags:I

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService;->notifySystemUiStateFlags(I)V

    return-void
.end method
