.class public Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;
.super Landroid/widget/LinearLayout;
.source "OpFingerprintDialogView.java"

# interfaces
.implements Lcom/oneplus/systemui/biometrics/OpFodHelper$OnFingerprintStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$OpFingerprintHighlightView;
    }
.end annotation


# static fields
.field private static final DEBUG_ONEPLUS:Z


# instance fields
.field private mAnimatingAway:Z

.field mCallbacks:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;

.field private mContext:Landroid/content/Context;

.field private final mDialog:Landroid/widget/LinearLayout;

.field private mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

.field private mDisplayWidth:F

.field private mFm:Landroid/hardware/fingerprint/FingerprintManager;

.field private mFodWindowManager:Lcom/oneplus/systemui/biometrics/OpFodWindowManager;

.field private mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

.field private mHandler:Landroid/os/Handler;

.field private mHighlightView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$OpFingerprintHighlightView;

.field private mLayout:Landroid/view/ViewGroup;

.field mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mOpFodDisplayController:Lcom/oneplus/systemui/biometrics/OpFodDisplayController;

.field private mOpFodIconViewController:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

.field mPendingHideDialog:Z

.field private mPm:Landroid/os/PowerManager;

.field private mPressTimeoutRunnable:Ljava/lang/Runnable;

.field private mShowOnWindow:Z

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)V
    .locals 4

    .line 205
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    .line 397
    new-instance v1, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$2;

    invoke-direct {v1, p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$2;-><init>(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    iput-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressTimeoutRunnable:Ljava/lang/Runnable;

    .line 483
    new-instance v1, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$3;

    invoke-direct {v1, p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$3;-><init>(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    iput-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mCallbacks:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;

    .line 592
    new-instance v1, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;

    invoke-direct {v1, p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$4;-><init>(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    iput-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 206
    iput-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    .line 208
    invoke-virtual {p2}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->initHandler(Landroid/os/Looper;)V

    const-string/jumbo v1, "window"

    .line 212
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    .line 214
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 215
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 216
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iput v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDisplayWidth:F

    .line 219
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 221
    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    .line 222
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPm:Landroid/os/PowerManager;

    .line 225
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    const-string v3, "fingerprint"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFm:Landroid/hardware/fingerprint/FingerprintManager;

    .line 228
    sget v2, Lcom/android/systemui/R$layout;->op_fingerprint_view:I

    invoke-virtual {v1, v2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    .line 229
    sget v2, Lcom/android/systemui/R$layout;->op_fingerprint_high_light_view:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$OpFingerprintHighlightView;

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHighlightView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$OpFingerprintHighlightView;

    .line 230
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHighlightView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$OpFingerprintHighlightView;

    invoke-virtual {v0, p2}, Lcom/oneplus/systemui/biometrics/AddRemoveRequestingView;->setDialog(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)V

    .line 231
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 233
    new-instance v0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;

    invoke-direct {v0, p1}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodDisplayController:Lcom/oneplus/systemui/biometrics/OpFodDisplayController;

    .line 234
    new-instance v0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-direct {v0, v1, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    .line 235
    new-instance v0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHighlightView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$OpFingerprintHighlightView;

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodIconViewController:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    .line 236
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 237
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->addFingerprintStateChangeListener(Lcom/oneplus/systemui/biometrics/OpFodHelper$OnFingerprintStateChangeListener;)V

    .line 240
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p1

    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    invoke-virtual {p1, p2}, Lcom/oneplus/plugin/OpLsState;->setFpAnimationCtrl(Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;)V

    .line 242
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/plugin/OpLsState;->getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 244
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 246
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    sget p2, Lcom/android/systemui/R$id;->dialog:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialog:Landroid/widget/LinearLayout;

    .line 248
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 249
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 252
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz p1, :cond_0

    .line 253
    invoke-virtual {p1, p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setFodDialogView(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    .line 258
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->initFodAnimationStyle()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleNotifyKeyguardDone(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleNotifyBrightnessChange()V

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;I)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleOnFacelockStateChanged(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;I)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleOnStrongAuthStateChanged(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleOnSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;I)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleOnUserSwitching(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->setDisplayPressModeFingerUp()V

    return-void
.end method

.method static synthetic access$1600(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;I)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->playAnimation(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->stopAnimation()V

    return-void
.end method

.method static synthetic access$1800(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->doFingerPressUpInternal()V

    return-void
.end method

.method static synthetic access$1902(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAnimatingAway:Z

    return p1
.end method

.method static synthetic access$200(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/oneplus/systemui/biometrics/OpFodIconViewController;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodIconViewController:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/PowerManager;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPm:Landroid/os/PowerManager;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/view/ViewGroup;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;ZF)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleUpdateLayoutDimension(ZF)V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleOnScreenTurnedOff()V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleOnStartedWakingUp()V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleOnScreenTurnedOn()V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;I)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleOnFinishedGoingToSleep(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleOnKeyguardVisibilityChanged(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Z)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleOnKeyguardBouncerChanged(Z)V

    return-void
.end method

.method private doFingerPressUpInternal()V
    .locals 1

    .line 476
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->removePressTimeOutMessage()V

    .line 478
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->setDisplayPressModeFingerUp()V

    .line 479
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getAodDisplayViewManager()Lcom/oneplus/aod/OpAodDisplayViewManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->onFingerPressed(Z)V

    return-void
.end method

.method private handleNotifyBrightnessChange()V
    .locals 1

    .line 1111
    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    if-eqz v0, :cond_0

    .line 1112
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodIconViewController:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->onBrightnessChange()V

    :cond_0
    return-void
.end method

.method private handleNotifyKeyguardDone(Z)V
    .locals 2

    .line 979
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleNotifyKeyguardDone, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 981
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodIconViewController:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->handleUpdateIconVisibility(Z)V

    .line 983
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->onFpEventCancel()V

    .line 987
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    const-string p1, "keyguard done"

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->hideFodDialogInner(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private handleOnFacelockStateChanged(I)V
    .locals 2

    .line 889
    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 890
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOnFacelockStateChanged : type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpFingerprintDialogView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    :cond_0
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->onFaceUnlocked()V

    .line 894
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodIconViewController:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->handleUpdateIconVisibility(Z)V

    .line 895
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->onFpEventCancel()V

    return-void
.end method

.method private handleOnFinishedGoingToSleep(I)V
    .locals 2

    .line 863
    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOnFinishedGoingToSleep: why= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpFingerprintDialogView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string p1, "finish going to sleep"

    .line 867
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->shouldForceShowFod(Ljava/lang/String;)Z

    return-void
.end method

.method private handleOnKeyguardBouncerChanged(Z)V
    .locals 0

    .line 883
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 884
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodIconViewController:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->handleUpdateIconVisibility(Z)V

    :cond_0
    return-void
.end method

.method private handleOnKeyguardVisibilityChanged(Z)V
    .locals 2

    .line 871
    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpFingerprintDialogView"

    const-string v1, "handleOnKeyguardVisibilityChanged"

    .line 872
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    const-string p1, "keyguard visibility changed: show"

    .line 876
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->shouldForceShowFod(Ljava/lang/String;)Z

    goto :goto_0

    .line 878
    :cond_1
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodIconViewController:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->handleUpdateIconVisibility(Z)V

    :goto_0
    return-void
.end method

.method private handleOnScreenTurnedOff()V
    .locals 2

    .line 769
    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpFingerprintDialogView"

    const-string v1, "handleOnScreenTurnedOff"

    .line 770
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resetState()V

    const-string v0, "screen turned off"

    .line 774
    invoke-direct {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->shouldForceShowFod(Ljava/lang/String;)Z

    return-void
.end method

.method private handleOnScreenTurnedOn()V
    .locals 2

    .line 846
    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    const-string v1, "OpFingerprintDialogView"

    if-eqz v0, :cond_0

    const-string v0, "handleOnScreenTurnedOn"

    .line 847
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "screen turned on"

    .line 852
    invoke-direct {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->shouldForceShowFod(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 853
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isEmptyClient()Z

    move-result v0

    if-nez v0, :cond_1

    .line 854
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isKeyguardClient()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "update icon visibility while turned on."

    .line 855
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 856
    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateIconVisibility(Z)V

    :cond_1
    return-void
.end method

.method private handleOnSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 0

    .line 911
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 912
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodIconViewController:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->handleUpdateIconVisibility(Z)V

    :cond_0
    return-void
.end method

.method private handleOnStartedWakingUp()V
    .locals 4

    .line 819
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isKeyguardClient()Z

    move-result v0

    .line 820
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v1

    .line 822
    sget-boolean v2, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_0

    .line 823
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleOnStartedWakingUp : ownerString = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", isKeyguardShowing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpFingerprintDialogView"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    .line 828
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    if-eqz v0, :cond_2

    .line 832
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodIconViewController:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->handleUpdateIconVisibility(Z)V

    .line 833
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    const-string/jumbo v1, "start waking up"

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->hideFodDialogInner(Ljava/lang/String;)V

    goto :goto_0

    .line 838
    :cond_1
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodIconViewController:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->handleUpdateIconVisibility(Z)V

    .line 841
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateAnimationResource()V

    return-void
.end method

.method private handleOnStrongAuthStateChanged(I)V
    .locals 2

    .line 900
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz p1, :cond_0

    .line 901
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 903
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStrongAuthStateChanged, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    .line 905
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodIconViewController:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->handleUpdateIconVisibility(Z)V

    :cond_1
    return-void
.end method

.method private handleOnUserSwitching(I)V
    .locals 1

    .line 918
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    if-eqz p1, :cond_0

    .line 920
    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->resetState()V

    .line 921
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->checkAnimationValueValid()V

    .line 923
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->updateAnimationRes(Z)V

    .line 929
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->initFodAnimationStyle()V

    return-void
.end method

.method private handleUpdateLayoutDimension(ZF)V
    .locals 1

    .line 1148
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->isSupportResolutionSwitch(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1149
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportCutout()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1150
    :cond_0
    iput p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDisplayWidth:F

    .line 1151
    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodIconViewController:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    invoke-virtual {p2}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->handleUpdateLayoutDimension()V

    .line 1152
    iget-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    invoke-virtual {p2, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->updateLayoutDimension(Z)V

    .line 1153
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFodWindowManager:Lcom/oneplus/systemui/biometrics/OpFodWindowManager;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->handleConfigurationChange()V

    :cond_1
    return-void
.end method

.method private initFodAnimationStyle()V
    .locals 7

    .line 1168
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 1169
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, -0x1

    const-string v3, "op_custom_unlock_animation_style"

    .line 1170
    invoke-static {v1, v3, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 1173
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "animValue = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", user = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OpFingerprintDialogView"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v4, v2, :cond_0

    .line 1175
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/android/systemui/R$integer;->fingerprint_default_animation_style:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    .line 1177
    invoke-static {v1, v3, p0, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_0
    return-void
.end method

.method private isKeyguard(Ljava/lang/String;)Z
    .locals 0

    .line 974
    invoke-static {p1}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isKeyguard(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private needsToWaitUntilAnimationDone()Z
    .locals 3

    .line 993
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isHomeApp()Z

    move-result v0

    .line 994
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v1

    .line 997
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardDone()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    .line 1000
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportRefreshRateSwitch()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPm:Landroid/os/PowerManager;

    .line 1001
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1005
    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAnimatingAway:Z

    return v0
.end method

.method private playAnimation(I)V
    .locals 2

    .line 542
    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    const-string v1, "OpFingerprintDialogView"

    if-eqz v0, :cond_0

    const-string v0, "playAnimation: dialog showing"

    .line 544
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isEnrolling()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "playAnimation: in enrolling"

    .line 554
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 559
    :cond_1
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardDone()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 560
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getOwnerString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isSystemUI(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "playAnimation: keyguard done"

    .line 562
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 568
    :cond_2
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isGoingToSleep()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isScreenTurningOn()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 576
    :cond_3
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    if-eqz p0, :cond_4

    .line 577
    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->playAnimation(I)V

    :cond_4
    return-void

    :cond_5
    :goto_0
    const-string p0, "playAnimation: don\'t play animation due to going to sleep or screen off"

    .line 570
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private resetState()V
    .locals 4

    .line 936
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodDisplayController:Lcom/oneplus/systemui/biometrics/OpFodDisplayController;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->resetState()V

    .line 939
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetState: mPendingHideDialog "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 940
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    .line 945
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isEmptyClient()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 946
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    invoke-virtual {v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->resetState()V

    goto :goto_0

    .line 948
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetState: fp client to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", reuse animation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    :goto_0
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodIconViewController:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    invoke-virtual {v1, v0}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->handleUpdateIconVisibility(Z)V

    .line 952
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->stopAnimation()V

    return-void
.end method

.method private setDisplayPressModeFingerDown()V
    .locals 0

    .line 1048
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodDisplayController:Lcom/oneplus/systemui/biometrics/OpFodDisplayController;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->onFingerPressDown()V

    return-void
.end method

.method private setDisplayPressModeFingerUp()V
    .locals 0

    .line 1052
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodDisplayController:Lcom/oneplus/systemui/biometrics/OpFodDisplayController;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->onFingerPressUp()V

    return-void
.end method

.method private shouldForceShowFod(Ljava/lang/String;)Z
    .locals 11

    .line 778
    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    .line 779
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 780
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    .line 779
    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v1

    .line 781
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 782
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isFingerprintLockout()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v3

    .line 783
    :goto_1
    iget-object v5, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v5

    .line 784
    iget-object v6, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardDone()Z

    move-result v6

    .line 785
    iget-object v7, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v7

    .line 786
    iget-object v8, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDreaming()Z

    move-result v8

    .line 788
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "shouldForceShowFod: reason= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", isWindowAttached= "

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isFpAvailable= "

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isKeyguardShowing= "

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isKeyguardDone= "

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isDeviceInteractive= "

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isDreaming= "

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isLockout= "

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpFingerprintDialogView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz v1, :cond_4

    if-nez v5, :cond_2

    if-nez v7, :cond_4

    if-eqz v8, :cond_4

    :cond_2
    if-nez v6, :cond_4

    .line 802
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isEmptyClient()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string/jumbo p1, "shouldForceShowFod: add to window."

    .line 804
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "key_fingerprint_package_name"

    const-string v1, "forceShow-keyguard"

    .line 806
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->forceShowFodDialog(Landroid/os/Bundle;)V

    goto :goto_2

    :cond_3
    const-string/jumbo p1, "shouldForceShowFod: already added to window, update ui."

    .line 809
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodIconViewController:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    invoke-virtual {p0, v4}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->handleUpdateIconVisibility(Z)V

    :goto_2
    return v3

    :cond_4
    return v4
.end method

.method private stopAnimation()V
    .locals 1

    .line 583
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 584
    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->stopAnimation(I)V

    :cond_0
    return-void
.end method

.method private updateAnimationResource()V
    .locals 1

    .line 384
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isEmptyClient()Z

    move-result v0

    if-nez v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->updateAnimationRes(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addToWindow()V
    .locals 2

    .line 264
    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    const-string v1, "OpFingerprintDialogView"

    if-eqz v0, :cond_0

    const-string v0, "addToWindow: already added."

    .line 265
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "addToWindow: addFpViewToWindow"

    .line 267
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFodWindowManager:Lcom/oneplus/systemui/biometrics/OpFodWindowManager;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->addFpViewToWindow()V

    .line 271
    :goto_0
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHighlightView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$OpFingerprintHighlightView;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/AddRemoveRequestingView;->addToWindow()V

    return-void
.end method

.method public doFingerprintPressDown(I)V
    .locals 3

    if-nez p1, :cond_0

    .line 431
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->postPressTimeOutRunnable()V

    .line 434
    :cond_0
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->isFingerDown()Z

    move-result p1

    const-string v0, "OpFingerprintDialogView"

    if-nez p1, :cond_1

    const-string p0, "doFingerprintPressDown: press state the same"

    .line 435
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 439
    :cond_1
    iget-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    if-nez p1, :cond_2

    const-string p0, "doFingerprintPressDown: fp window not exist don\'t show pressed button"

    .line 440
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 444
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doFingerprintPressDown: owner:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", done:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 445
    invoke-virtual {v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardDone()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", callers: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 446
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 444
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getAodDisplayViewManager()Lcom/oneplus/aod/OpAodDisplayViewManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/oneplus/aod/OpAodDisplayViewManager;->onFingerPressed(Z)V

    .line 453
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->expandTransparentLayout()V

    .line 455
    invoke-direct {p0, v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->playAnimation(I)V

    .line 456
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->setDisplayPressModeFingerDown()V

    return-void
.end method

.method public doFingerprintPressUp()V
    .locals 2

    .line 461
    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doFingerprintPressUp owner:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", done:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 463
    invoke-virtual {v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardDone()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", pending hide dialog: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", callers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 464
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    .line 462
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    if-nez v0, :cond_1

    .line 468
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->stopAnimation()V

    .line 471
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->doFingerPressUpInternal()V

    return-void
.end method

.method public forceRemove()V
    .locals 2

    const-string v0, "OpFingerprintDialogView"

    const-string v1, "forceRemove"

    .line 368
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 371
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 372
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHighlightView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$OpFingerprintHighlightView;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/AddRemoveRequestingView;->removeFromWindow()V

    const/4 v0, 0x0

    .line 376
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAnimatingAway:Z

    return-void
.end method

.method public getOwnerString()Ljava/lang/String;
    .locals 0

    .line 1066
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getCurrentOwner()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hideFODDim()V
    .locals 0

    .line 970
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodDisplayController:Lcom/oneplus/systemui/biometrics/OpFodDisplayController;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->hideFODDim()V

    return-void
.end method

.method public initHandler(Landroid/os/Looper;)V
    .locals 1

    .line 137
    new-instance v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$1;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$1;-><init>(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public isAnimatingAway()Z
    .locals 0

    .line 380
    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mAnimatingAway:Z

    return p0
.end method

.method public isDialogShowing()Z
    .locals 0

    .line 1159
    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    return p0
.end method

.method public isPendingHideDialog()Z
    .locals 0

    .line 1044
    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    return p0
.end method

.method public notifyBrightnessChange()V
    .locals 2

    .line 1105
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1106
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public notifyFingerprintAuthenticated()V
    .locals 5

    .line 1011
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isHomeApp()Z

    move-result v0

    .line 1012
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v1

    .line 1013
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->needsToWaitUntilAnimationDone()Z

    move-result v2

    .line 1014
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyFingerprintAuthenticated isInteractive, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isKeyguardVisible:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isFingerDown:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    .line 1015
    invoke-virtual {v1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->isFingerDown()Z

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isHomeApp:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " needsToWaitUntilAnimationDone: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    .line 1014
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->doFingerprintPressUp()V

    .line 1020
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodDisplayController:Lcom/oneplus/systemui/biometrics/OpFodDisplayController;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->notifyFingerprintAuthenticated()V

    .line 1021
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodIconViewController:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->handleUpdateIconVisibility(Z)V

    if-eqz v2, :cond_1

    .line 1024
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    if-eqz v0, :cond_2

    .line 1025
    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->isPlayingAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1029
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mCallbacks:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;

    invoke-interface {p0}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;->animationFinished()V

    goto :goto_0

    .line 1032
    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mCallbacks:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;

    invoke-virtual {v0, p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->waitAnimationFinished(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;)V

    goto :goto_0

    .line 1037
    :cond_1
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->collapseTransparentLayout()V

    .line 1039
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    const-string v0, "fp authenticated"

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->hideFodDialogInner(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    .line 276
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 278
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDisplayWidth:F

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 280
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    const/4 v0, 0x0

    .line 282
    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    .line 284
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {v1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->isDialogShowingRequest()Z

    move-result v1

    .line 287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAttachedToWindow: isKeyguardDone= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardDone()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isDialogShowingRequest= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpFingerprintDialogView"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    .line 291
    iput-boolean v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    if-nez v1, :cond_0

    const-string v0, "onAttachedToWindow: remove window now."

    .line 298
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_0

    .line 302
    :cond_0
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodIconViewController:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->handleUpdateIconVisibility(Z)V

    :goto_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1120
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1121
    sget-boolean p1, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_0

    const-string p1, "OpFingerprintDialogView"

    const-string v0, "onConfigurationChanged"

    .line 1122
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    :cond_0
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFodWindowManager:Lcom/oneplus/systemui/biometrics/OpFodWindowManager;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodWindowManager;->handleConfigurationChange()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 308
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->isDialogShowingRequest()Z

    move-result v0

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDetachedFromWindow: isDialogShowingRequest="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpFingerprintDialogView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->resetState()V

    const/4 v1, 0x0

    .line 315
    iput-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPendingHideDialog:Z

    .line 317
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 319
    iput-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    if-eqz v0, :cond_0

    const-string v0, "Because fingerprint is still on detecting state, add the window again"

    .line 324
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->addToWindow()V

    :cond_0
    return-void
.end method

.method public onFingerprintStateChanged()V
    .locals 1

    .line 391
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isFingerprintDetecting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateAnimationResource()V

    :cond_0
    return-void
.end method

.method public onFpEventCancel()V
    .locals 3

    .line 516
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->isFingerDown()Z

    move-result v0

    .line 517
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFpEventCancel: pressed= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", keyguardDone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardDone()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", callers= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    .line 518
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpFingerprintDialogView"

    .line 517
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    if-nez v1, :cond_0

    const-string p0, "onFpEventCancel: fp window has been removed."

    .line 520
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 524
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->removePressTimeOutMessage()V

    if-eqz v0, :cond_2

    .line 528
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->isPlayingAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 529
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFpAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mCallbacks:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;

    invoke-virtual {v0, p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->waitAnimationFinished(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;)V

    goto :goto_0

    .line 534
    :cond_1
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mCallbacks:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;

    invoke-interface {p0}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;->animationFinished()V

    :cond_2
    :goto_0
    return-void
.end method

.method public postPressTimeOutRunnable()V
    .locals 3

    .line 411
    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpFingerprintDialogView"

    const-string v1, "post press timeout message"

    .line 412
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->removePressTimeOutMessage()V

    .line 415
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public removePressTimeOutMessage()V
    .locals 2

    .line 419
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpFingerprintDialogView"

    const-string v1, "remove press timeout message"

    .line 421
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mPressTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public setFodWindowManager(Lcom/oneplus/systemui/biometrics/OpFodWindowManager;)V
    .locals 0

    .line 1163
    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mFodWindowManager:Lcom/oneplus/systemui/biometrics/OpFodWindowManager;

    return-void
.end method

.method public shouldHideDismissButton()Z
    .locals 2

    .line 1072
    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 1073
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "shouldHideDismissButton: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getOwnerString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->isKeyguard(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    .line 1080
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getOwnerString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isAppLocker(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 1084
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getOwnerString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isSettings(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 1088
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->getOwnerString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isFileManager(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    .line 1092
    :cond_4
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isEmptyClient()Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_5
    return v1
.end method

.method public startDismiss(Z)V
    .locals 3

    .line 340
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->isDialogShowingRequest()Z

    move-result v0

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDismiss: starting..., authenticated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mShowOnWindow: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isDialogShowingRequest: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", callers: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x2

    .line 345
    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpFingerprintDialogView"

    .line 342
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x8

    const-string p1, "OpFingerprintDialogView.hide"

    .line 346
    invoke-static {v1, v2, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 347
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHighlightView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$OpFingerprintHighlightView;

    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/AddRemoveRequestingView;->removeFromWindow()V

    .line 348
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mOpFodDisplayController:Lcom/oneplus/systemui/biometrics/OpFodDisplayController;

    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->dismiss()V

    .line 349
    iget-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mShowOnWindow:Z

    if-eqz p1, :cond_0

    .line 350
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p1, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "startDismiss: window is not added yet, remove it after attached"

    .line 352
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :goto_0
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->onFingerprintDialogDismissDone()V

    .line 357
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public updateIconVisibility(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 960
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateIconVisibility: forceHide trace = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintDialogView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 963
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 964
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 965
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public updateLayoutDimension(ZF)V
    .locals 2

    .line 1134
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1135
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1136
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    .line 1137
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1138
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1139
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1140
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
