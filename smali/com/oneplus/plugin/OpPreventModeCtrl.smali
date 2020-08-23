.class public Lcom/oneplus/plugin/OpPreventModeCtrl;
.super Lcom/oneplus/plugin/OpBaseCtrl;
.source "OpPreventModeCtrl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/plugin/OpPreventModeCtrl$SensorHandler;,
        Lcom/oneplus/plugin/OpPreventModeCtrl$PocketSensorListener;,
        Lcom/oneplus/plugin/OpPreventModeCtrl$ProximitorySensorListener;
    }
.end annotation


# static fields
.field private static final IS_SUPPORT_POCKET_SWITCH:Z

.field private static mPreventModeActive:Z = false

.field private static mPreventModeNoBackground:Z = false

.field private static mSensorEnabled:Z = false


# instance fields
.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field mBackground:Landroid/widget/ImageView;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBouncer:Z

.field private mDozing:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsUsePocketSensor:Z

.field private mKeyLockMode:I

.field private mKeyguardIsShowing:Z

.field private mKeyguardIsVisible:Z

.field private mObject:Ljava/lang/Object;

.field private mOpSceneModeObserver:Lcom/oneplus/scene/OpSceneModeObserver;

.field mPMView:Lcom/oneplus/plugin/OpPreventModeView;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x91

    aput v2, v0, v1

    .line 52
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/plugin/OpPreventModeCtrl;->IS_SUPPORT_POCKET_SWITCH:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Lcom/oneplus/plugin/OpBaseCtrl;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mBouncer:Z

    .line 58
    iput-boolean v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mKeyguardIsVisible:Z

    .line 59
    iput-boolean v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mKeyguardIsShowing:Z

    .line 60
    iput-boolean v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mDozing:Z

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mObject:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/plugin/OpPreventModeCtrl;)Landroid/graphics/Bitmap;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/plugin/OpPreventModeCtrl;)Ljava/lang/Object;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mObject:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/plugin/OpPreventModeCtrl;)Landroid/hardware/Sensor;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mSensor:Landroid/hardware/Sensor;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/plugin/OpPreventModeCtrl;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/oneplus/plugin/OpPreventModeCtrl;->startRootAnimation()V

    return-void
.end method

.method static synthetic access$600()Z
    .locals 1

    .line 38
    sget-boolean v0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPreventModeActive:Z

    return v0
.end method

.method static synthetic access$700(Lcom/oneplus/plugin/OpPreventModeCtrl;)Landroid/os/Handler;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/oneplus/plugin/OpPreventModeCtrl;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/oneplus/plugin/OpPreventModeCtrl;->enableSensorInternal()V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/plugin/OpPreventModeCtrl;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/oneplus/plugin/OpPreventModeCtrl;->disableSensorInternal()V

    return-void
.end method

.method private bypassPreventMode()Z
    .locals 2

    .line 543
    iget-boolean v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mKeyguardIsVisible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 547
    :cond_0
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 548
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isCameraForeground()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mOpSceneModeObserver:Lcom/oneplus/scene/OpSceneModeObserver;

    if-eqz p0, :cond_3

    .line 549
    invoke-virtual {p0}, Lcom/oneplus/scene/OpSceneModeObserver;->isInBrickMode()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private disableSensorInternal()V
    .locals 4

    .line 412
    sget-boolean v0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mSensorEnabled:Z

    if-eqz v0, :cond_1

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableSensor, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mKeyLockMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpPreventModeCtrl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 419
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 420
    iget-boolean v2, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mIsUsePocketSensor:Z

    if-eqz v2, :cond_0

    .line 421
    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mSensorListener:Landroid/hardware/SensorEventListener;

    check-cast p0, Lcom/oneplus/plugin/OpPreventModeCtrl$PocketSensorListener;

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpPreventModeCtrl$PocketSensorListener;->resetState()V

    :cond_0
    const/4 p0, 0x0

    .line 423
    sput-boolean p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mSensorEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private enableSensorInternal()V
    .locals 5

    .line 351
    sget-boolean v0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mSensorEnabled:Z

    if-nez v0, :cond_1

    const-string v0, "OpPreventModeCtrl"

    const-string v1, "enableSensor"

    .line 353
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 356
    iget-object v1, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 359
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 361
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mSensor:Landroid/hardware/Sensor;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, p0, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 p0, 0x1

    .line 363
    sput-boolean p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mSensorEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private hideSoftInput()V
    .locals 2

    :try_start_0
    const-string p0, "input_method"

    .line 533
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 532
    invoke-static {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 534
    invoke-interface {p0, v0, v1}, Lcom/android/internal/view/IInputMethodManager;->hideSoftInputForLongshot(ILandroid/os/ResultReceiver;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "OpPreventModeCtrl"

    const-string v1, "hide ime failed, "

    .line 537
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private isPreventModeEnabled()Z
    .locals 2

    .line 207
    sget-boolean v0, Lcom/oneplus/plugin/OpPreventModeCtrl;->IS_SUPPORT_POCKET_SWITCH:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/oneplus/plugin/OpBaseCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->isPreventModeEnalbed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mKeyguardIsShowing:Z

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private startRootAnimation()V
    .locals 5

    .line 432
    sget-boolean v0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPreventModeActive:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mKeyguardIsShowing:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/oneplus/plugin/OpPreventModeCtrl;->bypassPreventMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 436
    :cond_0
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    .line 437
    iget-object v1, p0, Lcom/oneplus/plugin/OpBaseCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, -0x1

    const-string v3, "oem_acc_key_lock_mode"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mKeyLockMode:I

    .line 438
    invoke-direct {p0}, Lcom/oneplus/plugin/OpPreventModeCtrl;->hideSoftInput()V

    .line 440
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startRootAnimation, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mKeyLockMode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "OpPreventModeCtrl"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 445
    sput-boolean v1, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPreventModeActive:Z

    .line 448
    iget-object v4, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_1

    if-eqz v0, :cond_1

    const/4 v4, 0x0

    .line 449
    invoke-virtual {v0, v4, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->setPanelViewAlpha(FZI)V

    .line 450
    sput-boolean v1, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPreventModeNoBackground:Z

    const-string v2, "panel alpha to 0"

    .line 451
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v0, :cond_3

    .line 457
    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getFacelockController()Lcom/oneplus/faceunlock/OpFacelockController;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 458
    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getFacelockController()Lcom/oneplus/faceunlock/OpFacelockController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/faceunlock/OpFacelockController;->stopFacelockLightMode()V

    .line 460
    :cond_2
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyPreventModeChange(Z)V

    :cond_3
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 465
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 466
    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 467
    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/plugin/OpPreventModeCtrl$1;

    invoke-direct {v1, p0}, Lcom/oneplus/plugin/OpPreventModeCtrl$1;-><init>(Lcom/oneplus/plugin/OpPreventModeCtrl;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 475
    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/plugin/OpPreventModeCtrl$2;

    invoke-direct {v1, p0}, Lcom/oneplus/plugin/OpPreventModeCtrl$2;-><init>(Lcom/oneplus/plugin/OpPreventModeCtrl;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 500
    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public disPatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPMView:Lcom/oneplus/plugin/OpPreventModeView;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public disableSensor()V
    .locals 3

    .line 371
    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 372
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 373
    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 375
    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 376
    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public isPreventModeActive()Z
    .locals 0

    .line 520
    sget-boolean p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPreventModeActive:Z

    return p0
.end method

.method public isPreventModeNoBackground()Z
    .locals 0

    .line 525
    sget-boolean p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPreventModeNoBackground:Z

    return p0
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    .line 571
    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPMView:Lcom/oneplus/plugin/OpPreventModeView;

    if-eqz p0, :cond_0

    .line 572
    invoke-virtual {p0}, Lcom/oneplus/plugin/OpPreventModeView;->init()V

    :cond_0
    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 0

    .line 175
    invoke-virtual {p0}, Lcom/oneplus/plugin/OpPreventModeCtrl;->disableSensor()V

    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 0

    .line 180
    iput-boolean p1, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mBouncer:Z

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 0

    .line 185
    iput-boolean p1, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mKeyguardIsVisible:Z

    return-void
.end method

.method public onPanelExpandedChange(Z)V
    .locals 2

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPanelExpandedChange expand:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mPreventModeActive:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPreventModeActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " visible:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mKeyguardIsVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpPreventModeCtrl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    sget-boolean v0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPreventModeActive:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPMView:Lcom/oneplus/plugin/OpPreventModeView;

    if-eqz v0, :cond_2

    .line 559
    iget-boolean v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mKeyguardIsVisible:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    return-void

    .line 562
    :cond_0
    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPMView:Lcom/oneplus/plugin/OpPreventModeView;

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/plugin/OpPreventModeCtrl;->isPreventModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mDozing:Z

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 154
    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 157
    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onStartCtrl()V
    .locals 4

    const-string v0, "OpPreventModeCtrl"

    const-string v1, "onStartCtrl"

    .line 85
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 88
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$id;->prevent_mode_view:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/plugin/OpPreventModeView;

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPMView:Lcom/oneplus/plugin/OpPreventModeView;

    .line 89
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$id;->pevent_mode_background:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mBackground:Landroid/widget/ImageView;

    .line 90
    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPMView:Lcom/oneplus/plugin/OpPreventModeView;

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpPreventModeView;->init()V

    .line 91
    new-instance v0, Lcom/oneplus/plugin/OpPreventModeCtrl$SensorHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/plugin/OpPreventModeCtrl$SensorHandler;-><init>(Lcom/oneplus/plugin/OpPreventModeCtrl;Lcom/oneplus/plugin/OpPreventModeCtrl$1;)V

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mHandler:Landroid/os/Handler;

    .line 92
    new-instance v0, Landroid/hardware/SystemSensorManager;

    iget-object v2, p0, Lcom/oneplus/plugin/OpBaseCtrl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mSensorManager:Landroid/hardware/SensorManager;

    .line 94
    iget-object v0, p0, Lcom/oneplus/plugin/OpBaseCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$bool;->config_oneplus_prevent_mode_use_pocket_sensor:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mIsUsePocketSensor:Z

    .line 97
    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-boolean v2, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mIsUsePocketSensor:Z

    if-eqz v2, :cond_0

    const v2, 0x1fa2651

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mSensor:Landroid/hardware/Sensor;

    .line 98
    iget-boolean v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mIsUsePocketSensor:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/oneplus/plugin/OpPreventModeCtrl$PocketSensorListener;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/plugin/OpPreventModeCtrl$PocketSensorListener;-><init>(Lcom/oneplus/plugin/OpPreventModeCtrl;Lcom/oneplus/plugin/OpPreventModeCtrl$1;)V

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/oneplus/plugin/OpPreventModeCtrl$ProximitorySensorListener;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/plugin/OpPreventModeCtrl$ProximitorySensorListener;-><init>(Lcom/oneplus/plugin/OpPreventModeCtrl;Lcom/oneplus/plugin/OpPreventModeCtrl$1;)V

    :goto_1
    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mSensorListener:Landroid/hardware/SensorEventListener;

    .line 100
    const-class v0, Lcom/oneplus/scene/OpSceneModeObserver;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/scene/OpSceneModeObserver;

    iput-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mOpSceneModeObserver:Lcom/oneplus/scene/OpSceneModeObserver;

    .line 103
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/plugin/OpPreventModeCtrl;->isPreventModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 166
    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 169
    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onWallpaperChange(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWallpaperChange: bitmap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpPreventModeCtrl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 507
    iget-object v0, p0, Lcom/oneplus/plugin/OpBaseCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/oneplus/util/OpImageUtils;->computeCustomBackgroundBounds(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 509
    iput-object p1, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mBitmap:Landroid/graphics/Bitmap;

    .line 510
    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 2

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setKeyguardShowing, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpPreventModeCtrl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iput-boolean p1, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mKeyguardIsShowing:Z

    if-nez p1, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/oneplus/plugin/OpPreventModeCtrl;->disableSensor()V

    :cond_0
    return-void
.end method

.method public stopPreventMode()V
    .locals 6

    .line 381
    sget-boolean v0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPreventModeActive:Z

    if-eqz v0, :cond_2

    const-string v0, "OpPreventModeCtrl"

    const-string/jumbo v1, "stopPreventMode"

    .line 383
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 389
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPMView:Lcom/oneplus/plugin/OpPreventModeView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 390
    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mBackground:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 392
    sget-boolean p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPreventModeNoBackground:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 393
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v5, -0x1

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->setPanelViewAlpha(FZI)V

    const-string p0, "panel alpha to 1"

    .line 394
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    .line 396
    sput-boolean p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPreventModeNoBackground:Z

    .line 398
    sput-boolean p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPreventModeActive:Z

    .line 400
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 401
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyPreventModeChange(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    :cond_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method
