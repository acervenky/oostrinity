.class Lcom/oneplus/lib/widget/DayPickerView;
.super Landroid/view/ViewGroup;
.source "DayPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/DayPickerView$OnDaySelectedListener;
    }
.end annotation


# static fields
.field private static final ATTRS_TEXT_COLOR:[I

.field private static final DATE_FORMATTER:Ljava/text/DateFormat;

.field private static final DEFAULT_LAYOUT:I


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mAdapter:Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

.field private mContext:Landroid/content/Context;

.field private final mMaxDate:Ljava/util/Calendar;

.field private final mMinDate:Ljava/util/Calendar;

.field private final mNextButton:Landroid/widget/ImageButton;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnDaySelectedListener:Lcom/oneplus/lib/widget/DayPickerView$OnDaySelectedListener;

.field private final mOnPageChangedListener:Lcom/oneplus/support/viewpager/widget/ViewPager$OnPageChangeListener;

.field private final mPrevButton:Landroid/widget/ImageButton;

.field private final mSelectedDay:Ljava/util/Calendar;

.field private mTempCalendar:Ljava/util/Calendar;

.field private final mViewPager:Lcom/oneplus/support/viewpager/widget/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 32
    sget v0, Lcom/oneplus/commonctrl/R$layout;->op_day_picker_content_material:I

    sput v0, Lcom/oneplus/lib/widget/DayPickerView;->DEFAULT_LAYOUT:I

    .line 35
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/lib/widget/DayPickerView;->DATE_FORMATTER:Ljava/text/DateFormat;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010098

    aput v2, v0, v1

    .line 36
    sput-object v0, Lcom/oneplus/lib/widget/DayPickerView;->ATTRS_TEXT_COLOR:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/DayPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101035d

    .line 60
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/DayPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/DayPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11

    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 38
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mSelectedDay:Ljava/util/Calendar;

    .line 39
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mMinDate:Ljava/util/Calendar;

    .line 40
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mMaxDate:Ljava/util/Calendar;

    .line 418
    new-instance v0, Lcom/oneplus/lib/widget/DayPickerView$2;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/DayPickerView$2;-><init>(Lcom/oneplus/lib/widget/DayPickerView;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mOnPageChangedListener:Lcom/oneplus/support/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 435
    new-instance v0, Lcom/oneplus/lib/widget/DayPickerView$3;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/DayPickerView$3;-><init>(Lcom/oneplus/lib/widget/DayPickerView;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 70
    iput-object p1, p0, Lcom/oneplus/lib/widget/DayPickerView;->mContext:Landroid/content/Context;

    const-string v0, "accessibility"

    .line 71
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 74
    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->OPCalendarView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 77
    sget p3, Lcom/oneplus/commonctrl/R$styleable;->OPCalendarView_android_firstDayOfWeek:I

    .line 78
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p4

    const/4 v0, 0x7

    invoke-virtual {p4, v0}, Ljava/util/Calendar;->get(I)I

    move-result p4

    .line 77
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 80
    sget p4, Lcom/oneplus/commonctrl/R$styleable;->OPCalendarView_android_minDate:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 81
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->OPCalendarView_android_maxDate:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 83
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPCalendarView_monthTextAppearance:I

    sget v2, Lcom/oneplus/commonctrl/R$style;->TextAppearance_Material_Widget_Calendar_Month:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 86
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->OPCalendarView_weekDayTextAppearance:I

    sget v3, Lcom/oneplus/commonctrl/R$style;->TextAppearance_Material_Widget_Calendar_DayOfWeek:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 89
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPCalendarView_dateTextAppearance:I

    sget v4, Lcom/oneplus/commonctrl/R$style;->TextAppearance_Material_Widget_Calendar_Day:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 93
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPCalendarView_daySelectorColor:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 96
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 99
    new-instance p2, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

    sget v5, Lcom/oneplus/commonctrl/R$layout;->op_date_picker_month_item_material:I

    sget v6, Lcom/oneplus/commonctrl/R$id;->month_view:I

    invoke-direct {p2, p1, v5, v6}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;-><init>(Landroid/content/Context;II)V

    iput-object p2, p0, Lcom/oneplus/lib/widget/DayPickerView;->mAdapter:Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

    .line 101
    iget-object p2, p0, Lcom/oneplus/lib/widget/DayPickerView;->mAdapter:Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

    invoke-virtual {p2, v1}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->setMonthTextAppearance(I)V

    .line 102
    iget-object p2, p0, Lcom/oneplus/lib/widget/DayPickerView;->mAdapter:Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

    invoke-virtual {p2, v2}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->setDayOfWeekTextAppearance(I)V

    .line 103
    iget-object p2, p0, Lcom/oneplus/lib/widget/DayPickerView;->mAdapter:Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

    invoke-virtual {p2, v3}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->setDayTextAppearance(I)V

    .line 104
    iget-object p2, p0, Lcom/oneplus/lib/widget/DayPickerView;->mAdapter:Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

    invoke-virtual {p2, v4}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->setDaySelectorColor(Landroid/content/res/ColorStateList;)V

    .line 106
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 107
    sget p2, Lcom/oneplus/lib/widget/DayPickerView;->DEFAULT_LAYOUT:I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 110
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_0

    .line 111
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 112
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 113
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 116
    :cond_0
    sget p1, Lcom/oneplus/commonctrl/R$id;->prev:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/oneplus/lib/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    .line 117
    iget-object p1, p0, Lcom/oneplus/lib/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    iget-object p2, p0, Lcom/oneplus/lib/widget/DayPickerView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    sget p1, Lcom/oneplus/commonctrl/R$id;->next:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/oneplus/lib/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    .line 120
    iget-object p1, p0, Lcom/oneplus/lib/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    iget-object p2, p0, Lcom/oneplus/lib/widget/DayPickerView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    sget p1, Lcom/oneplus/commonctrl/R$id;->day_picker_view_pager:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oneplus/support/viewpager/widget/ViewPager;

    iput-object p1, p0, Lcom/oneplus/lib/widget/DayPickerView;->mViewPager:Lcom/oneplus/support/viewpager/widget/ViewPager;

    .line 123
    iget-object p1, p0, Lcom/oneplus/lib/widget/DayPickerView;->mViewPager:Lcom/oneplus/support/viewpager/widget/ViewPager;

    iget-object p2, p0, Lcom/oneplus/lib/widget/DayPickerView;->mAdapter:Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

    invoke-virtual {p1, p2}, Lcom/oneplus/support/viewpager/widget/ViewPager;->setAdapter(Lcom/oneplus/support/viewpager/widget/PagerAdapter;)V

    .line 124
    iget-object p1, p0, Lcom/oneplus/lib/widget/DayPickerView;->mViewPager:Lcom/oneplus/support/viewpager/widget/ViewPager;

    iget-object p2, p0, Lcom/oneplus/lib/widget/DayPickerView;->mOnPageChangedListener:Lcom/oneplus/support/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {p1, p2}, Lcom/oneplus/support/viewpager/widget/ViewPager;->setOnPageChangeListener(Lcom/oneplus/support/viewpager/widget/ViewPager$OnPageChangeListener;)V

    if-eqz v1, :cond_2

    .line 128
    iget-object p1, p0, Lcom/oneplus/lib/widget/DayPickerView;->mContext:Landroid/content/Context;

    const/4 p2, 0x0

    sget-object v3, Lcom/oneplus/lib/widget/DayPickerView;->ATTRS_TEXT_COLOR:[I

    invoke-virtual {p1, p2, v3, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 130
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 132
    iget-object v1, p0, Lcom/oneplus/lib/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p2}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 133
    iget-object v1, p0, Lcom/oneplus/lib/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p2}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 135
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 139
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 140
    invoke-static {p4, p1}, Lcom/oneplus/lib/widget/DayPickerView;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result p2

    if-nez p2, :cond_3

    const/16 p2, 0x76c

    const/4 p4, 0x1

    .line 141
    invoke-virtual {p1, p2, v2, p4}, Ljava/util/Calendar;->set(III)V

    .line 143
    :cond_3
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    .line 145
    invoke-static {v0, p1}, Lcom/oneplus/lib/widget/DayPickerView;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result p2

    if-nez p2, :cond_4

    const/16 p2, 0x834

    const/16 p4, 0xb

    const/16 v0, 0x1f

    .line 146
    invoke-virtual {p1, p2, p4, v0}, Ljava/util/Calendar;->set(III)V

    .line 148
    :cond_4
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    cmp-long p4, p1, v9

    if-ltz p4, :cond_5

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-wide v5, v9

    move-wide v7, p1

    .line 154
    invoke-static/range {v3 .. v8}, Lcom/oneplus/lib/util/MathUtils;->constrain(JJJ)J

    move-result-wide v0

    .line 157
    invoke-virtual {p0, p3}, Lcom/oneplus/lib/widget/DayPickerView;->setFirstDayOfWeek(I)V

    .line 158
    invoke-virtual {p0, v9, v10}, Lcom/oneplus/lib/widget/DayPickerView;->setMinDate(J)V

    .line 159
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/widget/DayPickerView;->setMaxDate(J)V

    .line 160
    invoke-virtual {p0, v0, v1, v2}, Lcom/oneplus/lib/widget/DayPickerView;->setDate(JZ)V

    .line 163
    iget-object p1, p0, Lcom/oneplus/lib/widget/DayPickerView;->mAdapter:Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

    new-instance p2, Lcom/oneplus/lib/widget/DayPickerView$1;

    invoke-direct {p2, p0}, Lcom/oneplus/lib/widget/DayPickerView$1;-><init>(Lcom/oneplus/lib/widget/DayPickerView;)V

    invoke-virtual {p1, p2}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->setOnDaySelectedListener(Lcom/oneplus/lib/widget/DayPickerPagerAdapter$OnDaySelectedListener;)V

    return-void

    .line 151
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxDate must be >= minDate"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$000(Lcom/oneplus/lib/widget/DayPickerView;)Lcom/oneplus/lib/widget/DayPickerView$OnDaySelectedListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mOnDaySelectedListener:Lcom/oneplus/lib/widget/DayPickerView$OnDaySelectedListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/lib/widget/DayPickerView;)Landroid/widget/ImageButton;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/lib/widget/DayPickerView;)Landroid/widget/ImageButton;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/lib/widget/DayPickerView;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/DayPickerView;->updateButtonVisibility(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/lib/widget/DayPickerView;)Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/lib/widget/DayPickerView;)Lcom/oneplus/support/viewpager/widget/ViewPager;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mViewPager:Lcom/oneplus/support/viewpager/widget/ViewPager;

    return-object p0
.end method

.method private getDiffMonths(Ljava/util/Calendar;Ljava/util/Calendar;)I
    .locals 1

    const/4 p0, 0x1

    .line 389
    invoke-virtual {p2, p0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    sub-int/2addr v0, p0

    const/4 p0, 0x2

    .line 390
    invoke-virtual {p2, p0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p1, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    sub-int/2addr p2, p0

    mul-int/lit8 v0, v0, 0xc

    add-int/2addr p2, v0

    return p2
.end method

.method private getPositionFromDay(J)I
    .locals 2

    .line 394
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mMinDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DayPickerView;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/DayPickerView;->getDiffMonths(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v0

    .line 395
    iget-object v1, p0, Lcom/oneplus/lib/widget/DayPickerView;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/DayPickerView;->getTempCalendarForTime(J)Ljava/util/Calendar;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/oneplus/lib/widget/DayPickerView;->getDiffMonths(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result p0

    const/4 p1, 0x0

    .line 396
    invoke-static {p0, p1, v0}, Lcom/oneplus/lib/util/MathUtils;->constrain(III)I

    move-result p0

    return p0
.end method

.method private getTempCalendarForTime(J)Ljava/util/Calendar;
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mTempCalendar:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 401
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mTempCalendar:Ljava/util/Calendar;

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 404
    iget-object p0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mTempCalendar:Ljava/util/Calendar;

    return-object p0
.end method

.method public static parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 174
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    :try_start_0
    sget-object v1, Lcom/oneplus/lib/widget/DayPickerView;->DATE_FORMATTER:Ljava/text/DateFormat;

    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 180
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    .line 183
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Date: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not in format: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "MM/dd/yyyy"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SearchView"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v0
.end method

.method private setDate(JZZ)V
    .locals 4

    .line 304
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-gez v0, :cond_0

    .line 305
    iget-object p1, p0, Lcom/oneplus/lib/widget/DayPickerView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    goto :goto_0

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    .line 308
    iget-object p1, p0, Lcom/oneplus/lib/widget/DayPickerView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 312
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/DayPickerView;->getTempCalendarForTime(J)Ljava/util/Calendar;

    if-nez p4, :cond_2

    if-eqz v1, :cond_3

    .line 315
    :cond_2
    iget-object p4, p0, Lcom/oneplus/lib/widget/DayPickerView;->mSelectedDay:Ljava/util/Calendar;

    invoke-virtual {p4, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 318
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/DayPickerView;->getPositionFromDay(J)I

    move-result p1

    .line 319
    iget-object p2, p0, Lcom/oneplus/lib/widget/DayPickerView;->mViewPager:Lcom/oneplus/support/viewpager/widget/ViewPager;

    invoke-virtual {p2}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p2

    if-eq p1, p2, :cond_4

    .line 320
    iget-object p2, p0, Lcom/oneplus/lib/widget/DayPickerView;->mViewPager:Lcom/oneplus/support/viewpager/widget/ViewPager;

    invoke-virtual {p2, p1, p3}, Lcom/oneplus/support/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 323
    :cond_4
    iget-object p1, p0, Lcom/oneplus/lib/widget/DayPickerView;->mAdapter:Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

    iget-object p0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {p1, p0}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->setSelectedDay(Ljava/util/Calendar;)V

    return-void
.end method

.method private updateButtonVisibility(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 190
    :goto_0
    iget-object v3, p0, Lcom/oneplus/lib/widget/DayPickerView;->mAdapter:Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->getCount()I

    move-result v3

    sub-int/2addr v3, v0

    if-ge p1, v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 191
    :goto_1
    iget-object p1, p0, Lcom/oneplus/lib/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    const/4 v3, 0x4

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 192
    iget-object p0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v3

    :goto_3
    invoke-virtual {p0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getMostVisiblePosition()I
    .locals 0

    .line 411
    iget-object p0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mViewPager:Lcom/oneplus/support/viewpager/widget/ViewPager;

    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .line 223
    invoke-static {p0}, Lcom/oneplus/lib/widget/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 224
    iget-object p1, p0, Lcom/oneplus/lib/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    .line 225
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    goto :goto_0

    .line 227
    :cond_0
    iget-object p1, p0, Lcom/oneplus/lib/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    .line 228
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    :goto_0
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 233
    iget-object p2, p0, Lcom/oneplus/lib/widget/DayPickerView;->mViewPager:Lcom/oneplus/support/viewpager/widget/ViewPager;

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p3, p4, p5}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 235
    iget-object p0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mViewPager:Lcom/oneplus/support/viewpager/widget/ViewPager;

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/oneplus/lib/widget/SimpleMonthView;

    .line 236
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->getMonthHeight()I

    move-result p2

    .line 237
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/SimpleMonthView;->getCellWidth()I

    move-result p3

    .line 241
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result p5

    .line 242
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v1

    .line 243
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int v3, p2, v1

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 244
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int v4, p3, p5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr p5, v3

    add-int/2addr v1, v2

    .line 245
    invoke-virtual {p1, v3, v2, p5, v1}, Landroid/widget/ImageButton;->layout(IIII)V

    .line 247
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result p1

    .line 248
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result p5

    .line 249
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr p2, p5

    div-int/lit8 p2, p2, 0x2

    add-int/2addr v1, p2

    .line 250
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    sub-int/2addr p4, p0

    sub-int/2addr p3, p1

    div-int/lit8 p3, p3, 0x2

    sub-int/2addr p4, p3

    sub-int p0, p4, p1

    add-int/2addr p5, v1

    .line 251
    invoke-virtual {v0, p0, v1, p4, p5}, Landroid/widget/ImageButton;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mViewPager:Lcom/oneplus/support/viewpager/widget/ViewPager;

    .line 198
    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 200
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidthAndState()I

    move-result p1

    .line 201
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeightAndState()I

    move-result p2

    .line 202
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 204
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    .line 205
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    const/high16 v0, -0x80000000

    .line 206
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 207
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 208
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1, p2}, Landroid/widget/ImageButton;->measure(II)V

    .line 209
    iget-object p0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, p1, p2}, Landroid/widget/ImageButton;->measure(II)V

    return-void
.end method

.method public onRangeChanged()V
    .locals 3

    .line 370
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mAdapter:Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

    iget-object v1, p0, Lcom/oneplus/lib/widget/DayPickerView;->mMinDate:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/oneplus/lib/widget/DayPickerView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->setRange(Ljava/util/Calendar;Ljava/util/Calendar;)V

    .line 374
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mSelectedDay:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/oneplus/lib/widget/DayPickerView;->setDate(JZZ)V

    .line 376
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mViewPager:Lcom/oneplus/support/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/DayPickerView;->updateButtonVisibility(I)V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    .line 214
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 216
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setDate(J)V
    .locals 1

    const/4 v0, 0x0

    .line 279
    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/DayPickerView;->setDate(JZ)V

    return-void
.end method

.method public setDate(JZ)V
    .locals 1

    const/4 v0, 0x1

    .line 290
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/DayPickerView;->setDate(JZZ)V

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 0

    .line 341
    iget-object p0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mAdapter:Lcom/oneplus/lib/widget/DayPickerPagerAdapter;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/DayPickerPagerAdapter;->setFirstDayOfWeek(I)V

    return-void
.end method

.method public setMaxDate(J)V
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 359
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DayPickerView;->onRangeChanged()V

    return-void
.end method

.method public setMinDate(J)V
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 350
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DayPickerView;->onRangeChanged()V

    return-void
.end method

.method public setOnDaySelectedListener(Lcom/oneplus/lib/widget/DayPickerView$OnDaySelectedListener;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/oneplus/lib/widget/DayPickerView;->mOnDaySelectedListener:Lcom/oneplus/lib/widget/DayPickerView$OnDaySelectedListener;

    return-void
.end method

.method public setPosition(I)V
    .locals 1

    .line 415
    iget-object p0, p0, Lcom/oneplus/lib/widget/DayPickerView;->mViewPager:Lcom/oneplus/support/viewpager/widget/ViewPager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method
