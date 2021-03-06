.class public Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
.super Landroid/content/BroadcastReceiver;
.source "NetworkControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController;
.implements Lcom/android/systemui/DemoMode;
.implements Lcom/android/settingslib/net/DataUsageController$NetworkNameProvider;
.implements Lcom/android/systemui/ConfigurationChangedReceiver;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SettingObserver;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubListener;
    }
.end annotation


# static fields
.field static final CHATTY:Z

.field static final DEBUG:Z

.field public static SOFTSIM_DISABLE:I

.field public static SOFTSIM_ENABLE:I

.field public static SOFTSIM_ENABLE_PILOT:I

.field private static final SOFTSIM_URL:Landroid/net/Uri;


# instance fields
.field private final mAccessPoints:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

.field private mActiveMobileDataSubscription:I

.field private mAirplaneMode:Z

.field private final mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

.field private mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

.field private final mConnectedTransports:Ljava/util/BitSet;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrentSubscriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentUserId:I

.field private final mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

.field private final mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

.field private mDefaultSignalController:Lcom/android/systemui/statusbar/policy/MobileSignalController;

.field private mDemoInetCondition:Z

.field private mDemoMode:Z

.field private mDemoWifiState:Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

.field private mEmergencySource:I

.field final mEthernetSignalController:Lcom/android/systemui/statusbar/policy/EthernetSignalController;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

.field mFiveGServiceClient:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mHasMobileDataFeature:Z

.field private mHasNoSubs:Z

.field private final mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

.field private mInetCondition:Z

.field private mIsEmergency:Z

.field private mLTEIconStates:[Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

.field private mLTEstatus:[Z

.field mLastServiceState:Landroid/telephony/ServiceState;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mListening:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mLocale:Ljava/util/Locale;

.field private final mLock:Ljava/lang/Object;

.field final mMobileSignalControllers:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/statusbar/policy/MobileSignalController;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkSpeedController:Lcom/oneplus/networkspeed/NetworkSpeedController;

.field private mOpActionTetherDialogShowing:Z

.field private final mPhone:Landroid/telephony/TelephonyManager;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mProvisionState:[I

.field private final mReceiverHandler:Landroid/os/Handler;

.field private final mRegisterListeners:Ljava/lang/Runnable;

.field private final mSettingObserver:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SettingObserver;

.field private mSimDetected:Z

.field private mSmartLinkEnable:Z

.field private final mSubDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

.field private mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mUserSetup:Z

.field private final mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

.field private final mValidatedTransports:Ljava/util/BitSet;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field final mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private softSimState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 130
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    .line 131
    sput-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->CHATTY:Z

    const/4 v0, 0x0

    .line 1716
    sput v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->SOFTSIM_DISABLE:I

    const/4 v0, 0x1

    .line 1717
    sput v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->SOFTSIM_ENABLE:I

    const/4 v0, 0x2

    .line 1718
    sput v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->SOFTSIM_ENABLE_PILOT:I

    const-string v0, "content://com.redteamobile.provider"

    .line 1754
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->SOFTSIM_URL:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/ConnectivityManager;Landroid/telephony/TelephonyManager;Landroid/net/wifi/WifiManager;Landroid/telephony/SubscriptionManager;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;Landroid/os/Looper;Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;Lcom/android/settingslib/net/DataUsageController;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V
    .locals 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object v6, p0

    move-object v7, p1

    move-object/from16 v8, p7

    move-object/from16 v9, p12

    .line 242
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 151
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLock:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 155
    iput v0, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mActiveMobileDataSubscription:I

    .line 164
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    .line 176
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    .line 177
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    const/4 v0, 0x0

    .line 180
    iput-boolean v0, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    const/4 v1, 0x0

    .line 182
    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    .line 184
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSubscriptions:Ljava/util/List;

    .line 210
    iput-boolean v0, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOpActionTetherDialogShowing:Z

    .line 1366
    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$9;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRegisterListeners:Ljava/lang/Runnable;

    const/4 v1, 0x6

    new-array v1, v1, [Z

    .line 1506
    fill-array-data v1, :array_0

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLTEstatus:[Z

    .line 1507
    iget-object v1, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLTEstatus:[Z

    array-length v1, v1

    new-array v1, v1, [Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLTEIconStates:[Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 1654
    iput-object v2, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mProvisionState:[I

    new-array v1, v1, [I

    .line 1715
    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->softSimState:[I

    .line 1877
    iput-boolean v0, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSmartLinkEnable:Z

    .line 1904
    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SettingObserver;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SettingObserver;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSettingObserver:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SettingObserver;

    .line 243
    iput-object v7, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v1, p6

    .line 244
    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    .line 245
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    move-object/from16 v1, p8

    .line 246
    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    .line 247
    new-instance v1, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;-><init>(Landroid/content/Context;)V

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    move-object/from16 v1, p5

    .line 249
    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v1, p11

    .line 250
    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    move-object v1, p2

    .line 251
    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 252
    iget-object v1, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 253
    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    iput-boolean v0, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    move-object v0, p3

    .line 256
    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    move-object v0, p4

    .line 259
    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 261
    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    move-object/from16 v0, p9

    .line 262
    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAccessPoints:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    move-object/from16 v0, p10

    .line 263
    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    .line 264
    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/net/DataUsageController;->setNetworkController(Lcom/android/settingslib/net/DataUsageController$NetworkNameProvider;)V

    .line 266
    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/net/DataUsageController;->setCallback(Lcom/android/settingslib/net/DataUsageController$Callback;)V

    .line 272
    new-instance v10, Lcom/android/systemui/statusbar/policy/WifiSignalController;

    iget-object v1, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    iget-boolean v2, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    iget-object v3, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iget-object v5, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object v0, v10

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/WifiSignalController;-><init>(Landroid/content/Context;ZLcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/net/wifi/WifiManager;)V

    iput-object v10, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    .line 275
    new-instance v0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;

    iget-object v1, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    iget-object v2, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/systemui/statusbar/policy/EthernetSignalController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetSignalController:Lcom/android/systemui/statusbar/policy/EthernetSignalController;

    const/4 v0, 0x1

    .line 278
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateAirplaneMode(Z)V

    .line 279
    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$2;

    iget-object v2, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/content/Context;)V

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    .line 285
    iget-object v1, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v1}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    .line 286
    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;

    invoke-direct {v1, p0, v9}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V

    invoke-interface {v9, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 293
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    move-result-object v1

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mFiveGServiceClient:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    .line 294
    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$4;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 324
    iget-object v2, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v3, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, v3}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 326
    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$5;

    invoke-direct {v1, p0, v8}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$5;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/os/Looper;)V

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 335
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->initProvistionState()V

    .line 339
    const-class v1, Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/HotspotController;

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    .line 342
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->onSmartLinkChange(Z)V

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V
    .locals 14

    move-object v13, p0

    move-object v1, p1

    const-string v0, "connectivity"

    .line 222
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/net/ConnectivityManager;

    const-string v0, "phone"

    .line 223
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/telephony/TelephonyManager;

    const-string/jumbo v0, "wifi"

    .line 224
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 225
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v5

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->readConfig(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    move-result-object v6

    new-instance v8, Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-direct {v8}, Lcom/android/systemui/statusbar/policy/CallbackHandler;-><init>()V

    new-instance v9, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    invoke-direct {v9, p1}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;-><init>(Landroid/content/Context;)V

    new-instance v10, Lcom/android/settingslib/net/DataUsageController;

    invoke-direct {v10, p1}, Lcom/android/settingslib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    new-instance v11, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    invoke-direct {v11}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;-><init>()V

    move-object v0, p0

    move-object/from16 v7, p2

    move-object/from16 v12, p3

    .line 222
    invoke-direct/range {v0 .. v12}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;-><init>(Landroid/content/Context;Landroid/net/ConnectivityManager;Landroid/telephony/TelephonyManager;Landroid/net/wifi/WifiManager;Landroid/telephony/SubscriptionManager;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;Landroid/os/Looper;Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;Lcom/android/settingslib/net/DataUsageController;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V

    .line 231
    iget-object v0, v13, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    iget-object v1, v13, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRegisterListeners:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Lcom/android/systemui/statusbar/policy/CallbackHandler;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->onUserSwitched(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->onSmartLinkChange(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->setUserSetupComplete(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateConnectivity()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I
    .locals 0

    .line 120
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mActiveMobileDataSubscription:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/net/wifi/WifiManager;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateMobileControllers()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->registerListeners()V

    return-void
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z
    .locals 0

    .line 120
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOpActionTetherDialogShowing:Z

    return p1
.end method

.method private addSignalController(II)Landroid/telephony/SubscriptionInfo;
    .locals 29

    move-object/from16 v10, p0

    move/from16 v12, p1

    move/from16 v14, p2

    .line 1336
    new-instance v28, Landroid/telephony/SubscriptionInfo;

    move-object/from16 v11, v28

    const-string v13, ""

    const-string v15, ""

    const-string v16, ""

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, ""

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-string v24, ""

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v11 .. v27}, Landroid/telephony/SubscriptionInfo;-><init>(ILjava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Landroid/telephony/UiccAccessRule;Ljava/lang/String;)V

    .line 1338
    new-instance v11, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v1, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    iget-object v2, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v3, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    iget-object v0, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    .line 1340
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v4

    iget-object v5, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iget-object v8, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    iget-object v0, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    .line 1341
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v9

    move-object v0, v11

    move-object/from16 v6, p0

    move-object/from16 v7, v28

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/policy/MobileSignalController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;ZLandroid/telephony/TelephonyManager;Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/telephony/SubscriptionInfo;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;Landroid/os/Looper;)V

    .line 1342
    iget-object v0, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    move/from16 v1, p1

    invoke-virtual {v0, v1, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1343
    invoke-virtual {v11}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->userSetup:Z

    return-object v28
.end method

.method private checkVirtualSimcard()V
    .locals 7

    .line 1721
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_4

    .line 1724
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isSoftSIM(I)Z

    move-result v4

    .line 1726
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getVirtualPilot(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1727
    sget v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->SOFTSIM_DISABLE:I

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 1730
    sget v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->SOFTSIM_ENABLE_PILOT:I

    goto :goto_1

    :cond_0
    if-eqz v4, :cond_1

    if-nez v5, :cond_1

    .line 1732
    sget v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->SOFTSIM_ENABLE:I

    .line 1735
    :cond_1
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkVirtualSimcard slotId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " virtualSimState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NetworkController"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->softSimState:[I

    aget v5, v4, v2

    if-eq v6, v5, :cond_3

    .line 1738
    aput v6, v4, v2

    .line 1739
    sget v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->SOFTSIM_ENABLE_PILOT:I

    if-ne v6, v3, :cond_2

    .line 1741
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v1}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    :cond_2
    const/4 v3, 0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_5

    .line 1750
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->softSimState:[I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifySetVirtualSimstate([I)V

    :cond_5
    return-void
.end method

.method private static final emergencyToString(I)Ljava/lang/String;
    .locals 4

    const/16 v0, 0xc8

    const/16 v1, 0x12c

    const-string v2, ")"

    if-le p0, v1, :cond_0

    .line 1062
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ASSUMED_VOICE_CONTROLLER("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p0, v0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-le p0, v1, :cond_1

    .line 1065
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NO_SUB("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-le p0, v0, :cond_2

    .line 1067
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VOICE_CONTROLLER("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p0, v0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 v0, 0x64

    if-le p0, v0, :cond_3

    .line 1069
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FIRST_CONTROLLER("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p0, v0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    if-nez p0, :cond_4

    const-string p0, "NO_CONTROLLERS"

    return-object p0

    :cond_4
    const-string p0, "UNKNOWN_SOURCE"

    return-object p0
.end method

.method private filterMobileSubscriptionInSameGroup(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    .line 733
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    .line 734
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    const/4 v1, 0x1

    .line 735
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 736
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 738
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 742
    :cond_0
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v2

    const-string v3, "always_show_primary_signal_bar_in_opportunistic_network_boolean"

    .line 743
    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 746
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 748
    :cond_2
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    iget p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mActiveMobileDataSubscription:I

    if-ne v2, p0, :cond_3

    move-object v0, v1

    :cond_3
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    return-void
.end method

.method private getDataController()Lcom/android/systemui/statusbar/policy/MobileSignalController;
    .locals 4

    .line 455
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;->getDefaultDataSubId()I

    move-result v0

    .line 456
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    const-string v2, "NetworkController"

    if-nez v1, :cond_1

    .line 457
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "No data sim selected"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDefaultSignalController:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    return-object p0

    .line 460
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_2

    .line 461
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    return-object p0

    .line 463
    :cond_2
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find controller for data sub: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDefaultSignalController:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    return-object p0
.end method

.method private getMultiLTEIcons([I)[Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .locals 8

    .line 1570
    array-length v0, p1

    new-array v0, v0, [I

    .line 1571
    array-length v1, p1

    new-array v1, v1, [Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 1576
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mProvisionState:[I

    array-length v6, v5

    const/4 v7, 0x1

    if-ge v3, v6, :cond_1

    .line 1577
    aget v5, v5, v3

    if-ne v5, v7, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-le v4, v7, :cond_2

    .line 1583
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-le v3, v7, :cond_2

    move v3, v7

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    if-lez v4, :cond_9

    .line 1589
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/oneplus/util/OpUtils;->isSupportShowVoLTE(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1591
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportShowHD()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1593
    aget v4, p1, v2

    if-nez v4, :cond_3

    .line 1594
    sget v4, Lcom/oneplus/signal/OpSignalIcons;->HD_UNAVAILABLE:I

    aput v4, v0, v2

    goto :goto_2

    .line 1595
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/oneplus/util/OpUtils;->isSupportMultiLTEstatus(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    aget v4, p1, v2

    if-lez v4, :cond_4

    aget v4, p1, v2

    sget-object v5, Lcom/oneplus/signal/OpSignalIcons;->HD_ICONS:[I

    array-length v6, v5

    if-gt v4, v6, :cond_4

    .line 1597
    aget v4, p1, v2

    sub-int/2addr v4, v7

    aget v4, v5, v4

    aput v4, v0, v2

    goto :goto_2

    .line 1599
    :cond_4
    sget v4, Lcom/oneplus/signal/OpSignalIcons;->HD:I

    aput v4, v0, v2

    goto :goto_2

    .line 1603
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/oneplus/util/OpUtils;->isSupportMultiLTEstatus(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz v3, :cond_6

    aget v4, p1, v2

    if-lez v4, :cond_6

    aget v4, p1, v2

    sget-object v5, Lcom/oneplus/signal/OpSignalIcons;->VOLTE_ICONS:[I

    array-length v6, v5

    if-gt v4, v6, :cond_6

    .line 1605
    aget v4, p1, v2

    sub-int/2addr v4, v7

    aget v4, v5, v4

    aput v4, v0, v2

    goto :goto_2

    .line 1607
    :cond_6
    aget v4, p1, v2

    if-lez v4, :cond_7

    .line 1608
    sget v4, Lcom/oneplus/signal/OpSignalIcons;->VOLTE:I

    aput v4, v0, v2

    .line 1614
    :cond_7
    :goto_2
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportShowVoWifi()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1615
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oneplus/util/OpUtils;->isSupportMultiLTEstatus(Landroid/content/Context;)Z

    move-result p0

    const/4 v4, 0x2

    if-eqz p0, :cond_8

    if-eqz v3, :cond_8

    aget p0, p1, v4

    if-lez p0, :cond_8

    aget p0, p1, v4

    sget-object v3, Lcom/oneplus/signal/OpSignalIcons;->VOWIFI_ICONS:[I

    array-length v5, v3

    if-gt p0, v5, :cond_8

    .line 1617
    aget p0, p1, v4

    sub-int/2addr p0, v7

    aget p0, v3, p0

    aput p0, v0, v4

    goto :goto_3

    .line 1619
    :cond_8
    aget p0, p1, v4

    if-lez p0, :cond_9

    .line 1620
    sget p0, Lcom/oneplus/signal/OpSignalIcons;->VOWIFI:I

    aput p0, v0, v4

    :cond_9
    :goto_3
    move p0, v2

    .line 1627
    :goto_4
    array-length p1, v1

    if-ge p0, p1, :cond_b

    .line 1628
    aget p1, v0, p0

    if-lez p1, :cond_a

    move p1, v7

    goto :goto_5

    :cond_a
    move p1, v2

    .line 1629
    :goto_5
    new-instance v3, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    aget v4, v0, p0

    const/4 v5, 0x0

    invoke-direct {v3, p1, v4, v5}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 1630
    aput-object v3, v1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_4

    :cond_b
    return-object v1
.end method

.method private getSlotProvisionStatus(II)I
    .locals 5

    const-string v0, " Exception: "

    const-string v1, "Failed to get pref, slotId: "

    const-string v2, "NetworkController"

    .line 1678
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    if-nez v3, :cond_0

    const-string v3, "extphone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lorg/codeaurora/internal/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    :cond_0
    const/4 v3, 0x0

    .line 1681
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    invoke-interface {v4, p1}, Lorg/codeaurora/internal/IExtTelephony;->getCurrentUiccCardProvisioningStatus(I)I

    move-result p2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 1688
    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    .line 1689
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v4

    .line 1684
    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    .line 1685
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getSlotProvisionStatus slotId: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", status = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method private getVirtualPilot(Landroid/content/Context;I)Ljava/lang/String;
    .locals 9

    const-string p0, "NetworkController"

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1794
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "slot=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1795
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->SOFTSIM_URL:Landroid/net/Uri;

    const-string/jumbo p1, "slot"

    const-string v2, "iccid"

    const-string v5, "permit_package"

    const-string v6, "forbid_package"

    const-string v7, "pilot"

    filled-new-array {p1, v2, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v5

    .line 1796
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string/jumbo v8, "slot"

    .line 1795
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1799
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1800
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x4

    .line 1801
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1802
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 1804
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1807
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVirtualIccid SQLiteException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    :cond_2
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Virtual sim slot:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " pilot = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private handleSetUserSetupComplete(Z)V
    .locals 2

    .line 897
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mUserSetup:Z

    const/4 p1, 0x0

    .line 898
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 899
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 900
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mUserSetup:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setUserSetupComplete(Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private hasAnySim()Z
    .locals 5

    .line 792
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 794
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    if-eqz v3, :cond_0

    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private hasSimReady()Z
    .locals 5

    .line 1837
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 1839
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method private initProvistionState()V
    .locals 3

    const-string v0, "NetworkController"

    const-string v1, "init provision"

    .line 1699
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    invoke-static {}, Lcom/oneplus/util/OpUtils;->getSimCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1705
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mProvisionState:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1706
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getSlotProvisionStatus(II)I

    move-result v2

    .line 1707
    invoke-direct {p0, v0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->onProvisionChange(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isSoftSIM(I)Z
    .locals 10

    const-string v0, "isSoftSIM"

    const-string v1, "NetworkController"

    .line 1761
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    if-nez v2, :cond_0

    const-string v2, "extphone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lorg/codeaurora/internal/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    :cond_0
    const/4 v2, 0x0

    .line 1763
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    if-eqz v3, :cond_2

    .line 1764
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "phone"

    .line 1766
    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1767
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSoftSIM slot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "generalGetter"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v2

    const-class v8, Landroid/os/Bundle;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1769
    invoke-virtual {v4, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1770
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v0, v5, v2

    aput-object v3, v5, v9

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    .line 1771
    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v0, "slot "

    if-eqz p0, :cond_1

    .line 1772
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is softsim"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    .line 1775
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is NOT softsim"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1779
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return v2
.end method

.method static synthetic lambda$opActionTetherErrorAlertDialog$1(Landroid/app/AlertDialog;Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, -0x1

    .line 1867
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    const/high16 p1, -0x10000

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method private notifyAllListeners()V
    .locals 2

    .line 959
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyListeners()V

    const/4 v0, 0x0

    .line 960
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 961
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 962
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListeners()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 964
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListeners()V

    .line 965
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetSignalController:Lcom/android/systemui/statusbar/policy/EthernetSignalController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListeners()V

    return-void
.end method

.method private notifyListeners()V
    .locals 6

    .line 974
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    sget v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FLIGHT_MODE_ICON:I

    sget v4, Lcom/android/systemui/R$string;->accessibility_airplane_mode:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZIILandroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V

    .line 976
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasNoSubs:Z

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimDetected:Z

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setNoSims(ZZ)V

    return-void
.end method

.method private notifySetVirtualSimstate([I)V
    .locals 2

    .line 1815
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setVirtualSimstate([I)V

    const/4 v0, 0x0

    .line 1816
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1817
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 1818
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setVirtualSimstate([I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onProvisionChange(II)V
    .locals 2

    .line 1662
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mProvisionState:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    return-void

    .line 1665
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProvisionChange slotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " provi:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mProvisionState:[I

    aput p2, v0, p1

    .line 1668
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->onLTEStatusUpdate()V

    .line 1670
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    if-eqz p0, :cond_1

    .line 1671
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setProvision(II)V

    :cond_1
    return-void
.end method

.method private onSmartLinkChange(Z)V
    .locals 6

    .line 1880
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 1883
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1885
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "oneplus_smart_link_selection"

    .line 1884
    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 1887
    :goto_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    const-string v5, "download_smart_link_aggregation"

    .line 1886
    invoke-static {v0, v5, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    or-int v0, v1, v3

    .line 1890
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " smartLinkStateEnable:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " smartLinkSelection:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " smartLinkAggregation:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "NetworkController"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSmartLinkEnable:Z

    if-ne v0, v1, :cond_3

    if-eqz p1, :cond_5

    .line 1895
    :cond_3
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSmartLinkEnable:Z

    .line 1896
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v2, p1, :cond_4

    .line 1897
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 1898
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSmartLinkEnable:Z

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setSmartLinkEnable(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1900
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyListeners()V

    :cond_5
    return-void
.end method

.method private onUserSwitched(I)V
    .locals 1

    .line 574
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentUserId:I

    .line 575
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAccessPoints:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->onUserSwitched(I)V

    .line 576
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateConnectivity()V

    return-void
.end method

.method private opActionTetherErrorAlertDialog()V
    .locals 5

    .line 1848
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOpActionTetherDialogShowing:Z

    if-eqz v0, :cond_0

    return-void

    .line 1849
    :cond_0
    sget v0, Lcom/android/systemui/R$string;->hotspot_operator_dialog_othererror_title:I

    .line 1850
    sget v1, Lcom/android/systemui/R$string;->hotspot_operator_dialog_othererror_msg:I

    .line 1851
    sget v2, Lcom/android/systemui/R$string;->hotspot_operator_dialog_othererror_button:I

    .line 1853
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1855
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1856
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 1857
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$10;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$10;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 1858
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1863
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1864
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7de

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 1866
    new-instance v1, Lcom/android/systemui/statusbar/policy/-$$Lambda$NetworkControllerImpl$FcDSR0-rS1SYrjMiK_HEZAe_XEU;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/policy/-$$Lambda$NetworkControllerImpl$FcDSR0-rS1SYrjMiK_HEZAe_XEU;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    const/4 v1, 0x1

    .line 1869
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOpActionTetherDialogShowing:Z

    .line 1870
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private pushConnectivityToSignals()V
    .locals 4

    const/4 v0, 0x0

    .line 1010
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1011
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 1012
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1014
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/SignalController;->updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V

    .line 1015
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetSignalController:Lcom/android/systemui/statusbar/policy/EthernetSignalController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V

    .line 1018
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkSpeedController:Lcom/oneplus/networkspeed/NetworkSpeedController;

    if-eqz v0, :cond_1

    .line 1019
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-interface {v0, v1, p0}, Lcom/oneplus/networkspeed/NetworkSpeedController;->updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V

    :cond_1
    return-void
.end method

.method private refreshLocale()V
    .locals 2

    .line 946
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 947
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 948
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    .line 949
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->refreshLocale()V

    .line 950
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyAllListeners()V

    :cond_0
    return-void
.end method

.method private registerListeners()V
    .locals 5

    const/4 v0, 0x0

    .line 351
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 352
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 353
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->registerListener()V

    .line 354
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mFiveGServiceClient:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->registerFiveGStateListener(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 357
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubListener;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubListener;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v2}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 360
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/high16 v3, 0x400000

    invoke-virtual {v0, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 363
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.wifi.RSSI_CHANGED"

    .line 364
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 365
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.wifi.STATE_CHANGE"

    .line 366
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    .line 367
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 368
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    .line 369
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SERVICE_STATE"

    .line 370
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    .line 371
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 372
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.conn.INET_CONDITION_ACTION"

    .line 373
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    .line 374
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 375
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    .line 376
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.setupDataError_tether"

    .line 378
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_ON"

    .line 381
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 388
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isReallyHasOneSim()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_2

    const-string v2, "org.codeaurora.intent.action.ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED"

    .line 391
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 396
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    invoke-virtual {v2, p0, v0, v1, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 397
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mListening:Z

    .line 400
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportShowDualChannel()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 401
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSettingObserver:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SettingObserver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SettingObserver;->observe()V

    .line 404
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateMobileControllers()V

    return-void
.end method

.method private setUserSetupComplete(Z)V
    .locals 2

    .line 893
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/policy/-$$Lambda$NetworkControllerImpl$ip_KPuTyKF5u8IR4L3OPJ6WObYU;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/policy/-$$Lambda$NetworkControllerImpl$ip_KPuTyKF5u8IR4L3OPJ6WObYU;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private unregisterListeners()V
    .locals 3

    const/4 v0, 0x0

    .line 408
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mListening:Z

    .line 409
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 410
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 411
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->unregisterListener()V

    .line 412
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mFiveGServiceClient:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->unregisterFiveGStateListener(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 415
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 417
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportShowDualChannel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSettingObserver:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SettingObserver;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SettingObserver;->unObserve()V

    :cond_1
    return-void
.end method

.method private updateAirplaneMode(Z)V
    .locals 4

    .line 928
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "airplane_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 931
    :goto_0
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 932
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateAirplaneMode: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " new: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " force: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "NetworkController"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    if-ne v2, v0, :cond_2

    if-eqz p1, :cond_4

    .line 936
    :cond_2
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    .line 937
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v1, p1, :cond_3

    .line 938
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 939
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setAirplaneMode(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 941
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyListeners()V

    :cond_4
    return-void
.end method

.method private updateConnectivity()V
    .locals 10

    .line 983
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 984
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 986
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getDefaultNetworkCapabilitiesForUser(I)[Landroid/net/NetworkCapabilities;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 987
    invoke-virtual {v4}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v5

    array-length v6, v5

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_1

    aget v8, v5, v7

    .line 988
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    invoke-virtual {v9, v8}, Ljava/util/BitSet;->set(I)V

    const/16 v9, 0x10

    .line 989
    invoke-virtual {v4, v9}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 990
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v9, v8}, Ljava/util/BitSet;->set(I)V

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 995
    :cond_2
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->CHATTY:Z

    if-eqz v0, :cond_3

    .line 996
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateConnectivity: mConnectedTransports="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateConnectivity: mValidatedTransports="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:Z

    .line 1002
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->pushConnectivityToSignals()V

    return-void
.end method

.method private updateMobileControllers()V
    .locals 1

    .line 726
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mListening:Z

    if-nez v0, :cond_0

    return-void

    .line 729
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->doUpdateMobileControllers()V

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V
    .locals 5

    .line 527
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSubscriptions:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setSubs(Ljava/util/List;)V

    .line 528
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    sget v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FLIGHT_MODE_ICON:I

    sget v3, Lcom/android/systemui/R$string;->accessibility_airplane_mode:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZIILandroid/content/Context;)V

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V

    .line 530
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasNoSubs:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimDetected:Z

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setNoSims(ZZ)V

    .line 531
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->notifyListeners(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 532
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetSignalController:Lcom/android/systemui/statusbar/policy/EthernetSignalController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->notifyListeners(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    const/4 v0, 0x0

    move v1, v0

    .line 533
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 534
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 535
    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListeners(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 537
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setListening(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;Z)V

    .line 539
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLTEIconStates:[Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    invoke-interface {p1, v1}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setLTEStatus([Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V

    .line 543
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mProvisionState:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 544
    aget v1, v1, v0

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setProvision(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 549
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->softSimState:[I

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setVirtualSimstate([I)V

    .line 553
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasSimReady()Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setHasAnySimReady(Z)V

    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 119
    check-cast p1, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1082
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    const-string v4, "NetworkController"

    const/4 v5, 0x1

    if-nez v3, :cond_1

    const-string v3, "enter"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1083
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Entering demo mode"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->unregisterListeners()V

    .line 1085
    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    .line 1086
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:Z

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:Z

    .line 1087
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiState:Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    .line 1088
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiState:Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    const-string v1, "DemoMode"

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    goto/16 :goto_20

    .line 1089
    :cond_1
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    const/4 v6, 0x0

    if-eqz v3, :cond_4

    const-string v3, "exit"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1090
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "Exiting demo mode"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    :cond_2
    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    .line 1094
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateMobileControllers()V

    .line 1095
    :goto_0
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v6, v1, :cond_3

    .line 1096
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 1097
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/SignalController;->resetLastState()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1099
    :cond_3
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/SignalController;->resetLastState()V

    .line 1100
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRegisterListeners:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1101
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyAllListeners()V

    goto/16 :goto_20

    .line 1102
    :cond_4
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    if-eqz v3, :cond_50

    const-string v3, "network"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    const-string v1, "airplane"

    .line 1103
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "show"

    if-eqz v1, :cond_5

    .line 1105
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1106
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    new-instance v7, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    sget v8, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FLIGHT_MODE_ICON:I

    sget v9, Lcom/android/systemui/R$string;->accessibility_airplane_mode:I

    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v7, v1, v8, v9, v10}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZIILandroid/content/Context;)V

    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V

    :cond_5
    const-string v1, "fully"

    .line 1110
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 1112
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:Z

    .line 1113
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    .line 1115
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:Z

    if-eqz v4, :cond_6

    .line 1116
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    iget v4, v4, Lcom/android/systemui/statusbar/policy/SignalController;->mTransportType:I

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 1118
    :cond_6
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v4, v1, v1}, Lcom/android/systemui/statusbar/policy/SignalController;->updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V

    move v4, v6

    .line 1119
    :goto_1
    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v4, v7, :cond_8

    .line 1120
    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 1121
    iget-boolean v8, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:Z

    if-eqz v8, :cond_7

    .line 1122
    iget v8, v7, Lcom/android/systemui/statusbar/policy/SignalController;->mTransportType:I

    invoke-virtual {v1, v8}, Ljava/util/BitSet;->set(I)V

    .line 1124
    :cond_7
    invoke-virtual {v7, v1, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    const-string/jumbo v1, "wifi"

    .line 1127
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v4, 0x1af4e

    const/16 v7, 0xd25

    const-string v8, "activity"

    const-string v9, "level"

    const-string v10, "null"

    const/4 v12, 0x2

    if-eqz v1, :cond_16

    .line 1129
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1130
    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_b

    .line 1132
    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiState:Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    const/4 v13, -0x1

    goto :goto_2

    .line 1133
    :cond_9
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    sget v15, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    sub-int/2addr v15, v5

    invoke-static {v13, v15}, Ljava/lang/Math;->min(II)I

    move-result v13

    :goto_2
    iput v13, v14, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    .line 1134
    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiState:Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v14, v13, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    if-ltz v14, :cond_a

    move v14, v5

    goto :goto_3

    :cond_a
    move v14, v6

    :goto_3
    iput-boolean v14, v13, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    :cond_b
    const-string v13, "inflate"

    .line 1136
    invoke-virtual {v2, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c

    move v14, v6

    .line 1137
    :goto_4
    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v15

    if-ge v14, v15, :cond_c

    .line 1138
    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v15, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 1139
    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v6, "true"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, v15, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mInflateSignalStrengths:Z

    add-int/lit8 v14, v14, 0x1

    const/4 v6, 0x0

    goto :goto_4

    .line 1142
    :cond_c
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_14

    .line 1144
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v11

    if-eq v11, v7, :cond_f

    if-eq v11, v4, :cond_e

    const v13, 0x5fb5409

    if-eq v11, v13, :cond_d

    goto :goto_5

    :cond_d
    const-string v11, "inout"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    const/4 v6, 0x0

    goto :goto_6

    :cond_e
    const-string v11, "out"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    move v6, v12

    goto :goto_6

    :cond_f
    const-string v11, "in"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    move v6, v5

    goto :goto_6

    :cond_10
    :goto_5
    const/4 v6, -0x1

    :goto_6
    if-eqz v6, :cond_13

    if-eq v6, v5, :cond_12

    if-eq v6, v12, :cond_11

    .line 1155
    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->setActivity(I)V

    goto :goto_7

    .line 1152
    :cond_11
    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v6, v12}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->setActivity(I)V

    goto :goto_7

    .line 1149
    :cond_12
    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v6, v5}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->setActivity(I)V

    goto :goto_7

    .line 1146
    :cond_13
    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    const/4 v11, 0x3

    invoke-virtual {v6, v11}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->setActivity(I)V

    goto :goto_7

    .line 1159
    :cond_14
    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->setActivity(I)V

    :goto_7
    const-string/jumbo v6, "ssid"

    .line 1161
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_15

    .line 1163
    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiState:Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iput-object v6, v11, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    .line 1165
    :cond_15
    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiState:Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iput-boolean v1, v6, Lcom/android/systemui/statusbar/policy/SignalController$State;->enabled:Z

    .line 1166
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListeners()V

    :cond_16
    const-string/jumbo v1, "sims"

    .line 1168
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x8

    if-eqz v1, :cond_18

    .line 1170
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v5, v6}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    .line 1171
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1172
    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-eq v1, v13, :cond_18

    .line 1173
    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->clear()V

    .line 1174
    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v13}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCountMax()I

    move-result v13

    move v14, v13

    :goto_8
    add-int v15, v13, v1

    if-ge v14, v15, :cond_17

    .line 1176
    invoke-direct {v0, v14, v14}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->addSignalController(II)Landroid/telephony/SubscriptionInfo;

    move-result-object v15

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    .line 1178
    :cond_17
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-virtual {v1, v11}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setSubs(Ljava/util/List;)V

    const/4 v1, 0x0

    .line 1179
    :goto_9
    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v1, v11, :cond_18

    .line 1180
    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v11, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    .line 1181
    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v13, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 1182
    invoke-virtual {v11}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListeners()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_18
    const-string v1, "nosim"

    .line 1186
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 1188
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasNoSubs:Z

    .line 1189
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iget-boolean v11, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasNoSubs:Z

    iget-boolean v13, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimDetected:Z

    invoke-virtual {v1, v11, v13}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setNoSims(ZZ)V

    :cond_19
    const-string v1, "mobile"

    .line 1191
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4f

    .line 1193
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v11, "datatype"

    .line 1194
    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v13, "slot"

    .line 1195
    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1196
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1a

    const/4 v13, 0x0

    goto :goto_a

    :cond_1a
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    :goto_a
    const/4 v14, 0x0

    .line 1197
    invoke-static {v13, v14, v6}, Landroid/util/MathUtils;->constrain(III)I

    move-result v13

    .line 1199
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1200
    :goto_b
    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v15

    if-gt v15, v13, :cond_1b

    .line 1201
    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v15

    .line 1202
    invoke-direct {v0, v15, v15}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->addSignalController(II)Landroid/telephony/SubscriptionInfo;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 1204
    :cond_1b
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_1c

    .line 1205
    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-virtual {v15, v14}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setSubs(Ljava/util/List;)V

    .line 1208
    :cond_1c
    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v14, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 1209
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    if-eqz v11, :cond_1d

    move v15, v5

    goto :goto_c

    :cond_1d
    const/4 v15, 0x0

    :goto_c
    iput-boolean v15, v14, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    .line 1210
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    if-eqz v11, :cond_1e

    move v15, v5

    goto :goto_d

    :cond_1e
    const/4 v15, 0x0

    :goto_d
    iput-boolean v15, v14, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    .line 1211
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    if-eqz v11, :cond_1f

    move v15, v5

    goto :goto_e

    :cond_1f
    const/4 v15, 0x0

    :goto_e
    iput-boolean v15, v14, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    const-string v14, "lte+"

    const-string v15, "lte"

    if-eqz v11, :cond_31

    .line 1213
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const-string v12, "1x"

    .line 1214
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_20

    sget-object v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_f

    :cond_20
    const-string v12, "2g"

    .line 1216
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_21

    sget-object v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TWO_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_f

    :cond_21
    const-string v12, "3g"

    .line 1218
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_22

    sget-object v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_f

    :cond_22
    const-string v12, "3g+"

    .line 1220
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_23

    sget-object v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_f

    :cond_23
    const-string v12, "4g"

    .line 1222
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_24

    sget-object v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_f

    :cond_24
    const-string v12, "4g+"

    .line 1223
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_25

    sget-object v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_f

    :cond_25
    const-string v12, "e"

    .line 1224
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_26

    sget-object v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_f

    :cond_26
    const-string v12, "g"

    .line 1225
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_27

    sget-object v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_f

    :cond_27
    const-string v12, "h"

    .line 1226
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_28

    sget-object v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_f

    :cond_28
    const-string v12, "h+"

    .line 1227
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_29

    sget-object v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_f

    .line 1228
    :cond_29
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2a

    sget-object v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_f

    .line 1229
    :cond_2a
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2b

    sget-object v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_f

    :cond_2b
    const-string v12, "dis"

    .line 1230
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2c

    sget-object v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_f

    :cond_2c
    const-string v12, "not"

    .line 1231
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2d

    sget-object v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->NOT_DEFAULT_DATA:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_f

    :cond_2d
    const-string v12, "4glte"

    .line 1234
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2e

    sget-object v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_f

    :cond_2e
    const-string v12, "5g"

    .line 1237
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2f

    sget-object v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FIVE_G_BASIC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_f

    :cond_2f
    const-string v12, "5g_uwb"

    .line 1238
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_30

    sget-object v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FIVE_G_UWB:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_f

    .line 1240
    :cond_30
    sget-object v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    :goto_f
    iput-object v12, v6, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    :cond_31
    const-string v6, "roam"

    .line 1242
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 1243
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const-string v12, "roam"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    iput-boolean v12, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roaming:Z

    .line 1245
    :cond_32
    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_35

    .line 1247
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_33

    const/4 v6, -0x1

    goto :goto_10

    .line 1248
    :cond_33
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sget v12, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    invoke-static {v6, v12}, Ljava/lang/Math;->min(II)I

    move-result v6

    :goto_10
    iput v6, v9, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    .line 1250
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v9, v9, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    if-ltz v9, :cond_34

    move v9, v5

    goto :goto_11

    :cond_34
    const/4 v9, 0x0

    :goto_11
    iput-boolean v9, v6, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    :cond_35
    const-string v6, "rsrp"

    .line 1254
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_38

    .line 1256
    iget-object v9, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mFiveGServiceClient:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v9, v12}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->getRsrpLevel(I)I

    move-result v9

    .line 1257
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_36

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v6, v6, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    goto :goto_12

    .line 1258
    :cond_36
    sget v6, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    invoke-static {v9, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    :goto_12
    iput v6, v12, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    .line 1260
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v9, v9, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    if-ltz v9, :cond_37

    move v9, v5

    goto :goto_13

    :cond_37
    const/4 v9, 0x0

    :goto_13
    iput-boolean v9, v6, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    :cond_38
    const-string/jumbo v6, "stack"

    .line 1265
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_45

    if-eqz v11, :cond_45

    .line 1267
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_45

    .line 1269
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v6, v6, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    .line 1270
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v9, v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roaming:Z

    .line 1272
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v10, v10, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    move-object/from16 v18, v10

    check-cast v18, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v10, "1x"

    .line 1274
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3a

    :cond_39
    const/4 v10, 0x7

    :goto_14
    move/from16 v20, v10

    goto :goto_18

    :cond_3a
    const-string v10, "g"

    .line 1275
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3b

    move/from16 v20, v5

    goto :goto_18

    :cond_3b
    const-string v10, "2g"

    .line 1276
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3c

    const/4 v10, 0x4

    goto :goto_14

    :cond_3c
    const-string v10, "3g"

    .line 1277
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3d

    const/16 v10, 0x11

    goto :goto_14

    :cond_3d
    const-string v10, "4g"

    .line 1278
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3e

    :goto_15
    const/16 v10, 0xd

    goto :goto_14

    :cond_3e
    const-string v10, "4g+"

    .line 1279
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3f

    :goto_16
    const/16 v10, 0x13

    goto :goto_14

    :cond_3f
    const-string v10, "h"

    .line 1280
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_40

    :goto_17
    const/16 v20, 0x8

    goto :goto_18

    :cond_40
    const-string v10, "h+"

    .line 1281
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_41

    goto :goto_17

    .line 1282
    :cond_41
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_42

    goto :goto_15

    .line 1283
    :cond_42
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_39

    goto :goto_16

    .line 1286
    :goto_18
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_44

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_43

    goto :goto_19

    :cond_43
    const/16 v24, 0x0

    goto :goto_1a

    :cond_44
    :goto_19
    move/from16 v24, v5

    .line 1287
    :goto_1a
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    new-instance v11, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-object/from16 v17, v11

    move/from16 v19, v20

    move/from16 v21, v6

    move/from16 v22, v6

    move/from16 v23, v9

    invoke-direct/range {v17 .. v24}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;IIIIZZ)V

    iput-object v11, v10, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    :cond_45
    const-string/jumbo v6, "virtual"

    .line 1293
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 1294
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const-string/jumbo v9, "virtual"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    iput-boolean v9, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isVirtual:Z

    .line 1298
    :cond_46
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4e

    .line 1300
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean v5, v8, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    .line 1301
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    if-eq v8, v7, :cond_49

    if-eq v8, v4, :cond_48

    const v4, 0x5fb5409

    if-eq v8, v4, :cond_47

    goto :goto_1b

    :cond_47
    const-string v4, "inout"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    const/4 v4, 0x0

    goto :goto_1c

    :cond_48
    const-string v4, "out"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    const/4 v4, 0x2

    goto :goto_1c

    :cond_49
    const-string v4, "in"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    move v4, v5

    goto :goto_1c

    :cond_4a
    :goto_1b
    const/4 v4, -0x1

    :goto_1c
    if-eqz v4, :cond_4d

    if-eq v4, v5, :cond_4c

    const/4 v6, 0x2

    if-eq v4, v6, :cond_4b

    const/4 v11, 0x0

    .line 1312
    invoke-virtual {v13, v11}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setActivity(I)V

    goto :goto_1d

    :cond_4b
    const/4 v11, 0x0

    .line 1309
    invoke-virtual {v13, v6}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setActivity(I)V

    goto :goto_1d

    :cond_4c
    const/4 v11, 0x0

    .line 1306
    invoke-virtual {v13, v5}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setActivity(I)V

    goto :goto_1d

    :cond_4d
    const/4 v11, 0x0

    const/4 v4, 0x3

    .line 1303
    invoke-virtual {v13, v4}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setActivity(I)V

    goto :goto_1d

    :cond_4e
    const/4 v11, 0x0

    .line 1316
    invoke-virtual {v13, v11}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setActivity(I)V

    .line 1318
    :goto_1d
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean v1, v4, Lcom/android/systemui/statusbar/policy/SignalController$State;->enabled:Z

    .line 1320
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean v1, v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDemoMode:Z

    .line 1322
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListeners()V

    goto :goto_1e

    :cond_4f
    const/4 v11, 0x0

    :goto_1e
    const-string v1, "carriernetworkchange"

    .line 1324
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 1326
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1327
    :goto_1f
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v11, v2, :cond_50

    .line 1328
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 1329
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setCarrierNetworkChangeMode(Z)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1f

    :cond_50
    :goto_20
    return-void
.end method

.method doUpdateMobileControllers()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 757
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const/4 v1, 0x0

    .line 758
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList(Z)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 760
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 763
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->filterMobileSubscriptionInSameGroup(Ljava/util/List;)V

    .line 766
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasCorrectMobileControllers(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 770
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateNoSims()V

    return-void

    .line 773
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 774
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->setCurrentSubscriptionsLocked(Ljava/util/List;)V

    .line 775
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 776
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateNoSims()V

    .line 777
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->recalculateEmergency()V

    return-void

    :catchall_0
    move-exception p0

    .line 775
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "NetworkController state:"

    .line 1025
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  - telephony ------"

    .line 1027
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  hasVoiceCallingFeature()="

    .line 1028
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1029
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasVoiceCallingFeature()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  - connectivity ------"

    .line 1031
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  mConnectedTransports="

    .line 1032
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1033
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p1, "  mValidatedTransports="

    .line 1034
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1035
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p1, "  mInetCondition="

    .line 1036
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1037
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mAirplaneMode="

    .line 1038
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1039
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mLocale="

    .line 1040
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1041
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p1, "  mLastServiceState="

    .line 1042
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1043
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p1, "  mIsEmergency="

    .line 1044
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1045
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsEmergency:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mEmergencySource="

    .line 1046
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1047
    iget p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmergencySource:I

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->emergencyToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1049
    :goto_0
    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p1, p3, :cond_0

    .line 1050
    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 1051
    invoke-virtual {p3, p2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->dump(Ljava/io/PrintWriter;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1053
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/policy/SignalController;->dump(Ljava/io/PrintWriter;)V

    .line 1055
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetSignalController:Lcom/android/systemui/statusbar/policy/EthernetSignalController;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/policy/SignalController;->dump(Ljava/io/PrintWriter;)V

    .line 1057
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAccessPoints:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getAccessPointController()Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;
    .locals 0

    .line 429
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAccessPoints:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    return-object p0
.end method

.method public getDataSaverController()Lcom/android/systemui/statusbar/policy/DataSaverController;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    return-object p0
.end method

.method public getMobileDataController()Lcom/android/settingslib/net/DataUsageController;
    .locals 0

    .line 434
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    return-object p0
.end method

.method public getMobileDataNetworkName()Ljava/lang/String;
    .locals 0

    .line 469
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getDataController()Lcom/android/systemui/statusbar/policy/MobileSignalController;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 470
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method handleConfigurationChanged()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 717
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateMobileControllers()V

    const/4 v0, 0x0

    .line 718
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 719
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 720
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setConfiguration(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 722
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshLocale()V

    return-void
.end method

.method hasCorrectMobileControllers(Ljava/util/List;)Z
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)Z"
        }
    .end annotation

    .line 906
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 909
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 910
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_2

    return v2

    .line 915
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    if-eqz v1, :cond_1

    .line 917
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v3

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 918
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "hasCorrectMobileControllers SubId:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " change from:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NetworkController"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public hasEmergencyCryptKeeperText()Z
    .locals 0

    .line 1348
    sget-boolean p0, Lcom/android/systemui/statusbar/policy/EncryptionHelper;->IS_DATA_ENCRYPTED:Z

    return p0
.end method

.method public hasMobileDataFeature()Z
    .locals 0

    .line 447
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    return p0
.end method

.method public hasVoiceCallingFeature()Z
    .locals 0

    .line 451
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEmergencyOnly()Z
    .locals 7

    .line 479
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 482
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmergencySource:I

    .line 483
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastServiceState:Landroid/telephony/ServiceState;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 485
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;->getDefaultVoiceSubId()I

    move-result v0

    .line 486
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    const-string v4, "NetworkController"

    if-nez v3, :cond_4

    move v3, v2

    .line 487
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 488
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 489
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v6, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    if-nez v6, :cond_3

    .line 490
    iget-object v0, v5, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 491
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    add-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmergencySource:I

    .line 492
    sget-boolean p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Found emergency "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v5, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 497
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_6

    add-int/lit16 v1, v0, 0xc8

    .line 498
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmergencySource:I

    .line 499
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting emergency from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    return p0

    .line 504
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ne v3, v1, :cond_8

    .line 505
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    .line 506
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x190

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmergencySource:I

    .line 507
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Getting assumed emergency from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    .line 508
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 507
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    return p0

    .line 511
    :cond_8
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find controller for voice sub: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    add-int/lit16 v0, v0, 0x12c

    .line 512
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmergencySource:I

    return v1
.end method

.method public isRadioOn()Z
    .locals 0

    .line 1352
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public synthetic lambda$setUserSetupComplete$0$NetworkControllerImpl(Z)V
    .locals 0

    .line 893
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->handleSetUserSetupComplete(Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 706
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->readConfig(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    .line 707
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$7;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLTEStatusUpdate()V
    .locals 10

    .line 1511
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x6

    const/4 v1, 0x2

    .line 1514
    filled-new-array {v1, v0}, [I

    move-result-object v2

    const-class v3, Z

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Z

    new-array v0, v0, [I

    .line 1516
    fill-array-data v0, :array_0

    const/4 v3, 0x0

    move v4, v3

    .line 1518
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 1519
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 1520
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getLTEStatus()[Z

    move-result-object v6

    move v7, v3

    .line 1521
    :goto_1
    array-length v8, v6

    if-ge v7, v8, :cond_2

    .line 1522
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v8

    array-length v9, v2

    if-ge v8, v9, :cond_1

    .line 1523
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v8

    aget-object v8, v2, v8

    aget-boolean v9, v6, v7

    aput-boolean v9, v8, v7

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1528
    :cond_3
    aget-object v4, v2, v3

    aget-boolean v4, v4, v3

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eqz v4, :cond_4

    aget-object v4, v2, v6

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_4

    aput v5, v0, v3

    goto :goto_2

    .line 1530
    :cond_4
    aget-object v4, v2, v3

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_5

    aget-object v4, v2, v6

    aget-boolean v4, v4, v3

    if-nez v4, :cond_5

    aput v6, v0, v3

    goto :goto_2

    .line 1532
    :cond_5
    aget-object v4, v2, v3

    aget-boolean v4, v4, v3

    if-nez v4, :cond_6

    aget-object v4, v2, v6

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_6

    aput v1, v0, v3

    .line 1536
    :cond_6
    :goto_2
    aget-object v4, v2, v3

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_7

    aget-object v4, v2, v6

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_7

    aput v5, v0, v1

    goto :goto_3

    .line 1538
    :cond_7
    aget-object v4, v2, v3

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_8

    aget-object v4, v2, v6

    aget-boolean v4, v4, v1

    if-nez v4, :cond_8

    aput v6, v0, v1

    goto :goto_3

    .line 1540
    :cond_8
    aget-object v4, v2, v3

    aget-boolean v4, v4, v1

    if-nez v4, :cond_9

    aget-object v2, v2, v6

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_9

    aput v1, v0, v1

    .line 1545
    :cond_9
    :goto_3
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isUSS()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1547
    aget v2, v0, v1

    if-lez v2, :cond_a

    aput v3, v0, v3

    .line 1553
    :cond_a
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    move v4, v3

    .line 1554
    :goto_4
    array-length v5, v0

    if-ge v4, v5, :cond_b

    .line 1555
    aget v5, v0, v4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1558
    :cond_b
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getMultiLTEIcons([I)[Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    move-result-object v0

    .line 1560
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " multiLTEstatus:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ShowHD:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportShowHD()Z

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "NetworkController"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLTEIconStates:[Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    aget-object v4, v2, v3

    aget-object v3, v0, v3

    if-ne v4, v3, :cond_c

    aget-object v2, v2, v1

    aget-object v1, v0, v1

    if-eq v2, v1, :cond_d

    .line 1563
    :cond_c
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLTEIconStates:[Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .line 1564
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLTEIconStates:[Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setLTEStatus([Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V

    :cond_d
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 581
    sget-boolean p1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->CHATTY:Z

    const-string v0, "NetworkController"

    if-eqz p1, :cond_0

    .line 582
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive: intent="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 585
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "org.codeaurora.intent.action.ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "android.intent.action.setupDataError_tether"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x9

    goto :goto_1

    :sswitch_2
    const-string v1, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_3
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_4
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_5
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_6
    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x7

    goto :goto_1

    :sswitch_7
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v3

    goto :goto_1

    :sswitch_8
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0xa

    goto :goto_1

    :sswitch_9
    const-string v1, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_a
    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x6

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v2

    :goto_1
    packed-switch p1, :pswitch_data_0

    const-string/jumbo p1, "subscription"

    .line 688
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 690
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 691
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_9

    .line 692
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->handleBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 678
    :pswitch_0
    sget-boolean p1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz p1, :cond_2

    const-string p1, "Receive ACTION_SCREEN_ON."

    .line 679
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v3, p1, :cond_b

    .line 682
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 683
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mFiveGServiceClient:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->queryNrIconType(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 661
    :pswitch_1
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isUSS()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 662
    sget-boolean p1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz p1, :cond_3

    const-string p1, "TetherError callback"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotEnabled()Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "data_call_error"

    .line 664
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "setTetherError "

    .line 668
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {p1, v3}, Lcom/android/systemui/statusbar/policy/HotspotController;->setHotspotEnabled(Z)V

    .line 670
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->opActionTetherErrorAlertDialog()V

    goto/16 :goto_6

    :pswitch_2
    const-string p1, "phone"

    .line 649
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "newProvisionState"

    .line 651
    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 653
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProvisionChange provisionedState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " slotId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->onProvisionChange(II)V

    goto/16 :goto_6

    .line 644
    :pswitch_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->readConfig(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    .line 645
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/statusbar/policy/-$$Lambda$ybM43k5QVX_SxWbQACu1XwL3Knk;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/policy/-$$Lambda$ybM43k5QVX_SxWbQACu1XwL3Knk;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    .line 636
    :pswitch_4
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastServiceState:Landroid/telephony/ServiceState;

    .line 637
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_b

    .line 640
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->recalculateEmergency()V

    goto/16 :goto_6

    :pswitch_5
    const-string p1, "rebroadcastOnUnlock"

    .line 610
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    goto/16 :goto_6

    .line 614
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateMobileControllers()V

    const-string/jumbo p1, "ss"

    .line 617
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ABSENT"

    .line 618
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    const-string p2, "READY"

    .line 619
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_3

    :cond_5
    const-string p2, "LOADED"

    .line 623
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 624
    invoke-static {}, Lcom/oneplus/util/OpUtils;->setSimType()V

    goto :goto_4

    .line 620
    :cond_6
    :goto_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->initProvistionState()V

    .line 622
    invoke-static {}, Lcom/oneplus/util/OpUtils;->setSimType()V

    .line 629
    :cond_7
    :goto_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->checkVirtualSimcard()V

    .line 632
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasSimReady()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setHasAnySimReady(Z)V

    goto :goto_6

    .line 601
    :goto_5
    :pswitch_6
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v3, p1, :cond_8

    .line 602
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 603
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->handleBroadcast(Landroid/content/Intent;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 605
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->readConfig(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    .line 606
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/statusbar/policy/-$$Lambda$ybM43k5QVX_SxWbQACu1XwL3Knk;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/policy/-$$Lambda$ybM43k5QVX_SxWbQACu1XwL3Knk;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    .line 596
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->recalculateEmergency()V

    goto :goto_6

    .line 591
    :pswitch_8
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshLocale()V

    .line 592
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateAirplaneMode(Z)V

    goto :goto_6

    .line 588
    :pswitch_9
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateConnectivity()V

    goto :goto_6

    .line 695
    :cond_9
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateMobileControllers()V

    goto :goto_6

    .line 699
    :cond_a
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->handleBroadcast(Landroid/content/Intent;)V

    :cond_b
    :goto_6
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7d6de25e -> :sswitch_a
        -0x5753691f -> :sswitch_9
        -0x56ac2893 -> :sswitch_8
        -0x45e5283a -> :sswitch_7
        -0x43dd7a3f -> :sswitch_6
        -0x402b4235 -> :sswitch_5
        -0xdb21ee7 -> :sswitch_4
        -0x18365bb -> :sswitch_3
        0x2524f753 -> :sswitch_2
        0x4b871beb -> :sswitch_1
        0x7a525f0b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method recalculateEmergency()V
    .locals 1

    .line 522
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isEmergencyOnly()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsEmergency:Z

    .line 523
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsEmergency:Z

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setEmergencyCallsOnly(Z)V

    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V
    .locals 1

    .line 559
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setListening(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;Z)V

    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 119
    check-cast p1, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    return-void
.end method

.method public setCurrentSubscriptionsLocked(Ljava/util/List;)V
    .locals 18
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 806
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$8;

    invoke-direct {v0, v10}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$8;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    invoke-static {v11, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 814
    iput-object v11, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSubscriptions:Ljava/util/List;

    .line 816
    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    const/4 v0, 0x0

    .line 818
    :goto_0
    iget-object v1, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 819
    iget-object v1, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget-object v2, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    .line 820
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 819
    invoke-virtual {v12, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 822
    :cond_0
    iget-object v0, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 823
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v14, :cond_4

    .line 825
    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v9

    .line 832
    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 833
    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v0

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 835
    iget-object v0, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 836
    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->remove(I)V

    move/from16 v17, v14

    goto/16 :goto_2

    .line 838
    :cond_1
    new-instance v8, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v1, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    iget-object v2, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v3, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    iget-object v0, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    .line 839
    invoke-virtual {v0, v9}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v4

    iget-object v5, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    .line 840
    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/telephony/SubscriptionInfo;

    iget-object v6, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    iget-object v0, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    .line 841
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v16

    move-object v0, v8

    move-object/from16 v17, v6

    move-object/from16 v6, p0

    move-object v13, v8

    move-object/from16 v8, v17

    move/from16 v17, v14

    move v14, v9

    move-object/from16 v9, v16

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/policy/MobileSignalController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;ZLandroid/telephony/TelephonyManager;Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/telephony/SubscriptionInfo;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;Landroid/os/Looper;)V

    .line 842
    iget-boolean v0, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mUserSetup:Z

    invoke-virtual {v13, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setUserSetupComplete(Z)V

    .line 845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create controller SubId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " SlotIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    iget-object v0, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v0, v14, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 848
    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    if-nez v0, :cond_2

    .line 849
    iput-object v13, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDefaultSignalController:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 851
    :cond_2
    iget-boolean v0, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mListening:Z

    if-eqz v0, :cond_3

    .line 852
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->registerListener()V

    .line 853
    iget-object v0, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mFiveGServiceClient:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-virtual {v13, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->registerFiveGStateListener(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V

    :cond_3
    :goto_2
    add-int/lit8 v15, v15, 0x1

    move/from16 v14, v17

    goto/16 :goto_1

    .line 857
    :cond_4
    iget-boolean v0, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mListening:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    .line 858
    :goto_3
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 859
    invoke-virtual {v12, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 860
    invoke-virtual {v12, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDefaultSignalController:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    if-ne v2, v3, :cond_5

    const/4 v2, 0x0

    .line 861
    iput-object v2, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDefaultSignalController:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 863
    :cond_5
    invoke-virtual {v12, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->unregisterListener()V

    .line 864
    invoke-virtual {v12, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v2, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mFiveGServiceClient:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->unregisterFiveGStateListener(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 867
    :cond_6
    iget-object v0, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setSubs(Ljava/util/List;)V

    .line 871
    iget-object v0, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iget-object v1, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLTEIconStates:[Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setLTEStatus([Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V

    const/4 v0, 0x0

    .line 872
    :goto_4
    iget-object v1, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mProvisionState:[I

    array-length v2, v1

    if-ge v0, v2, :cond_7

    .line 873
    iget-object v2, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    aget v1, v1, v0

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setProvision(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 875
    :cond_7
    iget-object v0, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->softSimState:[I

    invoke-direct {v10, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifySetVirtualSimstate([I)V

    .line 878
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyAllListeners()V

    .line 882
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->pushConnectivityToSignals()V

    const/4 v0, 0x1

    .line 883
    invoke-direct {v10, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateAirplaneMode(Z)V

    .line 886
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportShowDualChannel()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 887
    invoke-direct {v10, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->onSmartLinkChange(Z)V

    :cond_8
    return-void
.end method

.method public setNetworkSpeedController(Lcom/oneplus/networkspeed/NetworkSpeedController;)V
    .locals 1

    .line 1828
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkSpeedController:Lcom/oneplus/networkspeed/NetworkSpeedController;

    .line 1829
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkSpeedController:Lcom/oneplus/networkspeed/NetworkSpeedController;

    if-eqz p1, :cond_0

    .line 1830
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-interface {p1, v0, p0}, Lcom/oneplus/networkspeed/NetworkSpeedController;->updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V

    :cond_0
    return-void
.end method

.method public setWifiEnabled(Z)V
    .locals 1

    .line 564
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$6;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$6;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 570
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected updateNoSims()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 782
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 783
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasAnySim()Z

    move-result v1

    .line 784
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasNoSubs:Z

    if-ne v0, v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimDetected:Z

    if-eq v1, v2, :cond_2

    .line 785
    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasNoSubs:Z

    .line 786
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimDetected:Z

    .line 787
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasNoSubs:Z

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimDetected:Z

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setNoSims(ZZ)V

    :cond_2
    return-void
.end method
