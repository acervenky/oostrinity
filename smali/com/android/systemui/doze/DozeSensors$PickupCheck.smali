.class Lcom/android/systemui/doze/DozeSensors$PickupCheck;
.super Ljava/lang/Object;
.source "DozeSensors.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeSensors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PickupCheck"
.end annotation


# instance fields
.field private mCurrentState:I

.field private mFinished:Z

.field private mMaxRange:F

.field private mProximityChecking:Z

.field private mRegistered:Z

.field private mSensorType:I

.field private final mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/doze/DozeSensors;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/DozeSensors;)V
    .locals 0

    .line 505
    iput-object p1, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "DozeSensors.PickupCheck"

    .line 492
    iput-object p1, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->mTag:Ljava/lang/String;

    const/4 p1, 0x0

    .line 496
    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->mFinished:Z

    const p1, 0x1fa2652

    .line 507
    iput p1, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->mSensorType:I

    .line 509
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "choose sensor: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "TYPE_PICK_UP"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DozeSensors"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private finishWithResult(I)V
    .locals 7

    .line 562
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->mRegistered:Z

    if-nez v0, :cond_0

    return-void

    .line 566
    :cond_0
    invoke-static {}, Lcom/oneplus/aod/OpAodUtils;->isAlwaysOnEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 567
    iget v0, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->mCurrentState:I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 568
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$300(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/doze/DozeSensors$Callback;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/android/systemui/doze/DozeSensors$Callback;->onSensorPulse(IZFF[F)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 570
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$300(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/doze/DozeSensors$Callback;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/android/systemui/doze/DozeSensors$Callback;->onSensorPulse(IZFF[F)V

    .line 576
    :cond_2
    :goto_0
    iput p1, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->mCurrentState:I

    return-void
.end method

.method private release()V
    .locals 2

    .line 588
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->mRegistered:Z

    if-nez v0, :cond_0

    return-void

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$400(Lcom/android/systemui/doze/DozeSensors;)Landroid/hardware/SensorManager;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "DozeSensors.PickupCheck"

    const-string v1, "Unregister P Sensor"

    .line 591
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$400(Lcom/android/systemui/doze/DozeSensors;)Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    .line 593
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->mRegistered:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public check()V
    .locals 8

    .line 513
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->mFinished:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->mRegistered:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$400(Lcom/android/systemui/doze/DozeSensors;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->mSensorType:I

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    const-string v0, "DozeSensors.PickupCheck"

    if-nez v4, :cond_2

    .line 516
    invoke-static {}, Lcom/android/systemui/doze/DozeSensors;->access$500()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "No sensor found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    .line 517
    invoke-direct {p0, v0}, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->finishWithResult(I)V

    return-void

    :cond_2
    const-string v1, "sensor registered"

    .line 520
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-virtual {v4}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->mMaxRange:F

    .line 523
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$400(Lcom/android/systemui/doze/DozeSensors;)Landroid/hardware/SensorManager;

    move-result-object v2

    const/4 v5, 0x3

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->this$0:Lcom/android/systemui/doze/DozeSensors;

    .line 524
    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$600(Lcom/android/systemui/doze/DozeSensors;)Landroid/os/Handler;

    move-result-object v7

    move-object v3, p0

    .line 523
    invoke-virtual/range {v2 .. v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z

    .line 525
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$600(Lcom/android/systemui/doze/DozeSensors;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    .line 526
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->mRegistered:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSensorChanged = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DozeSensors"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->mProximityChecking:Z

    if-eqz v0, :cond_0

    return-void

    .line 537
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v0, v0

    const-string v1, "DozeSensors.PickupCheck"

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 538
    invoke-static {}, Lcom/android/systemui/doze/DozeSensors;->access$500()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Event has no values!"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->finishWithResult(I)V

    goto :goto_1

    .line 541
    :cond_2
    invoke-static {}, Lcom/android/systemui/doze/DozeSensors;->access$500()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event: value="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " max="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->mMaxRange:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_3
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    const/4 v0, 0x1

    if-nez p1, :cond_4

    move v2, v0

    :cond_4
    if-eqz v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x2

    .line 543
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->finishWithResult(I)V

    :goto_1
    return-void
.end method

.method public run()V
    .locals 0

    return-void
.end method

.method public setListening(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 581
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->check()V

    goto :goto_0

    .line 583
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeSensors$PickupCheck;->release()V

    :goto_0
    return-void
.end method
