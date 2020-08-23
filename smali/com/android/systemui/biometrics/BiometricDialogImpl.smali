.class public Lcom/android/systemui/biometrics/BiometricDialogImpl;
.super Lcom/android/systemui/SystemUI;
.source "BiometricDialogImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/biometrics/BiometricDialogImpl$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/systemui/biometrics/BiometricDialogImpl$Callback;

.field private mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

.field private mCurrentDialogArgs:Lcom/android/internal/os/SomeArgs;

.field private mDialogShowing:Z

.field private mHandler:Landroid/os/Handler;

.field private mReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

.field private mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field final mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 63
    new-instance v0, Lcom/android/systemui/biometrics/BiometricDialogImpl$Callback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/biometrics/BiometricDialogImpl$Callback;-><init>(Lcom/android/systemui/biometrics/BiometricDialogImpl;Lcom/android/systemui/biometrics/BiometricDialogImpl$1;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCallback:Lcom/android/systemui/biometrics/BiometricDialogImpl$Callback;

    .line 66
    new-instance v0, Lcom/android/systemui/biometrics/BiometricDialogImpl$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/biometrics/BiometricDialogImpl$1;-><init>(Lcom/android/systemui/biometrics/BiometricDialogImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Landroid/os/Handler;

    .line 140
    new-instance v0, Lcom/android/systemui/biometrics/BiometricDialogImpl$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/BiometricDialogImpl$2;-><init>(Lcom/android/systemui/biometrics/BiometricDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/biometrics/BiometricDialogImpl;Lcom/android/internal/os/SomeArgs;ZLandroid/os/Bundle;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleShowDialog(Lcom/android/internal/os/SomeArgs;ZLandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/biometrics/BiometricDialogImpl;)Landroid/os/Handler;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/biometrics/BiometricDialogImpl;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mDialogShowing:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/biometrics/BiometricDialogImpl;ZLjava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleBiometricAuthenticated(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/biometrics/BiometricDialogImpl;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleBiometricHelp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/biometrics/BiometricDialogImpl;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleBiometricError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/biometrics/BiometricDialogImpl;Z)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleHideDialog(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/biometrics/BiometricDialogImpl;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleButtonNegative()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/biometrics/BiometricDialogImpl;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleUserCanceled()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/biometrics/BiometricDialogImpl;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleButtonPositive()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/biometrics/BiometricDialogImpl;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleTryAgainPressed()V

    return-void
.end method

.method private handleBiometricAuthenticated(ZLjava/lang/String;)V
    .locals 2

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleBiometricAuthenticated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricDialogImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 273
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    iget-object p2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 274
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    .line 275
    invoke-virtual {v0}, Lcom/android/systemui/biometrics/BiometricDialogView;->getAuthenticatedAccessibilityResourceId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 273
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 276
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    invoke-virtual {p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->requiresConfirmation()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 277
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->updateState(I)V

    goto :goto_0

    .line 279
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/android/systemui/biometrics/BiometricDialogView;->updateState(I)V

    .line 280
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/biometrics/-$$Lambda$BiometricDialogImpl$ClyZbr2Bp-ugYn9TuyRxsmSCP_U;

    invoke-direct {p2, p0}, Lcom/android/systemui/biometrics/-$$Lambda$BiometricDialogImpl$ClyZbr2Bp-ugYn9TuyRxsmSCP_U;-><init>(Lcom/android/systemui/biometrics/BiometricDialogImpl;)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    .line 282
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->getDelayAfterAuthenticatedDurationMs()I

    move-result p0

    int-to-long v0, p0

    .line 280
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 285
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    invoke-virtual {p0, p2}, Lcom/android/systemui/biometrics/BiometricDialogView;->onAuthenticationFailed(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private handleBiometricError(Ljava/lang/String;)V
    .locals 2

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleBiometricError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricDialogImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mDialogShowing:Z

    if-nez v0, :cond_0

    const-string p0, "Dialog already dismissed"

    .line 297
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 300
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->onErrorReceived(Ljava/lang/String;)V

    return-void
.end method

.method private handleBiometricHelp(Ljava/lang/String;)V
    .locals 2

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleBiometricHelp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricDialogImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->onHelpReceived(Ljava/lang/String;)V

    return-void
.end method

.method private handleButtonNegative()V
    .locals 3

    .line 325
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    const-string v1, "BiometricDialogImpl"

    if-nez v0, :cond_0

    const-string p0, "Receiver is null"

    .line 326
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x2

    .line 330
    :try_start_0
    invoke-interface {v0, v2}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;->onDialogDismissed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Remote exception when handling negative button"

    .line 332
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    .line 334
    invoke-direct {p0, v0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleHideDialog(Z)V

    return-void
.end method

.method private handleButtonPositive()V
    .locals 3

    .line 338
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    const-string v1, "BiometricDialogImpl"

    if-nez v0, :cond_0

    const-string p0, "Receiver is null"

    .line 339
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x1

    .line 343
    :try_start_0
    invoke-interface {v0, v2}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;->onDialogDismissed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Remote exception when handling positive button"

    .line 345
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    .line 347
    invoke-direct {p0, v0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleHideDialog(Z)V

    return-void
.end method

.method private handleHideDialog(Z)V
    .locals 2

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleHideDialog, userCanceled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricDialogImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mDialogShowing:Z

    if-nez v0, :cond_0

    .line 309
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Dialog already dismissed, userCanceled: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 314
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;->onDialogDismissed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "RemoteException when hiding dialog"

    .line 316
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 319
    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    const/4 p1, 0x0

    .line 320
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mDialogShowing:Z

    .line 321
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->startDismiss()V

    return-void
.end method

.method private handleShowDialog(Lcom/android/internal/os/SomeArgs;ZLandroid/os/Bundle;)V
    .locals 7

    .line 218
    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialogArgs:Lcom/android/internal/os/SomeArgs;

    .line 219
    iget v0, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 221
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "BiometricDialogImpl"

    if-ne v0, v2, :cond_0

    .line 229
    new-instance v4, Lcom/android/systemui/biometrics/FingerprintDialogView;

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCallback:Lcom/android/systemui/biometrics/BiometricDialogImpl$Callback;

    invoke-direct {v4, v5, v6, v1}, Lcom/android/systemui/biometrics/FingerprintDialogView;-><init>(Landroid/content/Context;Lcom/android/systemui/biometrics/DialogViewCallback;Z)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x4

    if-ne v0, v4, :cond_3

    .line 234
    new-instance v4, Lcom/android/systemui/biometrics/FaceDialogView;

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCallback:Lcom/android/systemui/biometrics/BiometricDialogImpl$Callback;

    invoke-direct {v4, v5, v6, v1}, Lcom/android/systemui/biometrics/FaceDialogView;-><init>(Landroid/content/Context;Lcom/android/systemui/biometrics/DialogViewCallback;Z)V

    .line 241
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleShowDialog,  savedState: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " mCurrentDialog: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " newDialog: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " type: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_1

    .line 250
    invoke-virtual {v4, p3}, Lcom/android/systemui/biometrics/BiometricDialogView;->restoreState(Landroid/os/Bundle;)V

    goto :goto_1

    .line 251
    :cond_1
    iget-object p3, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    if-eqz p3, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mDialogShowing:Z

    if-eqz v0, :cond_2

    .line 256
    invoke-virtual {p3}, Lcom/android/systemui/biometrics/BiometricDialogView;->forceRemove()V

    .line 259
    :cond_2
    :goto_1
    iget-object p3, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast p3, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    iput-object p3, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    .line 260
    iget-object p3, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p3, Landroid/os/Bundle;

    invoke-virtual {v4, p3}, Lcom/android/systemui/biometrics/BiometricDialogView;->setBundle(Landroid/os/Bundle;)V

    .line 261
    iget-object p3, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {v4, p3}, Lcom/android/systemui/biometrics/BiometricDialogView;->setRequireConfirmation(Z)V

    .line 262
    iget p1, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    invoke-virtual {v4, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->setUserId(I)V

    .line 263
    invoke-virtual {v4, p2}, Lcom/android/systemui/biometrics/BiometricDialogView;->setSkipIntro(Z)V

    .line 264
    iput-object v4, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    .line 265
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    invoke-virtual {p2}, Lcom/android/systemui/biometrics/BiometricDialogView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    iput-boolean v2, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mDialogShowing:Z

    return-void

    .line 237
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unsupported type: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handleTryAgainPressed()V
    .locals 2

    .line 356
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    invoke-interface {p0}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;->onTryAgainPressed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "BiometricDialogImpl"

    const-string v1, "RemoteException when handling try again"

    .line 358
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private handleUserCanceled()V
    .locals 1

    const/4 v0, 0x1

    .line 351
    invoke-direct {p0, v0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleHideDialog(Z)V

    return-void
.end method


# virtual methods
.method public hideBiometricDialog()V
    .locals 2

    const-string v0, "BiometricDialogImpl"

    const-string v1, "hideBiometricDialog"

    .line 212
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 214
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public synthetic lambda$handleBiometricAuthenticated$0$BiometricDialogImpl()V
    .locals 1

    const/4 v0, 0x0

    .line 281
    invoke-direct {p0, v0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleHideDialog(Z)V

    return-void
.end method

.method public onBiometricAuthenticated(ZLjava/lang/String;)V
    .locals 2

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBiometricAuthenticated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricDialogImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 191
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 192
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 193
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onBiometricError(Ljava/lang/String;)V
    .locals 2

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBiometricError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricDialogImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onBiometricHelp(Ljava/lang/String;)V
    .locals 2

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBiometricHelp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricDialogImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 200
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 201
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 364
    invoke-super {p0, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string p1, "BiometricDialogImpl"

    const-string v0, "onConfigurationChanged"

    .line 368
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-boolean p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mDialogShowing:Z

    .line 375
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 376
    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    if-eqz v1, :cond_0

    .line 377
    invoke-virtual {v1, v0}, Lcom/android/systemui/biometrics/BiometricDialogView;->onSaveState(Landroid/os/Bundle;)V

    .line 380
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mDialogShowing:Z

    if-eqz v1, :cond_1

    .line 381
    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    invoke-virtual {v1}, Lcom/android/systemui/biometrics/BiometricDialogView;->forceRemove()V

    const/4 v1, 0x0

    .line 382
    iput-boolean v1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mDialogShowing:Z

    :cond_1
    if-eqz p1, :cond_2

    .line 386
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialogArgs:Lcom/android/internal/os/SomeArgs;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleShowDialog(Lcom/android/internal/os/SomeArgs;ZLandroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public showBiometricDialog(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;IZI)V
    .locals 2

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showBiometricDialog, type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", requireConfirmation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricDialogImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 172
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 173
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 174
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 175
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 176
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 177
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 178
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 179
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 180
    iput p5, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 181
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 182
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public start()V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    .line 153
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.hardware.biometrics.face"

    .line 154
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.hardware.biometrics.iris"

    .line 155
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    :cond_0
    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0, v0}, Lcom/android/systemui/SystemUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 157
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    .line 158
    const-class v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iput-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 159
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
