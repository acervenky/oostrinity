.class public Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;
.super Ljava/lang/Object;
.source "OpGestureButtonViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$EdgeEffectView;,
        Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$OemGestureButtonHandler;
    }
.end annotation


# static fields
.field private static final EFFECT_DIST:[F

.field private static sEffectParams:[F


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplay:Landroid/view/Display;

.field private mDownPointX:F

.field mEdgeEffectView:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$EdgeEffectView;

.field private mEffectHeight:I

.field private mEffectStage:I

.field private mIsEnabled:Z

.field mOemGestureButtonAnimHandler:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$OemGestureButtonHandler;

.field mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private mRotation:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private final mWm:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 31
    fill-array-data v0, :array_0

    sput-object v0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->EFFECT_DIST:[F

    .line 32
    sget-object v0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->EFFECT_DIST:[F

    sput-object v0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->sEffectParams:[F

    return-void

    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f000000    # 0.5f
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
        0x3f4ccccd    # 0.8f
        0x3f19999a    # 0.6f
        0x3f19999a    # 0.6f
        0x3ecccccd    # 0.4f
        0x3e99999a    # 0.3f
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    .line 30
    iput v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mEffectHeight:I

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mEffectStage:I

    const/4 v1, -0x1

    .line 34
    iput v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mScreenHeight:I

    .line 35
    iput v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mScreenWidth:I

    .line 43
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mIsEnabled:Z

    .line 47
    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mContext:Landroid/content/Context;

    .line 48
    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mWm:Landroid/view/WindowManager;

    .line 52
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "OemGestureBtnAnimThread"

    const/4 v1, -0x8

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 54
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 55
    new-instance v0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$OemGestureButtonHandler;

    .line 56
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$OemGestureButtonHandler;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mOemGestureButtonAnimHandler:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$OemGestureButtonHandler;

    .line 58
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->updateDisplaySize()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;)Z
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->isPortrait()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->updateGestureButtonRegion()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mEffectStage:I

    return p0
.end method

.method static synthetic access$202(Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;I)I
    .locals 0

    .line 27
    iput p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mEffectStage:I

    return p1
.end method

.method static synthetic access$208(Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;)I
    .locals 2

    .line 27
    iget v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mEffectStage:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mEffectStage:I

    return v0
.end method

.method static synthetic access$300()[F
    .locals 1

    .line 27
    sget-object v0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->sEffectParams:[F

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;)F
    .locals 0

    .line 27
    iget p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mDownPointX:F

    return p0
.end method

.method static synthetic access$500(Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mScreenWidth:I

    return p0
.end method

.method private isPortrait()Z
    .locals 1

    .line 203
    iget p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mRotation:I

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

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

.method private updateGestureButtonRegion()V
    .locals 3

    .line 86
    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mIsEnabled:Z

    const-string v1, "OpGestureController"

    if-eqz v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mEdgeEffectView:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$EdgeEffectView;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7eb

    invoke-direct {v0, v2}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 91
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x118

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 94
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v2, 0x1

    .line 96
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const-string v2, "GestureButtonRegion"

    .line 98
    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const v2, 0x1030004

    .line 100
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 101
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->updateWindowParams()V

    .line 102
    new-instance v0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$EdgeEffectView;

    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$EdgeEffectView;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mEdgeEffectView:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$EdgeEffectView;

    .line 103
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mEdgeEffectView:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$EdgeEffectView;

    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mWm:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mEdgeEffectView:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$EdgeEffectView;

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v2, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_4

    const-string p0, "addView mEdgeEffectView "

    .line 107
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    :cond_0
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "update mEdgeEffectView layout"

    .line 112
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->updateWindowParams()V

    .line 115
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mWm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mEdgeEffectView:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$EdgeEffectView;

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mEdgeEffectView:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$EdgeEffectView;

    if-eqz v0, :cond_4

    .line 119
    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 120
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mWm:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mEdgeEffectView:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$EdgeEffectView;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 122
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_3

    const-string v0, "removeView mEdgeEffectView "

    .line 123
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v0, 0x0

    .line 127
    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mEdgeEffectView:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$EdgeEffectView;

    const-string/jumbo p0, "updateGestureButtonRegion: not enabled"

    .line 128
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method private updateWindowParams()V
    .locals 4

    .line 179
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    return-void

    .line 183
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->isPortrait()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x50

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 185
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 186
    iget v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mEffectHeight:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_1

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mRotation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/4 v2, 0x5

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    .line 190
    :goto_0
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 191
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mEffectHeight:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 192
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 195
    :goto_1
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->sSideGestureEnabled:Z

    if-eqz v0, :cond_4

    .line 196
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 197
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_3

    iget p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mScreenHeight:I

    goto :goto_2

    :cond_3
    iget p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mScreenWidth:I

    :goto_2
    int-to-float p0, p0

    const/high16 v1, 0x3f800000    # 1.0f

    sget v2, Lcom/oneplus/phone/OpSideGestureConfiguration;->PORTRAIT_NON_DETECT_SCALE:F

    sub-float/2addr v1, v2

    mul-float/2addr p0, v1

    float-to-int p0, p0

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_4
    return-void
.end method


# virtual methods
.method public onBackAction(F)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mDownPointX:F

    .line 63
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mOemGestureButtonAnimHandler:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$OemGestureButtonHandler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public updateDisplaySize()V
    .locals 3

    .line 74
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 75
    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mWm:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mDisplay:Landroid/view/Display;

    .line 76
    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 77
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mScreenHeight:I

    .line 78
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mScreenWidth:I

    .line 79
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mRotation:I

    return-void
.end method

.method public updateRegion(Z)V
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mIsEnabled:Z

    .line 69
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->mOemGestureButtonAnimHandler:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$OemGestureButtonHandler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
