.class public Lcom/oneplus/aod/OpTextDate;
.super Landroid/view/View;
.source "OpTextDate.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field public static final DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

.field public static final DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;


# instance fields
.field private mClockStyle:I

.field private mDateFontBaseLineY:F

.field private mDatePaint:Landroid/graphics/Paint;

.field private mDescFormat:Ljava/lang/CharSequence;

.field private mDescFormat12:Ljava/lang/CharSequence;

.field private mDescFormat24:Ljava/lang/CharSequence;

.field private mFormat:Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mFormat12:Ljava/lang/CharSequence;

.field private mFormat24:Ljava/lang/CharSequence;

.field private mHasSeconds:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mMarginTopAnalog:I

.field private mMarginTopAnalogMcl:I

.field private mMarginTopDefault:I

.field private mShowCurrentUserTime:Z

.field private mTextSize:F

.field private final mTicker:Ljava/lang/Runnable;

.field private mTime:Ljava/util/Calendar;

.field private mTimeZone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "h:mm a"

    .line 108
    sput-object v0, Lcom/oneplus/aod/OpTextDate;->DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

    const-string v0, "H:mm"

    .line 122
    sput-object v0, Lcom/oneplus/aod/OpTextDate;->DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 176
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 144
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oneplus/aod/OpTextDate;->mDatePaint:Landroid/graphics/Paint;

    .line 157
    new-instance p1, Lcom/oneplus/aod/OpTextDate$1;

    invoke-direct {p1, p0}, Lcom/oneplus/aod/OpTextDate$1;-><init>(Lcom/oneplus/aod/OpTextDate;)V

    iput-object p1, p0, Lcom/oneplus/aod/OpTextDate;->mTicker:Ljava/lang/Runnable;

    .line 177
    invoke-direct {p0}, Lcom/oneplus/aod/OpTextDate;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 193
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/aod/OpTextDate;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 208
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/aod/OpTextDate;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 212
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 144
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/OpTextDate;->mDatePaint:Landroid/graphics/Paint;

    .line 157
    new-instance v0, Lcom/oneplus/aod/OpTextDate$1;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/OpTextDate$1;-><init>(Lcom/oneplus/aod/OpTextDate;)V

    iput-object v0, p0, Lcom/oneplus/aod/OpTextDate;->mTicker:Ljava/lang/Runnable;

    .line 214
    sget-object v0, Lcom/android/internal/R$styleable;->TextClock:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 217
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/aod/OpTextDate;->mFormat12:Ljava/lang/CharSequence;

    const/4 p2, 0x1

    .line 218
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/aod/OpTextDate;->mFormat24:Ljava/lang/CharSequence;

    const/4 p2, 0x2

    .line 219
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/aod/OpTextDate;->mTimeZone:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 224
    invoke-direct {p0}, Lcom/oneplus/aod/OpTextDate;->init()V

    return-void

    :catchall_0
    move-exception p0

    .line 221
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method private static abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    move-object p0, p2

    goto :goto_0

    :cond_0
    move-object p0, p1

    :cond_1
    :goto_0
    return-object p0
.end method

.method static synthetic access$000(Lcom/oneplus/aod/OpTextDate;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/oneplus/aod/OpTextDate;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/aod/OpTextDate;)Ljava/lang/Runnable;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oneplus/aod/OpTextDate;->mTicker:Ljava/lang/Runnable;

    return-object p0
.end method

.method private chooseFormat()V
    .locals 1

    const/4 v0, 0x1

    .line 436
    invoke-direct {p0, v0}, Lcom/oneplus/aod/OpTextDate;->chooseFormat(Z)V

    return-void
.end method

.method private chooseFormat(Z)V
    .locals 3

    .line 457
    invoke-virtual {p0}, Lcom/oneplus/aod/OpTextDate;->is24HourModeEnabled()Z

    move-result v0

    .line 459
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/oneplus/aod/OpTextDate;->mFormat24:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/oneplus/aod/OpTextDate;->mFormat12:Ljava/lang/CharSequence;

    iget-object v1, v1, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/oneplus/aod/OpTextDate;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpTextDate;->mFormat:Ljava/lang/CharSequence;

    .line 462
    iget-object v0, p0, Lcom/oneplus/aod/OpTextDate;->mDescFormat24:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/oneplus/aod/OpTextDate;->mDescFormat12:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/oneplus/aod/OpTextDate;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Lcom/oneplus/aod/OpTextDate;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpTextDate;->mDescFormat:Ljava/lang/CharSequence;

    goto :goto_0

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/OpTextDate;->mFormat12:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/oneplus/aod/OpTextDate;->mFormat24:Ljava/lang/CharSequence;

    iget-object v1, v1, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/oneplus/aod/OpTextDate;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpTextDate;->mFormat:Ljava/lang/CharSequence;

    .line 465
    iget-object v0, p0, Lcom/oneplus/aod/OpTextDate;->mDescFormat12:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/oneplus/aod/OpTextDate;->mDescFormat24:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/oneplus/aod/OpTextDate;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Lcom/oneplus/aod/OpTextDate;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpTextDate;->mDescFormat:Ljava/lang/CharSequence;

    .line 467
    :goto_0
    iget-boolean v0, p0, Lcom/oneplus/aod/OpTextDate;->mHasSeconds:Z

    .line 468
    iget-object v1, p0, Lcom/oneplus/aod/OpTextDate;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/format/DateFormat;->hasSeconds(Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/aod/OpTextDate;->mHasSeconds:Z

    if-eqz p1, :cond_2

    .line 470
    iget-boolean p1, p0, Lcom/oneplus/aod/OpTextDate;->mHasSeconds:Z

    if-eq v0, p1, :cond_2

    if-eqz v0, :cond_1

    .line 471
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/aod/OpTextDate;->mTicker:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 472
    :cond_1
    iget-object p0, p0, Lcom/oneplus/aod/OpTextDate;->mTicker:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_2
    :goto_1
    return-void
.end method

.method private createTime(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 251
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/aod/OpTextDate;->mTime:Ljava/util/Calendar;

    goto :goto_0

    .line 253
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/aod/OpTextDate;->mTime:Ljava/util/Calendar;

    :goto_0
    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;)V
    .locals 9

    .line 524
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    .line 525
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 528
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 531
    iget v4, p0, Lcom/oneplus/aod/OpTextDate;->mClockStyle:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 532
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    goto :goto_0

    .line 534
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    .line 537
    :goto_0
    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "zh_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    .line 541
    iget v7, p0, Lcom/oneplus/aod/OpTextDate;->mClockStyle:I

    const/4 v8, 0x3

    if-ne v7, v1, :cond_1

    .line 545
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v6, Lcom/android/systemui/R$string;->system_ui_aod_date_pattern:I

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 544
    invoke-static {v1, v4}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object v1

    .line 546
    sget-object v4, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    invoke-virtual {v1, v4}, Landroid/icu/text/DateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    .line 547
    iget-object v4, p0, Lcom/oneplus/aod/OpTextDate;->mTime:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_1
    if-eqz v6, :cond_2

    const-string v1, "MMMMd"

    .line 550
    invoke-static {v4, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "EEE"

    .line 551
    invoke-static {v4, v6}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 552
    new-instance v7, Ljava/text/SimpleDateFormat;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 553
    iget-object v1, p0, Lcom/oneplus/aod/OpTextDate;->mTime:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 554
    new-instance v7, Ljava/text/SimpleDateFormat;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 555
    iget-object v4, p0, Lcom/oneplus/aod/OpTextDate;->mTime:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 560
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_2
    if-eq v7, v8, :cond_4

    if-ne v7, v5, :cond_3

    goto :goto_1

    :cond_3
    const-string v1, "EEE, MMM d"

    .line 567
    invoke-static {v4, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    :goto_1
    const-string v1, "EEEE, MMM d"

    .line 565
    invoke-static {v4, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 569
    :goto_2
    new-instance v6, Ljava/text/SimpleDateFormat;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 570
    iget-object v1, p0, Lcom/oneplus/aod/OpTextDate;->mTime:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    int-to-float v0, v0

    .line 573
    iget v4, p0, Lcom/oneplus/aod/OpTextDate;->mDateFontBaseLineY:F

    iget-object v6, p0, Lcom/oneplus/aod/OpTextDate;->mDatePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v4, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 574
    iget-object p1, p0, Lcom/oneplus/aod/OpTextDate;->mDatePaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v1, v0, v4, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 575
    iget-object p1, p0, Lcom/oneplus/aod/OpTextDate;->mDatePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    iput p1, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 577
    iget-object p1, p0, Lcom/oneplus/aod/OpTextDate;->mDatePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    .line 578
    iget v0, p1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    iput p1, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 579
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isMCLVersion()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 580
    iget p1, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    add-int/2addr p1, v5

    iput p1, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_4

    .line 581
    :cond_5
    iget p1, p0, Lcom/oneplus/aod/OpTextDate;->mClockStyle:I

    if-eq p1, v8, :cond_6

    if-ne p1, v5, :cond_7

    .line 583
    :cond_6
    iget p1, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    add-int/lit8 p1, p1, 0x6

    iput p1, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 585
    :cond_7
    :goto_4
    invoke-virtual {p0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private init()V
    .locals 3

    .line 228
    iget-object v0, p0, Lcom/oneplus/aod/OpTextDate;->mFormat12:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/OpTextDate;->mFormat24:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    .line 229
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 230
    iget-object v1, p0, Lcom/oneplus/aod/OpTextDate;->mFormat12:Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    .line 231
    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    iput-object v1, p0, Lcom/oneplus/aod/OpTextDate;->mFormat12:Ljava/lang/CharSequence;

    .line 233
    :cond_1
    iget-object v1, p0, Lcom/oneplus/aod/OpTextDate;->mFormat24:Ljava/lang/CharSequence;

    if-nez v1, :cond_2

    .line 234
    iget-object v0, v0, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/aod/OpTextDate;->mFormat24:Ljava/lang/CharSequence;

    .line 238
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/aod/OpTextDate;->reloadDimen()V

    .line 239
    iget-object v0, p0, Lcom/oneplus/aod/OpTextDate;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/aod/OpTextDate;->createTime(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 241
    invoke-direct {p0, v0}, Lcom/oneplus/aod/OpTextDate;->chooseFormat(Z)V

    .line 243
    iget-object v0, p0, Lcom/oneplus/aod/OpTextDate;->mDatePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 244
    iget-object v0, p0, Lcom/oneplus/aod/OpTextDate;->mDatePaint:Landroid/graphics/Paint;

    const-string v1, "0.025"

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 245
    iget-object v0, p0, Lcom/oneplus/aod/OpTextDate;->mDatePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$color;->date_view_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 246
    iget-object p0, p0, Lcom/oneplus/aod/OpTextDate;->mDatePaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method

.method private onTimeChanged()V
    .locals 2

    .line 494
    iget-object v0, p0, Lcom/oneplus/aod/OpTextDate;->mDescFormat:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/oneplus/aod/OpTextDate;->mTime:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 495
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private reloadDimen()V
    .locals 2

    .line 509
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->date_view_font_base_line_y:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/OpTextDate;->mDateFontBaseLineY:F

    .line 510
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->date_view_default_marginTop:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/OpTextDate;->mMarginTopDefault:I

    .line 511
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->date_view_analog_marginTop:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/OpTextDate;->mMarginTopAnalog:I

    .line 512
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->date_view_analog_mcl_marginTop:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/OpTextDate;->mMarginTopAnalogMcl:I

    .line 513
    iget v0, p0, Lcom/oneplus/aod/OpTextDate;->mClockStyle:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 514
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->op_owner_info_font_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/oneplus/aod/OpTextDate;->mTextSize:F

    goto :goto_0

    .line 516
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->date_view_font_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/oneplus/aod/OpTextDate;->mTextSize:F

    .line 518
    :goto_0
    iget-object v0, p0, Lcom/oneplus/aod/OpTextDate;->mDatePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oneplus/aod/OpTextDate;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 520
    invoke-direct {p0}, Lcom/oneplus/aod/OpTextDate;->resetTypeface()V

    return-void
.end method

.method private resetTextSize()V
    .locals 2

    .line 617
    iget v0, p0, Lcom/oneplus/aod/OpTextDate;->mClockStyle:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 618
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->op_owner_info_font_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/oneplus/aod/OpTextDate;->mTextSize:F

    goto :goto_0

    .line 620
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->date_view_font_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/oneplus/aod/OpTextDate;->mTextSize:F

    .line 622
    :goto_0
    iget-object v0, p0, Lcom/oneplus/aod/OpTextDate;->mDatePaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/oneplus/aod/OpTextDate;->mTextSize:F

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method private resetTypeface()V
    .locals 4

    .line 627
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 628
    iget v1, p0, Lcom/oneplus/aod/OpTextDate;->mClockStyle:I

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 630
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 633
    :cond_0
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isMCLVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 634
    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->getMclTypeface(I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 631
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$font;->oneplus_aod_font:I

    invoke-static {v0, v1}, Landroid/support/v4/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v0

    const/16 v1, 0x190

    .line 632
    invoke-static {v0, v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_3

    const-string v0, "sans-serif-medium"

    .line 637
    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 639
    :cond_3
    iget-object p0, p0, Lcom/oneplus/aod/OpTextDate;->mDatePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method private updateMarginTop()V
    .locals 3

    .line 600
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 602
    iget v1, p0, Lcom/oneplus/aod/OpTextDate;->mClockStyle:I

    if-nez v1, :cond_0

    .line 603
    iget v1, p0, Lcom/oneplus/aod/OpTextDate;->mMarginTopDefault:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 605
    iget v1, p0, Lcom/oneplus/aod/OpTextDate;->mMarginTopAnalog:I

    goto :goto_0

    :cond_1
    const/16 v2, 0x28

    if-ne v1, v2, :cond_2

    .line 607
    iget v1, p0, Lcom/oneplus/aod/OpTextDate;->mMarginTopAnalogMcl:I

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 609
    :goto_0
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 610
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isMCLVersion()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 611
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/lit8 v1, v1, -0x4

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 613
    :cond_3
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public is24HourModeEnabled()Z
    .locals 1

    .line 385
    iget-boolean v0, p0, Lcom/oneplus/aod/OpTextDate;->mShowCurrentUserTime:Z

    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result p0

    return p0

    .line 388
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 485
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 486
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 487
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/OpTextDate;->setTimeZone(Ljava/lang/String;)V

    .line 489
    invoke-direct {p0}, Lcom/oneplus/aod/OpTextDate;->resetTypeface()V

    .line 490
    invoke-direct {p0}, Lcom/oneplus/aod/OpTextDate;->updateMarginTop()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 500
    iget-object v0, p0, Lcom/oneplus/aod/OpTextDate;->mTime:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 502
    invoke-direct {p0, p1}, Lcom/oneplus/aod/OpTextDate;->drawText(Landroid/graphics/Canvas;)V

    .line 504
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setClockStyle(I)V
    .locals 1

    .line 589
    iget v0, p0, Lcom/oneplus/aod/OpTextDate;->mClockStyle:I

    if-eq v0, p1, :cond_0

    .line 590
    iput p1, p0, Lcom/oneplus/aod/OpTextDate;->mClockStyle:I

    .line 593
    invoke-direct {p0}, Lcom/oneplus/aod/OpTextDate;->updateMarginTop()V

    .line 594
    invoke-direct {p0}, Lcom/oneplus/aod/OpTextDate;->resetTextSize()V

    .line 595
    invoke-direct {p0}, Lcom/oneplus/aod/OpTextDate;->resetTypeface()V

    :cond_0
    return-void
.end method

.method public setFormat12Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 299
    iput-object p1, p0, Lcom/oneplus/aod/OpTextDate;->mFormat12:Ljava/lang/CharSequence;

    .line 301
    invoke-direct {p0}, Lcom/oneplus/aod/OpTextDate;->chooseFormat()V

    .line 302
    invoke-direct {p0}, Lcom/oneplus/aod/OpTextDate;->onTimeChanged()V

    return-void
.end method

.method public setFormat24Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 346
    iput-object p1, p0, Lcom/oneplus/aod/OpTextDate;->mFormat24:Ljava/lang/CharSequence;

    .line 348
    invoke-direct {p0}, Lcom/oneplus/aod/OpTextDate;->chooseFormat()V

    .line 349
    invoke-direct {p0}, Lcom/oneplus/aod/OpTextDate;->onTimeChanged()V

    return-void
.end method

.method public setShowCurrentUserTime(Z)V
    .locals 0

    .line 360
    iput-boolean p1, p0, Lcom/oneplus/aod/OpTextDate;->mShowCurrentUserTime:Z

    .line 362
    invoke-direct {p0}, Lcom/oneplus/aod/OpTextDate;->chooseFormat()V

    .line 363
    invoke-direct {p0}, Lcom/oneplus/aod/OpTextDate;->onTimeChanged()V

    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 423
    iput-object p1, p0, Lcom/oneplus/aod/OpTextDate;->mTimeZone:Ljava/lang/String;

    .line 425
    invoke-direct {p0, p1}, Lcom/oneplus/aod/OpTextDate;->createTime(Ljava/lang/String;)V

    .line 426
    invoke-direct {p0}, Lcom/oneplus/aod/OpTextDate;->onTimeChanged()V

    return-void
.end method
