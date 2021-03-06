.class Lcom/oneplus/lib/widget/SimpleMonthView;
.super Landroid/view/View;
.source "SimpleMonthView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/SimpleMonthView$OnDayClickListener;,
        Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;
    }
.end annotation


# instance fields
.field private mActivatedDay:I

.field private final mCalendar:Ljava/util/Calendar;

.field private mCellWidth:I

.field private mContext:Landroid/content/Context;

.field private final mDayFormatter:Ljava/text/NumberFormat;

.field private mDayHeight:I

.field private final mDayHighlightPaint:Landroid/graphics/Paint;

.field private final mDayHighlightSelectorPaint:Landroid/graphics/Paint;

.field private mDayOfWeekHeight:I

.field private final mDayOfWeekLabels:[Ljava/lang/String;

.field private final mDayOfWeekPaint:Landroid/text/TextPaint;

.field private mDayOfWeekStart:I

.field private final mDayPaint:Landroid/text/TextPaint;

.field private final mDaySelectorPaint:Landroid/graphics/Paint;

.field private mDaySelectorRadius:I

.field private mDayTextColor:Landroid/content/res/ColorStateList;

.field private mDaysInMonth:I

.field private final mDesiredCellWidth:I

.field private final mDesiredDayHeight:I

.field private final mDesiredDayOfWeekHeight:I

.field private final mDesiredDaySelectorRadius:I

.field private final mDesiredMonthHeight:I

.field private mEnabledDayEnd:I

.field private mEnabledDayStart:I

.field private mHighlightedDay:I

.field private mIsTouchHighlighted:Z

.field private final mLocale:Ljava/util/Locale;

.field private mMonth:I

.field private mMonthHeight:I

.field private final mMonthPaint:Landroid/text/TextPaint;

.field private mMonthYearLabel:Ljava/lang/String;

.field private mOnDayClickListener:Lcom/oneplus/lib/widget/SimpleMonthView$OnDayClickListener;

.field private mPaddedHeight:I

.field private mPaddedWidth:I

.field private mPreviouslyHighlightedDay:I

.field private mToday:I

.field private final mTouchHelper:Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;

.field private mWeekStart:I

.field private mYear:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 133
    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/SimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101035c

    .line 137
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/SimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 141
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/SimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 145
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 57
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    .line 58
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    .line 59
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    .line 60
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    .line 61
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    .line 62
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    const/4 p2, 0x7

    new-array p2, p2, [Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekLabels:[Ljava/lang/String;

    const/4 p2, -0x1

    .line 97
    iput p2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mActivatedDay:I

    .line 103
    iput p2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mToday:I

    const/4 p3, 0x1

    .line 106
    iput p3, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mWeekStart:I

    .line 118
    iput p3, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mEnabledDayStart:I

    const/16 p4, 0x1f

    .line 121
    iput p4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mEnabledDayEnd:I

    .line 128
    iput p2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    .line 129
    iput p2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mPreviouslyHighlightedDay:I

    const/4 p2, 0x0

    .line 130
    iput-boolean p2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mIsTouchHighlighted:Z

    .line 146
    iput-object p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mContext:Landroid/content/Context;

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 148
    sget p2, Lcom/oneplus/commonctrl/R$dimen;->date_picker_month_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDesiredMonthHeight:I

    .line 149
    sget p2, Lcom/oneplus/commonctrl/R$dimen;->date_picker_day_of_week_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDesiredDayOfWeekHeight:I

    .line 150
    sget p2, Lcom/oneplus/commonctrl/R$dimen;->date_picker_day_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDesiredDayHeight:I

    .line 151
    sget p2, Lcom/oneplus/commonctrl/R$dimen;->date_picker_day_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDesiredCellWidth:I

    .line 152
    sget p2, Lcom/oneplus/commonctrl/R$dimen;->date_picker_day_selector_radius:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDesiredDaySelectorRadius:I

    .line 156
    new-instance p2, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-direct {p2, p0, p0}, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;-><init>(Lcom/oneplus/lib/widget/SimpleMonthView;Landroid/view/View;)V

    iput-object p2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mTouchHelper:Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;

    .line 157
    iget-object p2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mTouchHelper:Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {p0, p2}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 158
    invoke-virtual {p0, p3}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 160
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget-object p2, p2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object p2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    .line 161
    iget-object p2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    .line 163
    iget-object p2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    invoke-static {p2}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayFormatter:Ljava/text/NumberFormat;

    .line 165
    invoke-direct {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->updateMonthYearLabel()V

    .line 166
    invoke-direct {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->updateDayOfWeekLabels()V

    .line 168
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/SimpleMonthView;->initPaints(Landroid/content/res/Resources;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/widget/SimpleMonthView;II)I
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/SimpleMonthView;->getDayAtLocation(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/oneplus/lib/widget/SimpleMonthView;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaysInMonth:I

    return p0
.end method

.method static synthetic access$200(Lcom/oneplus/lib/widget/SimpleMonthView;I)Z
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/SimpleMonthView;->isDayEnabled(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/oneplus/lib/widget/SimpleMonthView;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mActivatedDay:I

    return p0
.end method

.method static synthetic access$400(Lcom/oneplus/lib/widget/SimpleMonthView;I)Z
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/SimpleMonthView;->onDayClicked(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/oneplus/lib/widget/SimpleMonthView;I)Z
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/SimpleMonthView;->isValidDayOfMonth(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/oneplus/lib/widget/SimpleMonthView;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mYear:I

    return p0
.end method

.method static synthetic access$700(Lcom/oneplus/lib/widget/SimpleMonthView;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonth:I

    return p0
.end method

.method static synthetic access$800(Lcom/oneplus/lib/widget/SimpleMonthView;)Ljava/text/NumberFormat;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayFormatter:Ljava/text/NumberFormat;

    return-object p0
.end method

.method private applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;
    .locals 3

    .line 198
    iget-object p0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->OPTextAppearance:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 201
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->OPTextAppearance_android_fontFamily:I

    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 203
    invoke-static {p2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 206
    :cond_0
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->OPTextAppearance_android_textSize:I

    .line 207
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    .line 206
    invoke-virtual {p0, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 209
    sget p2, Lcom/oneplus/commonctrl/R$styleable;->OPTextAppearance_android_textColor:I

    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 211
    sget-object v0, Landroid/view/View;->ENABLED_STATE_SET:[I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 212
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 215
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p2
.end method

.method private drawDays(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 647
    iget-object v2, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    .line 648
    iget v3, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthHeight:I

    iget v4, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekHeight:I

    add-int/2addr v3, v4

    .line 649
    iget v4, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayHeight:I

    .line 650
    iget v5, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mCellWidth:I

    .line 653
    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    invoke-virtual {v2}, Landroid/text/TextPaint;->descent()F

    move-result v7

    add-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    .line 654
    div-int/lit8 v7, v4, 0x2

    add-int/2addr v3, v7

    .line 656
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->findDayOffset()I

    move-result v7

    move v9, v3

    const/4 v3, 0x1

    :goto_0
    iget v10, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaysInMonth:I

    if-gt v3, v10, :cond_a

    mul-int v10, v5, v7

    .line 657
    div-int/lit8 v11, v5, 0x2

    add-int/2addr v10, v11

    .line 659
    invoke-static/range {p0 .. p0}, Lcom/oneplus/lib/widget/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 660
    iget v11, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mPaddedWidth:I

    sub-int v10, v11, v10

    .line 667
    :cond_0
    invoke-direct {v0, v3}, Lcom/oneplus/lib/widget/SimpleMonthView;->isDayEnabled(I)Z

    move-result v11

    if-eqz v11, :cond_1

    const/16 v13, 0x8

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    .line 672
    :goto_1
    iget v14, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mActivatedDay:I

    if-ne v14, v3, :cond_2

    const/4 v14, 0x1

    goto :goto_2

    :cond_2
    const/4 v14, 0x0

    .line 673
    :goto_2
    iget v15, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    if-ne v15, v3, :cond_3

    const/4 v15, 0x1

    goto :goto_3

    :cond_3
    const/4 v15, 0x0

    :goto_3
    if-eqz v14, :cond_5

    or-int/lit8 v13, v13, 0x20

    if-eqz v15, :cond_4

    .line 678
    iget-object v11, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    goto :goto_4

    .line 679
    :cond_4
    iget-object v11, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    :goto_4
    int-to-float v15, v10

    int-to-float v8, v9

    .line 680
    iget v12, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaySelectorRadius:I

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    invoke-virtual {v1, v15, v8, v12, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_5

    :cond_5
    if-eqz v15, :cond_6

    or-int/lit8 v13, v13, 0x10

    if-eqz v11, :cond_6

    int-to-float v8, v10

    int-to-float v11, v9

    .line 686
    iget v12, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaySelectorRadius:I

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    iget-object v15, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v11, v12, v15}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 691
    :cond_6
    :goto_5
    iget v8, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mToday:I

    if-ne v8, v3, :cond_7

    const/4 v8, 0x1

    goto :goto_6

    :cond_7
    const/4 v8, 0x0

    :goto_6
    if-eqz v8, :cond_8

    if-nez v14, :cond_8

    .line 694
    iget-object v8, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getColor()I

    move-result v8

    const/4 v11, 0x1

    const/4 v12, 0x0

    goto :goto_7

    .line 696
    :cond_8
    invoke-static {v13}, Lcom/oneplus/lib/widget/util/ViewUtils;->getViewState(I)[I

    move-result-object v8

    .line 697
    iget-object v11, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayTextColor:Landroid/content/res/ColorStateList;

    const/4 v12, 0x0

    invoke-virtual {v11, v8, v12}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v8

    const/4 v11, 0x1

    .line 698
    invoke-virtual {v2, v11}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 700
    :goto_7
    invoke-virtual {v2, v8}, Landroid/text/TextPaint;->setColor(I)V

    .line 702
    iget-object v8, v0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayFormatter:Ljava/text/NumberFormat;

    int-to-long v13, v3

    invoke-virtual {v8, v13, v14}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v8

    int-to-float v10, v10

    int-to-float v13, v9

    sub-float/2addr v13, v6

    invoke-virtual {v1, v8, v10, v13, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x7

    if-ne v7, v8, :cond_9

    add-int/2addr v9, v4

    move v7, v12

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method private drawDaysOfWeek(Landroid/graphics/Canvas;)V
    .locals 8

    .line 620
    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    .line 621
    iget v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthHeight:I

    .line 622
    iget v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekHeight:I

    .line 623
    iget v3, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mCellWidth:I

    .line 626
    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 627
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    const/4 v2, 0x0

    :goto_0
    const/4 v5, 0x7

    if-ge v2, v5, :cond_1

    mul-int v5, v3, v2

    .line 630
    div-int/lit8 v6, v3, 0x2

    add-int/2addr v5, v6

    .line 632
    invoke-static {p0}, Lcom/oneplus/lib/widget/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 633
    iget v6, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mPaddedWidth:I

    sub-int v5, v6, v5

    .line 638
    :cond_0
    iget-object v6, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekLabels:[Ljava/lang/String;

    aget-object v6, v6, v2

    int-to-float v5, v5

    int-to-float v7, v1

    sub-float/2addr v7, v4

    .line 639
    invoke-virtual {p1, v6, v5, v7, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private drawMonth(Landroid/graphics/Canvas;)V
    .locals 4

    .line 606
    iget v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mPaddedWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 609
    iget-object v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v2

    iget-object v3, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->descent()F

    move-result v3

    add-float/2addr v2, v3

    .line 610
    iget v3, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthHeight:I

    int-to-float v3, v3

    sub-float/2addr v3, v2

    div-float/2addr v3, v1

    .line 612
    iget-object v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthYearLabel:Ljava/lang/String;

    iget-object p0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v0, v3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private ensureFocusedDay()V
    .locals 2

    .line 568
    iget v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 571
    :cond_0
    iget v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mPreviouslyHighlightedDay:I

    if-eq v0, v1, :cond_1

    .line 572
    iput v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    return-void

    .line 575
    :cond_1
    iget v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mActivatedDay:I

    if-eq v0, v1, :cond_2

    .line 576
    iput v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 579
    iput v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    return-void
.end method

.method private findClosestColumn(Landroid/graphics/Rect;)I
    .locals 2

    const/4 v0, 0x3

    if-nez p1, :cond_0

    return v0

    .line 537
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr p1, v1

    .line 541
    iget v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mCellWidth:I

    if-nez v1, :cond_1

    return v0

    .line 545
    :cond_1
    div-int/2addr p1, v1

    const/4 v0, 0x0

    const/4 v1, 0x6

    .line 546
    invoke-static {p1, v0, v1}, Lcom/oneplus/lib/util/MathUtils;->constrain(III)I

    move-result p1

    .line 547
    invoke-static {p0}, Lcom/oneplus/lib/widget/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_2

    rsub-int/lit8 p0, p1, 0x7

    add-int/lit8 p1, p0, -0x1

    :cond_2
    return p1
.end method

.method private findClosestRow(Landroid/graphics/Rect;)I
    .locals 4

    if-nez p1, :cond_0

    const/4 p0, 0x3

    return p0

    .line 509
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    .line 511
    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    .line 512
    iget v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthHeight:I

    iget v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekHeight:I

    add-int/2addr v1, v2

    .line 513
    iget v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayHeight:I

    .line 516
    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    add-float/2addr v3, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v3, v0

    .line 517
    div-int/lit8 v0, v2, 0x2

    add-int/2addr v1, v0

    int-to-float p1, p1

    int-to-float v0, v1

    sub-float/2addr v0, v3

    sub-float/2addr p1, v0

    float-to-int p1, p1

    int-to-float p1, p1

    int-to-float v0, v2

    div-float/2addr p1, v0

    .line 520
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 521
    invoke-direct {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->findDayOffset()I

    move-result v0

    iget p0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaysInMonth:I

    add-int/2addr v0, p0

    .line 522
    div-int/lit8 p0, v0, 0x7

    rem-int/lit8 v0, v0, 0x7

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    sub-int/2addr p0, v0

    .line 524
    invoke-static {p1, v1, p0}, Lcom/oneplus/lib/util/MathUtils;->constrain(III)I

    move-result p0

    return p0
.end method

.method private findDayOffset()I
    .locals 2

    .line 916
    iget v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekStart:I

    iget p0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mWeekStart:I

    sub-int v1, v0, p0

    if-ge v0, p0, :cond_0

    add-int/lit8 v1, v1, 0x7

    :cond_0
    return v1
.end method

.method private getDayAtLocation(II)I
    .locals 3

    .line 933
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    const/4 v0, -0x1

    if-ltz p1, :cond_4

    .line 934
    iget v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mPaddedWidth:I

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 938
    :cond_0
    iget v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthHeight:I

    iget v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekHeight:I

    add-int/2addr v1, v2

    .line 939
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr p2, v2

    if-lt p2, v1, :cond_4

    .line 940
    iget v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mPaddedHeight:I

    if-lt p2, v2, :cond_1

    goto :goto_0

    .line 946
    :cond_1
    invoke-static {p0}, Lcom/oneplus/lib/widget/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 947
    iget v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mPaddedWidth:I

    sub-int p1, v2, p1

    :cond_2
    sub-int/2addr p2, v1

    .line 952
    iget v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayHeight:I

    div-int/2addr p2, v1

    mul-int/lit8 p1, p1, 0x7

    .line 953
    iget v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mPaddedWidth:I

    div-int/2addr p1, v1

    mul-int/lit8 p2, p2, 0x7

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x1

    .line 955
    invoke-direct {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->findDayOffset()I

    move-result p2

    sub-int/2addr p1, p2

    .line 956
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/SimpleMonthView;->isValidDayOfMonth(I)Z

    move-result p0

    if-nez p0, :cond_3

    return v0

    :cond_3
    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method private static getDaysInMonth(II)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 839
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid Month"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/16 p0, 0x1e

    return p0

    .line 837
    :pswitch_1
    rem-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_0

    const/16 p0, 0x1d

    goto :goto_0

    :cond_0
    const/16 p0, 0x1c

    :goto_0
    return p0

    :pswitch_2
    const/16 p0, 0x1f

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private initPaints(Landroid/content/res/Resources;)V
    .locals 7

    .line 252
    sget v0, Lcom/oneplus/commonctrl/R$string;->date_picker_month_typeface:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 253
    sget v1, Lcom/oneplus/commonctrl/R$string;->date_picker_day_of_week_typeface:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 254
    sget v2, Lcom/oneplus/commonctrl/R$string;->date_picker_day_typeface:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 256
    sget v3, Lcom/oneplus/commonctrl/R$dimen;->date_picker_month_text_size:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 258
    sget v4, Lcom/oneplus/commonctrl/R$dimen;->date_picker_day_of_week_text_size:I

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 260
    sget v5, Lcom/oneplus/commonctrl/R$dimen;->date_picker_day_text_size:I

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 263
    iget-object v5, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 264
    iget-object v5, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    int-to-float v3, v3

    invoke-virtual {v5, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 265
    iget-object v3, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    const/4 v5, 0x0

    invoke-static {v0, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 266
    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 267
    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 269
    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 270
    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    int-to-float v3, v4

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 271
    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-static {v1, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 272
    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 273
    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 275
    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 276
    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 278
    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 279
    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 281
    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 282
    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 284
    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 285
    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 286
    iget-object p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    invoke-static {v2, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 287
    iget-object p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 288
    iget-object p0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private isDayEnabled(I)Z
    .locals 1

    .line 714
    iget v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mEnabledDayStart:I

    if-lt p1, v0, :cond_0

    iget p0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mEnabledDayEnd:I

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isFirstDayOfWeek(I)Z
    .locals 0

    .line 583
    invoke-direct {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->findDayOffset()I

    move-result p0

    add-int/2addr p0, p1

    const/4 p1, 0x1

    sub-int/2addr p0, p1

    .line 584
    rem-int/lit8 p0, p0, 0x7

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isLastDayOfWeek(I)Z
    .locals 0

    .line 588
    invoke-direct {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->findDayOffset()I

    move-result p0

    add-int/2addr p0, p1

    .line 589
    rem-int/lit8 p0, p0, 0x7

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isValidDayOfMonth(I)Z
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 718
    iget p0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaysInMonth:I

    if-gt p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isValidDayOfWeek(I)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/4 v1, 0x7

    if-gt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isValidMonth(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0xb

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private moveOneDay(Z)Z
    .locals 2

    .line 447
    invoke-direct {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->ensureFocusedDay()V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 450
    iget p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/SimpleMonthView;->isLastDayOfWeek(I)Z

    move-result p1

    if-nez p1, :cond_1

    iget p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    iget v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaysInMonth:I

    if-ge p1, v1, :cond_1

    add-int/2addr p1, v0

    .line 451
    iput p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    goto :goto_0

    .line 455
    :cond_0
    iget p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/SimpleMonthView;->isFirstDayOfWeek(I)Z

    move-result p1

    if-nez p1, :cond_1

    iget p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    if-le p1, v0, :cond_1

    sub-int/2addr p1, v0

    .line 456
    iput p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onDayClicked(I)Z
    .locals 3

    .line 1004
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/SimpleMonthView;->isValidDayOfMonth(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/SimpleMonthView;->isDayEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1008
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mOnDayClickListener:Lcom/oneplus/lib/widget/SimpleMonthView$OnDayClickListener;

    if-eqz v0, :cond_1

    .line 1009
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1010
    iget v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mYear:I

    iget v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonth:I

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/Calendar;->set(III)V

    .line 1011
    iget-object v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mOnDayClickListener:Lcom/oneplus/lib/widget/SimpleMonthView$OnDayClickListener;

    invoke-interface {v1, p0, v0}, Lcom/oneplus/lib/widget/SimpleMonthView$OnDayClickListener;->onDayClick(Lcom/oneplus/lib/widget/SimpleMonthView;Ljava/util/Calendar;)V

    .line 1015
    :cond_1
    iget-object p0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mTouchHelper:Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private sameDay(ILjava/util/Calendar;)Z
    .locals 3

    .line 844
    iget v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mYear:I

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_0

    iget p0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonth:I

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x5

    .line 845
    invoke-virtual {p2, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private updateDayOfWeekLabels()V
    .locals 6

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    const/16 v3, 0x32

    .line 182
    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x7

    if-ge v2, v3, :cond_1

    .line 185
    iget-object v4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekLabels:[Ljava/lang/String;

    iget v5, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mWeekStart:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v1

    rem-int/2addr v5, v3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private updateMonthYearLabel()V
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    const-string v1, "MMMMy"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 174
    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthYearLabel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mTouchHelper:Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public getBoundsForDay(ILandroid/graphics/Rect;)Z
    .locals 6

    .line 970
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/SimpleMonthView;->isValidDayOfMonth(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    sub-int/2addr p1, v0

    .line 974
    invoke-direct {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->findDayOffset()I

    move-result v1

    add-int/2addr p1, v1

    .line 977
    rem-int/lit8 v1, p1, 0x7

    .line 978
    iget v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mCellWidth:I

    .line 980
    invoke-static {p0}, Lcom/oneplus/lib/widget/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 981
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v1, v0

    mul-int/2addr v1, v2

    sub-int/2addr v3, v1

    goto :goto_0

    .line 983
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    mul-int/2addr v1, v2

    add-int/2addr v3, v1

    .line 987
    :goto_0
    div-int/lit8 p1, p1, 0x7

    .line 988
    iget v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayHeight:I

    .line 989
    iget v4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthHeight:I

    iget v5, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekHeight:I

    add-int/2addr v4, v5

    .line 990
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    add-int/2addr p0, v4

    mul-int/2addr p1, v1

    add-int/2addr p0, p1

    add-int/2addr v2, v3

    add-int/2addr v1, p0

    .line 992
    invoke-virtual {p2, v3, p0, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    return v0
.end method

.method public getCellWidth()I
    .locals 0

    .line 225
    iget p0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mCellWidth:I

    return p0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 1

    .line 553
    iget v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    if-lez v0, :cond_0

    .line 554
    invoke-virtual {p0, v0, p1}, Lcom/oneplus/lib/widget/SimpleMonthView;->getBoundsForDay(ILandroid/graphics/Rect;)Z

    goto :goto_0

    .line 556
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method public getMonthHeight()I
    .locals 0

    .line 221
    iget p0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthHeight:I

    return p0
.end method

.method public getMonthYearLabel()Ljava/lang/String;
    .locals 0

    .line 616
    iget-object p0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthYearLabel:Ljava/lang/String;

    return-object p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 594
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 595
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    int-to-float v2, v0

    int-to-float v3, v1

    .line 596
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 598
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/SimpleMonthView;->drawMonth(Landroid/graphics/Canvas;)V

    .line 599
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/SimpleMonthView;->drawDaysOfWeek(Landroid/graphics/Canvas;)V

    .line 600
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/SimpleMonthView;->drawDays(Landroid/graphics/Canvas;)V

    neg-int p0, v0

    int-to-float p0, p0

    neg-int v0, v1

    int-to-float v0, v0

    .line 602
    invoke-virtual {p1, p0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-nez p2, :cond_0

    .line 1039
    iget-boolean p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mIsTouchHighlighted:Z

    if-nez p1, :cond_0

    .line 1041
    iget p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    iput p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mPreviouslyHighlightedDay:I

    const/4 p1, -0x1

    .line 1042
    iput p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    .line 1043
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 5

    if-eqz p1, :cond_7

    .line 470
    invoke-direct {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->findDayOffset()I

    move-result v0

    const/16 v1, 0x11

    const/4 v2, 0x1

    if-eq p2, v1, :cond_6

    const/16 v1, 0x21

    if-eq p2, v1, :cond_4

    const/16 v1, 0x42

    if-eq p2, v1, :cond_2

    const/16 v1, 0x82

    if-eq p2, v1, :cond_0

    goto :goto_1

    .line 483
    :cond_0
    invoke-direct {p0, p3}, Lcom/oneplus/lib/widget/SimpleMonthView;->findClosestColumn(Landroid/graphics/Rect;)I

    move-result v1

    sub-int/2addr v1, v0

    add-int/2addr v1, v2

    if-ge v1, v2, :cond_1

    add-int/lit8 v1, v1, 0x7

    .line 485
    :cond_1
    iput v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    goto :goto_1

    .line 473
    :cond_2
    invoke-direct {p0, p3}, Lcom/oneplus/lib/widget/SimpleMonthView;->findClosestRow(Landroid/graphics/Rect;)I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    mul-int/lit8 v1, v1, 0x7

    sub-int/2addr v1, v0

    add-int/2addr v2, v1

    .line 474
    :goto_0
    iput v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    goto :goto_1

    .line 489
    :cond_4
    invoke-direct {p0, p3}, Lcom/oneplus/lib/widget/SimpleMonthView;->findClosestColumn(Landroid/graphics/Rect;)I

    move-result v1

    .line 490
    iget v3, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaysInMonth:I

    add-int v4, v0, v3

    div-int/lit8 v4, v4, 0x7

    sub-int/2addr v1, v0

    mul-int/lit8 v4, v4, 0x7

    add-int/2addr v1, v4

    add-int/2addr v1, v2

    if-le v1, v3, :cond_5

    add-int/lit8 v1, v1, -0x7

    .line 492
    :cond_5
    iput v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    goto :goto_1

    .line 478
    :cond_6
    invoke-direct {p0, p3}, Lcom/oneplus/lib/widget/SimpleMonthView;->findClosestRow(Landroid/graphics/Rect;)I

    move-result v1

    add-int/2addr v1, v2

    .line 479
    iget v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaysInMonth:I

    mul-int/lit8 v1, v1, 0x7

    sub-int/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    .line 496
    :goto_1
    invoke-direct {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->ensureFocusedDay()V

    .line 497
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 499
    :cond_7
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    .line 379
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x3d

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 386
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 387
    invoke-static {p0}, Lcom/oneplus/lib/widget/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/SimpleMonthView;->moveOneDay(Z)Z

    move-result v2

    goto/16 :goto_2

    .line 381
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 382
    invoke-static {p0}, Lcom/oneplus/lib/widget/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/SimpleMonthView;->moveOneDay(Z)Z

    move-result v2

    goto :goto_2

    .line 400
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 401
    invoke-direct {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->ensureFocusedDay()V

    .line 402
    iget v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    iget v4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaysInMonth:I

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_6

    add-int/2addr v0, v1

    .line 403
    iput v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    goto :goto_0

    .line 391
    :pswitch_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 392
    invoke-direct {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->ensureFocusedDay()V

    .line 393
    iget v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    if-le v0, v1, :cond_6

    sub-int/2addr v0, v1

    .line 394
    iput v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    :goto_0
    move v2, v3

    goto :goto_2

    .line 410
    :cond_0
    :pswitch_4
    iget v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 411
    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/SimpleMonthView;->onDayClicked(I)Z

    return v3

    .line 417
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    .line 419
    :cond_2
    invoke-virtual {p2, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    if-eqz v0, :cond_6

    .line 423
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object v4, p0

    .line 427
    :cond_4
    invoke-virtual {v4, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_5

    if-eq v4, p0, :cond_5

    .line 429
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eq v5, v1, :cond_4

    :cond_5
    if-eqz v4, :cond_6

    .line 431
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    return v3

    :cond_6
    :goto_2
    if-eqz v2, :cond_7

    .line 439
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v3

    .line 442
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 876
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    .line 877
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    .line 878
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p3

    .line 879
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p4, p3

    sub-int/2addr p5, v0

    sub-int/2addr p4, p1

    sub-int/2addr p5, p2

    .line 885
    iget v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mPaddedWidth:I

    if-eq p4, v1, :cond_2

    iget v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mPaddedHeight:I

    if-eq p5, v1, :cond_2

    if-ltz p4, :cond_2

    if-gez p5, :cond_1

    goto :goto_0

    .line 890
    :cond_1
    iput p4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mPaddedWidth:I

    .line 891
    iput p5, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mPaddedHeight:I

    .line 895
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    sub-int/2addr p4, p2

    sub-int/2addr p4, v0

    int-to-float p2, p5

    int-to-float p4, p4

    div-float/2addr p2, p4

    .line 897
    iget p4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDesiredMonthHeight:I

    int-to-float p4, p4

    mul-float/2addr p4, p2

    float-to-int p4, p4

    .line 898
    iget p5, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mPaddedWidth:I

    div-int/lit8 p5, p5, 0x7

    .line 899
    iput p4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthHeight:I

    .line 900
    iget p4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDesiredDayOfWeekHeight:I

    int-to-float p4, p4

    mul-float/2addr p4, p2

    float-to-int p4, p4

    iput p4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekHeight:I

    .line 901
    iget p4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDesiredDayHeight:I

    int-to-float p4, p4

    mul-float/2addr p4, p2

    float-to-int p2, p4

    iput p2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayHeight:I

    .line 902
    iput p5, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mCellWidth:I

    .line 906
    div-int/lit8 p5, p5, 0x2

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    .line 907
    iget p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayHeight:I

    div-int/lit8 p1, p1, 0x2

    .line 908
    iget p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDesiredDaySelectorRadius:I

    iput p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaySelectorRadius:I

    .line 912
    iget-object p0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mTouchHelper:Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->invalidateRoot()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 850
    iget v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDesiredDayHeight:I

    mul-int/lit8 v0, v0, 0x6

    iget v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDesiredDayOfWeekHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDesiredMonthHeight:I

    add-int/2addr v0, v1

    .line 852
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 853
    iget v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDesiredCellWidth:I

    mul-int/lit8 v1, v1, 0x7

    .line 854
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    add-int/2addr v1, v2

    .line 855
    invoke-static {v1, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    .line 856
    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    move-result p2

    .line 857
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 3

    .line 1021
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1025
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 1026
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    add-float/2addr v2, v1

    float-to-int v1, v2

    .line 1027
    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/SimpleMonthView;->getDayAtLocation(II)I

    move-result v0

    if-ltz v0, :cond_1

    .line 1029
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 1030
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/16 p1, 0x3ea

    invoke-static {p0, p1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p0

    return-object p0

    .line 1033
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object p0

    return-object p0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    .line 862
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 864
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 337
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 338
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    add-float/2addr v2, v1

    float-to-int v1, v2

    .line 340
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v3, :cond_0

    const/4 v4, 0x2

    if-eq p1, v4, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 358
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/SimpleMonthView;->getDayAtLocation(II)I

    move-result p1

    .line 359
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/SimpleMonthView;->onDayClicked(I)Z

    :cond_1
    const/4 p1, -0x1

    .line 363
    iput p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    .line 364
    iput-boolean v2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mIsTouchHighlighted:Z

    .line 365
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 344
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/SimpleMonthView;->getDayAtLocation(II)I

    move-result v0

    .line 345
    iput-boolean v3, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mIsTouchHighlighted:Z

    .line 346
    iget v1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    if-eq v1, v0, :cond_3

    .line 347
    iput v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mHighlightedDay:I

    .line 348
    iput v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mPreviouslyHighlightedDay:I

    .line 349
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    if-nez p1, :cond_4

    if-gez v0, :cond_4

    return v2

    :cond_4
    :goto_0
    return v3
.end method

.method setDayHighlightColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    const/16 v0, 0x18

    .line 320
    invoke-static {v0}, Lcom/oneplus/lib/widget/util/ViewUtils;->getViewState(I)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 319
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 321
    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 322
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDayOfWeekTextAppearance(I)V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, p1}, Lcom/oneplus/lib/widget/SimpleMonthView;->applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;

    .line 236
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method setDayOfWeekTextColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 298
    sget-object v0, Landroid/view/View;->ENABLED_STATE_SET:[I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 299
    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 300
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method setDaySelectorColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    const/16 v0, 0x28

    .line 310
    invoke-static {v0}, Lcom/oneplus/lib/widget/util/ViewUtils;->getViewState(I)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 309
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 311
    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 312
    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 313
    iget-object p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    const/16 v0, 0xb0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 314
    iget-object p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 315
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDayTextAppearance(I)V
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, p1}, Lcom/oneplus/lib/widget/SimpleMonthView;->applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 242
    iput-object p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayTextColor:Landroid/content/res/ColorStateList;

    .line 245
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method setDayTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayTextColor:Landroid/content/res/ColorStateList;

    .line 305
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1

    .line 750
    invoke-static {p1}, Lcom/oneplus/lib/widget/SimpleMonthView;->isValidDayOfWeek(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 751
    iput p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mWeekStart:I

    goto :goto_0

    .line 753
    :cond_0
    iget-object p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mWeekStart:I

    .line 756
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->updateDayOfWeekLabels()V

    .line 759
    iget-object p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mTouchHelper:Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 760
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method setMonthParams(IIIIII)V
    .locals 0

    .line 781
    iput p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mActivatedDay:I

    .line 783
    invoke-static {p2}, Lcom/oneplus/lib/widget/SimpleMonthView;->isValidMonth(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 784
    iput p2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonth:I

    .line 786
    :cond_0
    iput p3, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mYear:I

    .line 788
    iget-object p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 p2, 0x2

    iget p3, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonth:I

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 789
    iget-object p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    iget p2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mYear:I

    const/4 p3, 0x1

    invoke-virtual {p1, p3, p2}, Ljava/util/Calendar;->set(II)V

    .line 790
    iget-object p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 791
    iget-object p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDayOfWeekStart:I

    .line 793
    invoke-static {p4}, Lcom/oneplus/lib/widget/SimpleMonthView;->isValidDayOfWeek(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 794
    iput p4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mWeekStart:I

    goto :goto_0

    .line 796
    :cond_1
    iget-object p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mWeekStart:I

    .line 800
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 p2, -0x1

    .line 801
    iput p2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mToday:I

    .line 802
    iget p2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonth:I

    iget p4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mYear:I

    invoke-static {p2, p4}, Lcom/oneplus/lib/widget/SimpleMonthView;->getDaysInMonth(II)I

    move-result p2

    iput p2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaysInMonth:I

    const/4 p2, 0x0

    .line 803
    :cond_2
    :goto_1
    iget p4, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaysInMonth:I

    if-ge p2, p4, :cond_3

    add-int/lit8 p2, p2, 0x1

    .line 805
    invoke-direct {p0, p2, p1}, Lcom/oneplus/lib/widget/SimpleMonthView;->sameDay(ILjava/util/Calendar;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 806
    iput p2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mToday:I

    goto :goto_1

    .line 810
    :cond_3
    invoke-static {p5, p3, p4}, Lcom/oneplus/lib/util/MathUtils;->constrain(III)I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mEnabledDayStart:I

    .line 811
    iget p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mEnabledDayStart:I

    iget p2, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mDaysInMonth:I

    invoke-static {p6, p1, p2}, Lcom/oneplus/lib/util/MathUtils;->constrain(III)I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mEnabledDayEnd:I

    .line 813
    invoke-direct {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->updateMonthYearLabel()V

    .line 814
    invoke-direct {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->updateDayOfWeekLabels()V

    .line 817
    iget-object p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mTouchHelper:Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 818
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setMonthTextAppearance(I)V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, p1}, Lcom/oneplus/lib/widget/SimpleMonthView;->applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;

    .line 231
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method setMonthTextColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 292
    sget-object v0, Landroid/view/View;->ENABLED_STATE_SET:[I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 293
    iget-object v0, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 294
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOnDayClickListener(Lcom/oneplus/lib/widget/SimpleMonthView$OnDayClickListener;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mOnDayClickListener:Lcom/oneplus/lib/widget/SimpleMonthView$OnDayClickListener;

    return-void
.end method

.method public setSelectedDay(I)V
    .locals 0

    .line 736
    iput p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mActivatedDay:I

    .line 739
    iget-object p1, p0, Lcom/oneplus/lib/widget/SimpleMonthView;->mTouchHelper:Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 740
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
