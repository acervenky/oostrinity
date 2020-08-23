.class public Lcom/oneplus/aod/OpAnalogClock;
.super Landroid/widget/FrameLayout;
.source "OpAnalogClock.java"


# static fields
.field private static final ANALOG_RES:[[I


# instance fields
.field private mBackground:Landroid/widget/ImageView;

.field private mClockSize:I

.field private mDateView:Landroid/widget/TextView;

.field private mDot:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mHour:Landroid/view/View;

.field private mMin:Landroid/view/View;

.field private mOuter:Landroid/view/View;

.field private final mRunnable:Ljava/lang/Runnable;

.field private mSec:Landroid/view/View;

.field private mStartSchedule:Z

.field private mStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v0, 0x7

    new-array v0, v0, [[I

    const/4 v1, 0x6

    new-array v2, v1, [I

    .line 49
    sget v3, Lcom/android/systemui/R$drawable;->analog_background:I

    const/4 v4, 0x0

    aput v3, v2, v4

    sget v3, Lcom/android/systemui/R$drawable;->analog_hour:I

    const/4 v5, 0x1

    aput v3, v2, v5

    sget v3, Lcom/android/systemui/R$drawable;->analog_min:I

    const/4 v6, 0x2

    aput v3, v2, v6

    const/4 v3, 0x3

    aput v4, v2, v3

    const/4 v7, 0x4

    aput v4, v2, v7

    sget v8, Lcom/android/systemui/R$drawable;->analog_sec:I

    const/4 v9, 0x5

    aput v8, v2, v9

    aput-object v2, v0, v4

    new-array v2, v1, [I

    sget v8, Lcom/android/systemui/R$drawable;->analog_my_background:I

    aput v8, v2, v4

    sget v8, Lcom/android/systemui/R$drawable;->analog_my_hour:I

    aput v8, v2, v5

    sget v8, Lcom/android/systemui/R$drawable;->analog_my_min:I

    aput v8, v2, v6

    sget v8, Lcom/android/systemui/R$drawable;->analog_my_dot:I

    aput v8, v2, v3

    sget v8, Lcom/android/systemui/R$drawable;->analog_my_outer:I

    aput v8, v2, v7

    aput v4, v2, v9

    aput-object v2, v0, v5

    new-array v2, v1, [I

    sget v8, Lcom/android/systemui/R$drawable;->analog_min_background:I

    aput v8, v2, v4

    sget v8, Lcom/android/systemui/R$drawable;->analog_min_hour:I

    aput v8, v2, v5

    sget v8, Lcom/android/systemui/R$drawable;->analog_min_min:I

    aput v8, v2, v6

    aput v4, v2, v3

    aput v4, v2, v7

    sget v8, Lcom/android/systemui/R$drawable;->analog_min_sec:I

    aput v8, v2, v9

    aput-object v2, v0, v6

    new-array v2, v1, [I

    sget v8, Lcom/android/systemui/R$drawable;->analog_min2_background:I

    aput v8, v2, v4

    sget v8, Lcom/android/systemui/R$drawable;->analog_min2_hour:I

    aput v8, v2, v5

    sget v8, Lcom/android/systemui/R$drawable;->analog_min2_min:I

    aput v8, v2, v6

    sget v8, Lcom/android/systemui/R$drawable;->analog_min2_dot:I

    aput v8, v2, v3

    aput v4, v2, v7

    aput v4, v2, v9

    aput-object v2, v0, v3

    new-array v2, v1, [I

    sget v8, Lcom/android/systemui/R$drawable;->analog_geomtry_background:I

    aput v8, v2, v4

    sget v8, Lcom/android/systemui/R$drawable;->analog_geomtry_hour:I

    aput v8, v2, v5

    sget v8, Lcom/android/systemui/R$drawable;->analog_geomtry_min:I

    aput v8, v2, v6

    aput v4, v2, v3

    aput v4, v2, v7

    sget v8, Lcom/android/systemui/R$drawable;->analog_geomtry_sec:I

    aput v8, v2, v9

    aput-object v2, v0, v7

    new-array v2, v1, [I

    sget v8, Lcom/android/systemui/R$drawable;->analog_roman_background:I

    aput v8, v2, v4

    sget v8, Lcom/android/systemui/R$drawable;->analog_roman_hour:I

    aput v8, v2, v5

    sget v8, Lcom/android/systemui/R$drawable;->analog_roman_min:I

    aput v8, v2, v6

    aput v4, v2, v3

    aput v4, v2, v7

    sget v8, Lcom/android/systemui/R$drawable;->analog_roman_sec:I

    aput v8, v2, v9

    aput-object v2, v0, v9

    new-array v2, v1, [I

    sget v8, Lcom/android/systemui/R$drawable;->analog_numeral_background:I

    aput v8, v2, v4

    sget v8, Lcom/android/systemui/R$drawable;->analog_numeral_hour:I

    aput v8, v2, v5

    sget v5, Lcom/android/systemui/R$drawable;->analog_numeral_min:I

    aput v5, v2, v6

    aput v4, v2, v3

    aput v4, v2, v7

    sget v3, Lcom/android/systemui/R$drawable;->analog_numeral_sec:I

    aput v3, v2, v9

    aput-object v2, v0, v1

    sput-object v0, Lcom/oneplus/aod/OpAnalogClock;->ANALOG_RES:[[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 130
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 124
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/oneplus/aod/OpAnalogClock;->mHandler:Landroid/os/Handler;

    .line 326
    new-instance p1, Lcom/oneplus/aod/OpAnalogClock$1;

    invoke-direct {p1, p0}, Lcom/oneplus/aod/OpAnalogClock$1;-><init>(Lcom/oneplus/aod/OpAnalogClock;)V

    iput-object p1, p0, Lcom/oneplus/aod/OpAnalogClock;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 134
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 124
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/oneplus/aod/OpAnalogClock;->mHandler:Landroid/os/Handler;

    .line 326
    new-instance p1, Lcom/oneplus/aod/OpAnalogClock$1;

    invoke-direct {p1, p0}, Lcom/oneplus/aod/OpAnalogClock$1;-><init>(Lcom/oneplus/aod/OpAnalogClock;)V

    iput-object p1, p0, Lcom/oneplus/aod/OpAnalogClock;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 138
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 124
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/oneplus/aod/OpAnalogClock;->mHandler:Landroid/os/Handler;

    .line 326
    new-instance p1, Lcom/oneplus/aod/OpAnalogClock$1;

    invoke-direct {p1, p0}, Lcom/oneplus/aod/OpAnalogClock$1;-><init>(Lcom/oneplus/aod/OpAnalogClock;)V

    iput-object p1, p0, Lcom/oneplus/aod/OpAnalogClock;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/OpAnalogClock;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/oneplus/aod/OpAnalogClock;->scheduleNext()V

    return-void
.end method

.method private loadDimensions()V
    .locals 2

    .line 283
    iget v0, p0, Lcom/oneplus/aod/OpAnalogClock;->mStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 284
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->op_aod_clock_analog_my_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/OpAnalogClock;->mClockSize:I

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 289
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->aod_clock_analog_numeral_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/OpAnalogClock;->mClockSize:I

    goto :goto_1

    .line 291
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->aod_clock_analog_min2_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/OpAnalogClock;->mClockSize:I

    goto :goto_1

    .line 287
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->clock_analog_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/OpAnalogClock;->mClockSize:I

    :goto_1
    return-void
.end method

.method private scheduleNext()V
    .locals 4

    .line 313
    iget-boolean v0, p0, Lcom/oneplus/aod/OpAnalogClock;->mStartSchedule:Z

    const-string v1, "OpAnalogClock"

    if-nez v0, :cond_0

    const-string p0, "end schedule, do not schedule next"

    .line 314
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 318
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/aod/OpAnalogClock;->refreshTime()V

    .line 319
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v2, 0xe

    .line 320
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    rsub-int v0, v0, 0x3e8

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scheduleNext: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v1, p0, Lcom/oneplus/aod/OpAnalogClock;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oneplus/aod/OpAnalogClock;->mRunnable:Ljava/lang/Runnable;

    int-to-long v2, v0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private shouldShowSeconds()Z
    .locals 2

    .line 265
    iget p0, p0, Lcom/oneplus/aod/OpAnalogClock;->mStyle:I

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    const/4 v1, 0x6

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const-string/jumbo p0, "sys.aod.show.seconds"

    .line 270
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private updateLayout()V
    .locals 1

    .line 277
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 278
    iget p0, p0, Lcom/oneplus/aod/OpAnalogClock;->mClockSize:I

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 279
    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method


# virtual methods
.method public endSchedule()V
    .locals 2

    .line 308
    iget-object v0, p0, Lcom/oneplus/aod/OpAnalogClock;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/aod/OpAnalogClock;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 309
    iput-boolean v0, p0, Lcom/oneplus/aod/OpAnalogClock;->mStartSchedule:Z

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 158
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 159
    invoke-virtual {p0}, Lcom/oneplus/aod/OpAnalogClock;->refreshTime()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 164
    invoke-virtual {p0}, Lcom/oneplus/aod/OpAnalogClock;->endSchedule()V

    .line 165
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 143
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 144
    sget v0, Lcom/android/systemui/R$id;->analog_hour:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpAnalogClock;->mHour:Landroid/view/View;

    .line 145
    sget v0, Lcom/android/systemui/R$id;->analog_min:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpAnalogClock;->mMin:Landroid/view/View;

    .line 146
    sget v0, Lcom/android/systemui/R$id;->analog_background:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/aod/OpAnalogClock;->mBackground:Landroid/widget/ImageView;

    .line 147
    sget v0, Lcom/android/systemui/R$id;->analog_outer:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpAnalogClock;->mOuter:Landroid/view/View;

    .line 148
    sget v0, Lcom/android/systemui/R$id;->analog_dot:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpAnalogClock;->mDot:Landroid/view/View;

    .line 149
    sget v0, Lcom/android/systemui/R$id;->analog_sec:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpAnalogClock;->mSec:Landroid/view/View;

    .line 150
    sget v0, Lcom/android/systemui/R$id;->analog_date_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/aod/OpAnalogClock;->mDateView:Landroid/widget/TextView;

    .line 152
    invoke-direct {p0}, Lcom/oneplus/aod/OpAnalogClock;->loadDimensions()V

    .line 153
    invoke-direct {p0}, Lcom/oneplus/aod/OpAnalogClock;->updateLayout()V

    return-void
.end method

.method public refreshTime()V
    .locals 6

    .line 169
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "hh:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 170
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 173
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    .line 174
    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    .line 175
    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 177
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " hour = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", min = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", sec = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "OpAnalogClock"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float v0, v2

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v0, v2

    const/high16 v4, 0x41400000    # 12.0f

    div-float/2addr v0, v4

    int-to-float v3, v3

    const/high16 v4, 0x41f00000    # 30.0f

    mul-float/2addr v4, v3

    const/high16 v5, 0x42700000    # 60.0f

    div-float/2addr v4, v5

    add-float/2addr v0, v4

    mul-float/2addr v3, v2

    div-float/2addr v3, v5

    int-to-float v1, v1

    mul-float/2addr v1, v2

    div-float/2addr v1, v5

    .line 185
    iget-object v2, p0, Lcom/oneplus/aod/OpAnalogClock;->mHour:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRotation()F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setRotation(F)V

    .line 186
    iget-object v2, p0, Lcom/oneplus/aod/OpAnalogClock;->mMin:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRotation()F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setRotation(F)V

    .line 187
    iget-object v2, p0, Lcom/oneplus/aod/OpAnalogClock;->mOuter:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRotation()F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setRotation(F)V

    .line 188
    iget-object v2, p0, Lcom/oneplus/aod/OpAnalogClock;->mSec:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRotation()F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setRotation(F)V

    .line 190
    iget-object v2, p0, Lcom/oneplus/aod/OpAnalogClock;->mHour:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setRotation(F)V

    .line 191
    iget-object v0, p0, Lcom/oneplus/aod/OpAnalogClock;->mMin:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setRotation(F)V

    .line 192
    iget-object v0, p0, Lcom/oneplus/aod/OpAnalogClock;->mOuter:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setRotation(F)V

    .line 193
    iget-object v0, p0, Lcom/oneplus/aod/OpAnalogClock;->mSec:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 195
    iget-object v0, p0, Lcom/oneplus/aod/OpAnalogClock;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 198
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "zh_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MMMMd"

    .line 200
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_0

    .line 203
    :cond_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v0, "MMM d"

    invoke-direct {v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 206
    :goto_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 207
    iget-object p0, p0, Lcom/oneplus/aod/OpAnalogClock;->mDateView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setClockStyle(I)V
    .locals 9

    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/16 v5, 0x8

    const/4 v6, 0x3

    const/4 v7, 0x0

    if-ne p1, v3, :cond_0

    .line 213
    iput v7, p0, Lcom/oneplus/aod/OpAnalogClock;->mStyle:I

    goto :goto_0

    :cond_0
    const/16 v8, 0x28

    if-ne p1, v8, :cond_1

    .line 215
    iput v2, p0, Lcom/oneplus/aod/OpAnalogClock;->mStyle:I

    goto :goto_0

    :cond_1
    const/4 v8, 0x7

    if-ne p1, v8, :cond_2

    .line 217
    iput v1, p0, Lcom/oneplus/aod/OpAnalogClock;->mStyle:I

    goto :goto_0

    :cond_2
    const/16 v8, 0xa

    if-ne p1, v8, :cond_3

    .line 219
    iput v6, p0, Lcom/oneplus/aod/OpAnalogClock;->mStyle:I

    goto :goto_0

    :cond_3
    const/16 v8, 0x9

    if-ne p1, v8, :cond_4

    .line 221
    iput v0, p0, Lcom/oneplus/aod/OpAnalogClock;->mStyle:I

    goto :goto_0

    :cond_4
    if-ne p1, v5, :cond_5

    .line 223
    iput v4, p0, Lcom/oneplus/aod/OpAnalogClock;->mStyle:I

    goto :goto_0

    :cond_5
    if-ne p1, v4, :cond_9

    .line 225
    iput v3, p0, Lcom/oneplus/aod/OpAnalogClock;->mStyle:I

    .line 230
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/aod/OpAnalogClock;->loadDimensions()V

    .line 231
    invoke-direct {p0}, Lcom/oneplus/aod/OpAnalogClock;->updateLayout()V

    .line 232
    iget-object p1, p0, Lcom/oneplus/aod/OpAnalogClock;->mHour:Landroid/view/View;

    sget-object v3, Lcom/oneplus/aod/OpAnalogClock;->ANALOG_RES:[[I

    iget v8, p0, Lcom/oneplus/aod/OpAnalogClock;->mStyle:I

    aget-object v3, v3, v8

    aget v2, v3, v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 233
    iget-object p1, p0, Lcom/oneplus/aod/OpAnalogClock;->mMin:Landroid/view/View;

    sget-object v2, Lcom/oneplus/aod/OpAnalogClock;->ANALOG_RES:[[I

    iget v3, p0, Lcom/oneplus/aod/OpAnalogClock;->mStyle:I

    aget-object v2, v2, v3

    aget v1, v2, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 234
    iget-object p1, p0, Lcom/oneplus/aod/OpAnalogClock;->mBackground:Landroid/widget/ImageView;

    sget-object v1, Lcom/oneplus/aod/OpAnalogClock;->ANALOG_RES:[[I

    iget v2, p0, Lcom/oneplus/aod/OpAnalogClock;->mStyle:I

    aget-object v1, v1, v2

    aget v1, v1, v7

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 235
    sget-object p1, Lcom/oneplus/aod/OpAnalogClock;->ANALOG_RES:[[I

    iget v1, p0, Lcom/oneplus/aod/OpAnalogClock;->mStyle:I

    aget-object v2, p1, v1

    aget v2, v2, v6

    if-eqz v2, :cond_6

    .line 236
    iget-object v2, p0, Lcom/oneplus/aod/OpAnalogClock;->mDot:Landroid/view/View;

    aget-object p1, p1, v1

    aget p1, p1, v6

    invoke-virtual {v2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 237
    iget-object p1, p0, Lcom/oneplus/aod/OpAnalogClock;->mDot:Landroid/view/View;

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 239
    :cond_6
    iget-object p1, p0, Lcom/oneplus/aod/OpAnalogClock;->mDot:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 241
    :goto_1
    invoke-direct {p0}, Lcom/oneplus/aod/OpAnalogClock;->shouldShowSeconds()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 242
    iget-object p1, p0, Lcom/oneplus/aod/OpAnalogClock;->mSec:Landroid/view/View;

    sget-object v1, Lcom/oneplus/aod/OpAnalogClock;->ANALOG_RES:[[I

    iget v2, p0, Lcom/oneplus/aod/OpAnalogClock;->mStyle:I

    aget-object v1, v1, v2

    aget v1, v1, v4

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 243
    iget-object p1, p0, Lcom/oneplus/aod/OpAnalogClock;->mSec:Landroid/view/View;

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 245
    :cond_7
    iget-object p1, p0, Lcom/oneplus/aod/OpAnalogClock;->mSec:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 247
    :goto_2
    iget-object p1, p0, Lcom/oneplus/aod/OpAnalogClock;->mOuter:Landroid/view/View;

    sget-object v1, Lcom/oneplus/aod/OpAnalogClock;->ANALOG_RES:[[I

    iget v2, p0, Lcom/oneplus/aod/OpAnalogClock;->mStyle:I

    aget-object v1, v1, v2

    aget v0, v1, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 249
    iget p1, p0, Lcom/oneplus/aod/OpAnalogClock;->mStyle:I

    if-ne p1, v6, :cond_8

    .line 250
    iget-object p1, p0, Lcom/oneplus/aod/OpAnalogClock;->mDateView:Landroid/widget/TextView;

    .line 251
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 252
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->aod_clock_min2_date_left:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 254
    iget-object p1, p0, Lcom/oneplus/aod/OpAnalogClock;->mDateView:Landroid/widget/TextView;

    .line 255
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->aod_clock_analog_min2_date_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v0

    int-to-float v0, v0

    .line 254
    invoke-virtual {p1, v7, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 257
    iget-object p1, p0, Lcom/oneplus/aod/OpAnalogClock;->mDateView:Landroid/widget/TextView;

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 259
    :cond_8
    iget-object p1, p0, Lcom/oneplus/aod/OpAnalogClock;->mDateView:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    :goto_3
    invoke-virtual {p0}, Lcom/oneplus/aod/OpAnalogClock;->refreshTime()V

    return-void

    .line 227
    :cond_9
    invoke-virtual {p0}, Lcom/oneplus/aod/OpAnalogClock;->endSchedule()V

    return-void
.end method

.method public startSchedule()V
    .locals 1

    .line 296
    invoke-direct {p0}, Lcom/oneplus/aod/OpAnalogClock;->shouldShowSeconds()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 299
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/aod/OpAnalogClock;->mStartSchedule:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 300
    iput-boolean v0, p0, Lcom/oneplus/aod/OpAnalogClock;->mStartSchedule:Z

    .line 301
    invoke-direct {p0}, Lcom/oneplus/aod/OpAnalogClock;->scheduleNext()V

    goto :goto_0

    :cond_1
    const-string p0, "OpAnalogClock"

    const-string v0, "already start scheduling..."

    .line 303
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
