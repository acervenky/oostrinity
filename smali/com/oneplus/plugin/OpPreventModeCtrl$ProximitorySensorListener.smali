.class Lcom/oneplus/plugin/OpPreventModeCtrl$ProximitorySensorListener;
.super Ljava/lang/Object;
.source "OpPreventModeCtrl.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/plugin/OpPreventModeCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProximitorySensorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/plugin/OpPreventModeCtrl;


# direct methods
.method private constructor <init>(Lcom/oneplus/plugin/OpPreventModeCtrl;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/oneplus/plugin/OpPreventModeCtrl$ProximitorySensorListener;->this$0:Lcom/oneplus/plugin/OpPreventModeCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/plugin/OpPreventModeCtrl;Lcom/oneplus/plugin/OpPreventModeCtrl$1;)V
    .locals 0

    .line 213
    invoke-direct {p0, p1}, Lcom/oneplus/plugin/OpPreventModeCtrl$ProximitorySensorListener;-><init>(Lcom/oneplus/plugin/OpPreventModeCtrl;)V

    return-void
.end method

.method private finishWithResult(I)V
    .locals 2

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finishWithResult: result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpPreventModeCtrl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 249
    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl$ProximitorySensorListener;->this$0:Lcom/oneplus/plugin/OpPreventModeCtrl;

    invoke-static {p0}, Lcom/oneplus/plugin/OpPreventModeCtrl;->access$500(Lcom/oneplus/plugin/OpPreventModeCtrl;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 250
    invoke-static {}, Lcom/oneplus/plugin/OpPreventModeCtrl;->access$600()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    iget-object p1, p0, Lcom/oneplus/plugin/OpPreventModeCtrl$ProximitorySensorListener;->this$0:Lcom/oneplus/plugin/OpPreventModeCtrl;

    iget-object p1, p1, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPMView:Lcom/oneplus/plugin/OpPreventModeView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 252
    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl$ProximitorySensorListener;->this$0:Lcom/oneplus/plugin/OpPreventModeCtrl;

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpPreventModeCtrl;->stopPreventMode()V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 254
    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl$ProximitorySensorListener;->this$0:Lcom/oneplus/plugin/OpPreventModeCtrl;

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpPreventModeCtrl;->stopPreventMode()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    .line 221
    iget-object v0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl$ProximitorySensorListener;->this$0:Lcom/oneplus/plugin/OpPreventModeCtrl;

    invoke-static {v0}, Lcom/oneplus/plugin/OpPreventModeCtrl;->access$300(Lcom/oneplus/plugin/OpPreventModeCtrl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 223
    :try_start_0
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v1, v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p1, "OpPreventModeCtrl"

    const-string v1, "Event has no values!"

    .line 225
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-direct {p0, v2}, Lcom/oneplus/plugin/OpPreventModeCtrl$ProximitorySensorListener;->finishWithResult(I)V

    goto :goto_1

    :cond_0
    const-string v1, "OpPreventModeCtrl"

    .line 231
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Event: value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " max="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/plugin/OpPreventModeCtrl$ProximitorySensorListener;->this$0:Lcom/oneplus/plugin/OpPreventModeCtrl;

    invoke-static {v4}, Lcom/oneplus/plugin/OpPreventModeCtrl;->access$400(Lcom/oneplus/plugin/OpPreventModeCtrl;)Landroid/hardware/Sensor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v2

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v1

    const/4 v1, 0x1

    if-nez p1, :cond_1

    move v2, v1

    :cond_1
    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    .line 234
    :goto_0
    invoke-direct {p0, v1}, Lcom/oneplus/plugin/OpPreventModeCtrl$ProximitorySensorListener;->finishWithResult(I)V

    .line 236
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
