.class public Lcom/oneplus/battery/OpNewWarpChargingView;
.super Landroid/widget/FrameLayout;
.source "OpNewWarpChargingView.java"


# static fields
.field private static final ANIMATION_INTERPILATOR:Landroid/view/animation/Interpolator;

.field static final DEBUG:Z

.field private static final WARP_ANIMATION_INTERPILATOR:Landroid/view/animation/Interpolator;

.field private static mRes:Landroid/content/res/Resources;


# instance fields
.field private isAnimationStart:Z

.field private mAssetLoaded:Z

.field private mAssetLoading:Z

.field private mAssetReleasing:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundView:Landroid/widget/ImageView;

.field private mBatteryLevel:Landroid/widget/TextView;

.field private mBatteryLevelViewContainer:Landroid/view/View;

.field private mChargeAnimation:Landroid/animation/AnimatorSet;

.field private mChargingAnimP1:Landroid/animation/ValueAnimator;

.field private mChargingAnimP3:Landroid/animation/ValueAnimator;

.field private mChargingAnimP3repeatCount:I

.field mChargingAnimationAssets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mChargingAnimationController:Lcom/oneplus/battery/OpChargingAnimationController;

.field private mChargingScaleDownAnimSet:Landroid/animation/AnimatorSet;

.field private mChargingScaleUpAnimSet:Landroid/animation/AnimatorSet;

.field private mChargingSound:Landroid/media/SoundPool;

.field private mChargingSoundId:I

.field private mChargingType:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInfoView:Landroid/view/View;

.field private mInfoViewContainer:Landroid/widget/RelativeLayout;

.field private mIsAnimationPlaying:Z

.field private mIsPaddingStartAnimation:Z

.field private mIsWarpAnimRunning:Z

.field private mIsWarpAnimStart:Z

.field private mKeyguardShowing:Z

.field private mNowPlaying:I

.field private mPlugin:Z

.field private mScrim:Landroid/view/View;

.field private mWarpAnimation:Landroid/animation/AnimatorSet;

.field mWarpAnimationAssets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mWarpView:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 43
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/battery/OpNewWarpChargingView;->DEBUG:Z

    .line 48
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const v3, 0x3e99999a    # 0.3f

    invoke-direct {v0, v3, v2, v3, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oneplus/battery/OpNewWarpChargingView;->ANIMATION_INTERPILATOR:Landroid/view/animation/Interpolator;

    .line 52
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v4, v2, v3, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oneplus/battery/OpNewWarpChargingView;->WARP_ANIMATION_INTERPILATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 148
    invoke-direct {p0, p1, v1, v0, v0}, Lcom/oneplus/battery/OpNewWarpChargingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 144
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/oneplus/battery/OpNewWarpChargingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 140
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/battery/OpNewWarpChargingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 134
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 77
    iput-boolean p2, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mPlugin:Z

    .line 78
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p4

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mBackgroundHandler:Landroid/os/Handler;

    .line 79
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mHandler:Landroid/os/Handler;

    .line 83
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimationAssets:Ljava/util/ArrayList;

    .line 87
    iput-boolean p2, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mAssetLoading:Z

    .line 89
    iput-boolean p2, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mAssetLoaded:Z

    .line 90
    iput-boolean p2, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mAssetReleasing:Z

    .line 92
    iput-boolean p2, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mIsPaddingStartAnimation:Z

    .line 97
    iput p2, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingType:I

    .line 102
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mWarpAnimationAssets:Ljava/util/ArrayList;

    .line 103
    iput-boolean p2, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mIsWarpAnimStart:Z

    .line 104
    iput-boolean p2, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mIsWarpAnimRunning:Z

    .line 109
    iput-boolean p2, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mKeyguardShowing:Z

    .line 123
    iput-boolean p2, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mIsAnimationPlaying:Z

    const/4 p3, -0x1

    .line 124
    iput p3, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mNowPlaying:I

    .line 130
    iput p2, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimP3repeatCount:I

    .line 135
    iput-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mContext:Landroid/content/Context;

    .line 136
    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sput-object p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mRes:Landroid/content/res/Resources;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/battery/OpNewWarpChargingView;)Landroid/widget/ImageView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mBackgroundView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/battery/OpNewWarpChargingView;)Landroid/view/View;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mInfoView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/oneplus/battery/OpNewWarpChargingView;)Lcom/oneplus/battery/OpChargingAnimationController;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimationController:Lcom/oneplus/battery/OpChargingAnimationController;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/oneplus/battery/OpNewWarpChargingView;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mIsAnimationPlaying:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/oneplus/battery/OpNewWarpChargingView;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingScaleDownAnimSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/oneplus/battery/OpNewWarpChargingView;)Landroid/os/Handler;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1400()Landroid/content/res/Resources;
    .locals 1

    .line 42
    sget-object v0, Lcom/oneplus/battery/OpNewWarpChargingView;->mRes:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/oneplus/battery/OpNewWarpChargingView;)Landroid/widget/TextView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/oneplus/battery/OpNewWarpChargingView;)Landroid/widget/ImageView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mWarpView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/oneplus/battery/OpNewWarpChargingView;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingScaleUpAnimSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/oneplus/battery/OpNewWarpChargingView;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/oneplus/battery/OpNewWarpChargingView;->preloadAnimationList()V

    return-void
.end method

.method static synthetic access$1900(Lcom/oneplus/battery/OpNewWarpChargingView;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/oneplus/battery/OpNewWarpChargingView;->releaseAnimationList()V

    return-void
.end method

.method static synthetic access$2002(Lcom/oneplus/battery/OpNewWarpChargingView;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mAssetLoading:Z

    return p1
.end method

.method static synthetic access$202(Lcom/oneplus/battery/OpNewWarpChargingView;I)I
    .locals 0

    .line 42
    iput p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mNowPlaying:I

    return p1
.end method

.method static synthetic access$2102(Lcom/oneplus/battery/OpNewWarpChargingView;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mAssetLoaded:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/oneplus/battery/OpNewWarpChargingView;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mKeyguardShowing:Z

    return p0
.end method

.method static synthetic access$2300(Lcom/oneplus/battery/OpNewWarpChargingView;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mIsPaddingStartAnimation:Z

    return p0
.end method

.method static synthetic access$2400(Lcom/oneplus/battery/OpNewWarpChargingView;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingType:I

    return p0
.end method

.method static synthetic access$2502(Lcom/oneplus/battery/OpNewWarpChargingView;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mAssetReleasing:Z

    return p1
.end method

.method static synthetic access$300(Lcom/oneplus/battery/OpNewWarpChargingView;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/oneplus/battery/OpNewWarpChargingView;->animationEnd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/battery/OpNewWarpChargingView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimP3:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/battery/OpNewWarpChargingView;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimP3repeatCount:I

    return p0
.end method

.method static synthetic access$512(Lcom/oneplus/battery/OpNewWarpChargingView;I)I
    .locals 1

    .line 42
    iget v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimP3repeatCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimP3repeatCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/oneplus/battery/OpNewWarpChargingView;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mIsWarpAnimRunning:Z

    return p0
.end method

.method static synthetic access$602(Lcom/oneplus/battery/OpNewWarpChargingView;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mIsWarpAnimRunning:Z

    return p1
.end method

.method static synthetic access$700(Lcom/oneplus/battery/OpNewWarpChargingView;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mIsWarpAnimStart:Z

    return p0
.end method

.method static synthetic access$800(Lcom/oneplus/battery/OpNewWarpChargingView;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mWarpAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$802(Lcom/oneplus/battery/OpNewWarpChargingView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mWarpAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$900(Lcom/oneplus/battery/OpNewWarpChargingView;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/oneplus/battery/OpNewWarpChargingView;->getWarpAnimation()Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method private animationEnd(Ljava/lang/String;)V
    .locals 2

    .line 899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animationEnd from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpNewWarpChargingView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x8

    .line 900
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 902
    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mInfoView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 903
    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mInfoView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 904
    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mInfoView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 905
    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mBackgroundView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 906
    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mWarpView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 907
    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimationController:Lcom/oneplus/battery/OpChargingAnimationController;

    if-eqz p1, :cond_0

    const/16 v0, 0x67

    .line 908
    invoke-interface {p1, v0}, Lcom/oneplus/battery/OpChargingAnimationController;->animationEnd(I)V

    :cond_0
    const/4 p1, 0x0

    .line 911
    iput-boolean p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->isAnimationStart:Z

    .line 912
    iput-boolean p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mIsWarpAnimStart:Z

    .line 913
    iput-boolean p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mIsWarpAnimRunning:Z

    .line 914
    iput p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimP3repeatCount:I

    .line 915
    invoke-virtual {p0}, Lcom/oneplus/battery/OpNewWarpChargingView;->releaseAsset()V

    return-void
.end method

.method private getChargeAnimation()Landroid/animation/AnimatorSet;
    .locals 10

    .line 375
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x5a

    aput v3, v1, v2

    const/4 v3, 0x1

    const/16 v4, 0x6b

    aput v4, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 376
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/16 v4, 0x260

    int-to-long v4, v4

    .line 377
    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 378
    new-instance v4, Lcom/oneplus/battery/OpNewWarpChargingView$1;

    invoke-direct {v4, p0}, Lcom/oneplus/battery/OpNewWarpChargingView$1;-><init>(Lcom/oneplus/battery/OpNewWarpChargingView;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 385
    new-instance v4, Landroid/animation/ValueAnimator;

    invoke-direct {v4}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v4, v0, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    const/16 v5, 0xff

    int-to-long v5, v5

    .line 386
    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 387
    new-instance v5, Lcom/oneplus/battery/OpNewWarpChargingView$2;

    invoke-direct {v5, p0}, Lcom/oneplus/battery/OpNewWarpChargingView$2;-><init>(Lcom/oneplus/battery/OpNewWarpChargingView;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 396
    new-instance v5, Landroid/animation/ValueAnimator;

    invoke-direct {v5}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v5, v0, [F

    fill-array-data v5, :array_1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    const/16 v6, 0x140

    int-to-long v6, v6

    .line 397
    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 398
    new-instance v8, Lcom/oneplus/battery/OpNewWarpChargingView$3;

    invoke-direct {v8, p0}, Lcom/oneplus/battery/OpNewWarpChargingView$3;-><init>(Lcom/oneplus/battery/OpNewWarpChargingView;)V

    invoke-virtual {v5, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 409
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 410
    sget-object v9, Lcom/oneplus/battery/OpNewWarpChargingView;->ANIMATION_INTERPILATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 411
    invoke-virtual {v8, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 413
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingScaleDownAnimSet:Landroid/animation/AnimatorSet;

    .line 414
    iget-object v4, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingScaleDownAnimSet:Landroid/animation/AnimatorSet;

    new-array v5, v0, [Landroid/animation/Animator;

    aput-object v1, v5, v2

    aput-object v8, v5, v3

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 415
    iget-object v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingScaleDownAnimSet:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/oneplus/battery/OpNewWarpChargingView$4;

    invoke-direct {v4, p0}, Lcom/oneplus/battery/OpNewWarpChargingView$4;-><init>(Lcom/oneplus/battery/OpNewWarpChargingView;)V

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 440
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v1, v0, [I

    const/16 v4, 0x1e

    aput v4, v1, v2

    const/16 v4, 0x59

    aput v4, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimP3:Landroid/animation/ValueAnimator;

    .line 441
    iget-object v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimP3:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 442
    iget-object v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimP3:Landroid/animation/ValueAnimator;

    const/16 v4, 0x7a0

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 443
    iget-object v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimP3:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/oneplus/battery/OpNewWarpChargingView$5;

    invoke-direct {v4, p0}, Lcom/oneplus/battery/OpNewWarpChargingView$5;-><init>(Lcom/oneplus/battery/OpNewWarpChargingView;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 474
    iget-object v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimP3:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/oneplus/battery/OpNewWarpChargingView$6;

    invoke-direct {v4, p0}, Lcom/oneplus/battery/OpNewWarpChargingView$6;-><init>(Lcom/oneplus/battery/OpNewWarpChargingView;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 515
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v1, v0, [I

    const/16 v4, 0xe

    aput v4, v1, v2

    const/16 v4, 0x1d

    aput v4, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 516
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/16 v4, 0x220

    int-to-long v4, v4

    .line 517
    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 518
    new-instance v4, Lcom/oneplus/battery/OpNewWarpChargingView$7;

    invoke-direct {v4, p0}, Lcom/oneplus/battery/OpNewWarpChargingView$7;-><init>(Lcom/oneplus/battery/OpNewWarpChargingView;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 525
    new-instance v4, Landroid/animation/ValueAnimator;

    invoke-direct {v4}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v4, v0, [F

    fill-array-data v4, :array_2

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    const/16 v5, 0xbe

    int-to-long v8, v5

    .line 526
    invoke-virtual {v4, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 527
    new-instance v5, Lcom/oneplus/battery/OpNewWarpChargingView$8;

    invoke-direct {v5, p0}, Lcom/oneplus/battery/OpNewWarpChargingView$8;-><init>(Lcom/oneplus/battery/OpNewWarpChargingView;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 538
    new-instance v5, Landroid/animation/ValueAnimator;

    invoke-direct {v5}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v5, v0, [F

    fill-array-data v5, :array_3

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 539
    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 540
    new-instance v6, Lcom/oneplus/battery/OpNewWarpChargingView$9;

    invoke-direct {v6, p0}, Lcom/oneplus/battery/OpNewWarpChargingView$9;-><init>(Lcom/oneplus/battery/OpNewWarpChargingView;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 549
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 550
    sget-object v7, Lcom/oneplus/battery/OpNewWarpChargingView;->ANIMATION_INTERPILATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 551
    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 553
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingScaleUpAnimSet:Landroid/animation/AnimatorSet;

    .line 554
    iget-object v4, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingScaleUpAnimSet:Landroid/animation/AnimatorSet;

    new-array v5, v0, [Landroid/animation/Animator;

    aput-object v1, v5, v2

    aput-object v6, v5, v3

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 555
    iget-object v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingScaleUpAnimSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/oneplus/battery/OpNewWarpChargingView$10;

    invoke-direct {v2, p0}, Lcom/oneplus/battery/OpNewWarpChargingView$10;-><init>(Lcom/oneplus/battery/OpNewWarpChargingView;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 584
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimP1:Landroid/animation/ValueAnimator;

    .line 585
    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimP1:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 586
    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimP1:Landroid/animation/ValueAnimator;

    const/16 v1, 0x1c0

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 587
    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimP1:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/battery/OpNewWarpChargingView$11;

    invoke-direct {v1, p0}, Lcom/oneplus/battery/OpNewWarpChargingView$11;-><init>(Lcom/oneplus/battery/OpNewWarpChargingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 594
    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimP1:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/battery/OpNewWarpChargingView$12;

    invoke-direct {v1, p0}, Lcom/oneplus/battery/OpNewWarpChargingView$12;-><init>(Lcom/oneplus/battery/OpNewWarpChargingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 648
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 649
    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimP1:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f866666    # 1.05f
    .end array-data

    :array_1
    .array-data 4
        0x3f866666    # 1.05f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_2
    .array-data 4
        0x3e75c28f    # 0.24f
        0x3f8ccccd    # 1.1f
    .end array-data

    :array_3
    .array-data 4
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0xd
    .end array-data
.end method

.method private getWarpAnimation()Landroid/animation/AnimatorSet;
    .locals 10

    .line 654
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    iget-object v3, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mWarpAnimationAssets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aput v3, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 655
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 656
    iget-object v3, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mWarpAnimationAssets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x20

    int-to-long v5, v3

    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 657
    new-instance v3, Lcom/oneplus/battery/OpNewWarpChargingView$13;

    invoke-direct {v3, p0}, Lcom/oneplus/battery/OpNewWarpChargingView$13;-><init>(Lcom/oneplus/battery/OpNewWarpChargingView;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 666
    new-instance v3, Lcom/oneplus/battery/OpNewWarpChargingView$14;

    invoke-direct {v3, p0}, Lcom/oneplus/battery/OpNewWarpChargingView$14;-><init>(Lcom/oneplus/battery/OpNewWarpChargingView;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 688
    sget-object v3, Lcom/oneplus/battery/OpNewWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v5, Lcom/android/systemui/R$dimen;->op_warp_charging_wireless_anim_info_view_height:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v3

    .line 689
    sget-object v5, Lcom/oneplus/battery/OpNewWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v6, Lcom/android/systemui/R$dimen;->op_warp_charging_wireless_anim_info_battery_level_container_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-static {v5}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v5

    .line 690
    iget-object v6, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getTranslationY()F

    move-result v6

    .line 691
    iget-object v7, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mWarpView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v7

    .line 692
    new-instance v8, Landroid/animation/ValueAnimator;

    invoke-direct {v8}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v8, v0, [F

    const/4 v9, 0x0

    aput v9, v8, v2

    sub-int/2addr v3, v5

    div-int/2addr v3, v0

    int-to-float v3, v3

    sub-float v3, v6, v3

    aput v3, v8, v4

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 693
    sget-object v5, Lcom/oneplus/battery/OpNewWarpChargingView;->WARP_ANIMATION_INTERPILATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v8, 0x1a9

    .line 694
    invoke-virtual {v3, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 695
    new-instance v5, Lcom/oneplus/battery/OpNewWarpChargingView$15;

    invoke-direct {v5, p0, v6, v7}, Lcom/oneplus/battery/OpNewWarpChargingView$15;-><init>(Lcom/oneplus/battery/OpNewWarpChargingView;FF)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 704
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v3, v0, v2

    aput-object v1, v0, v4

    .line 705
    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 706
    new-instance v0, Lcom/oneplus/battery/OpNewWarpChargingView$16;

    invoke-direct {v0, p0}, Lcom/oneplus/battery/OpNewWarpChargingView$16;-><init>(Lcom/oneplus/battery/OpNewWarpChargingView;)V

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v5
.end method

.method private preloadAnimationList()V
    .locals 10

    .line 777
    sget-boolean v0, Lcom/oneplus/battery/OpNewWarpChargingView;->DEBUG:Z

    const-string v1, "OpNewWarpChargingView"

    if-eqz v0, :cond_0

    const-string v0, "preloadAnimationList()"

    .line 778
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 783
    iget v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingType:I

    if-nez v0, :cond_1

    .line 784
    sget-object v0, Lcom/oneplus/battery/OpNewWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$array;->warpcharge_wired_anim:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0

    .line 785
    :cond_1
    sget-object v0, Lcom/oneplus/battery/OpNewWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$array;->warpcharge_wireless_anim:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 788
    :goto_0
    sget-object v4, Lcom/oneplus/battery/OpNewWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v5, Lcom/android/systemui/R$array;->warp_anim:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    .line 791
    :goto_1
    iget-object v7, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimationAssets:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 792
    iget-object v7, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimationAssets:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    if-eqz v7, :cond_2

    .line 794
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    move v6, v5

    .line 799
    :goto_2
    iget-object v7, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mWarpAnimationAssets:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 800
    iget-object v7, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mWarpAnimationAssets:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    if-eqz v7, :cond_4

    .line 802
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 806
    :cond_5
    iget-object v6, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimationAssets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 807
    iget-object v6, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mWarpAnimationAssets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    move v6, v5

    .line 809
    :goto_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_7

    .line 810
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 812
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v7

    .line 813
    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 814
    iget-object v9, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimationAssets:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v7, :cond_6

    .line 817
    :try_start_0
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_7
    move v6, v5

    .line 825
    :goto_4
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_9

    .line 826
    invoke-virtual {v4, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 828
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v7

    .line 829
    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 830
    iget-object v9, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mWarpAnimationAssets:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v7, :cond_8

    .line 833
    :try_start_1
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 840
    :cond_9
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 841
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 842
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 843
    sget-boolean v0, Lcom/oneplus/battery/OpNewWarpChargingView;->DEBUG:Z

    if-eqz v0, :cond_a

    .line 844
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "preloadAnimationList: cost Time"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " mChargingAnimationAssets size:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimationAssets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mWarpAnimationAssets size:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mWarpAnimationAssets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    :cond_a
    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/battery/OpNewWarpChargingView$19;

    invoke-direct {v1, p0}, Lcom/oneplus/battery/OpNewWarpChargingView$19;-><init>(Lcom/oneplus/battery/OpNewWarpChargingView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private refreshUI()V
    .locals 4

    .line 209
    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mInfoView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 210
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 212
    sget-object v1, Lcom/oneplus/battery/OpNewWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->op_warp_charging_wireless_anim_info_view_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 214
    :cond_0
    iget-object v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mInfoView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mBatteryLevelViewContainer:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 221
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    .line 223
    sget-object v1, Lcom/oneplus/battery/OpNewWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->op_warp_charging_wireless_anim_info_battery_level_container_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 225
    :cond_2
    iget-object v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mBatteryLevelViewContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    :cond_3
    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 231
    sget-object v1, Lcom/oneplus/battery/OpNewWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->op_warp_charging_wireless_anim_info_battery_level_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 232
    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    sget-object v1, Lcom/oneplus/battery/OpNewWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v3, Lcom/android/systemui/R$dimen;->op_warp_charging_wireless_anim_info_battery_level_text_padding_left:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 233
    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_4

    .line 235
    sget-object v1, Lcom/oneplus/battery/OpNewWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->op_warp_charging_wireless_anim_info_battery_level_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 237
    :cond_4
    iget-object v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    :cond_5
    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mWarpView:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 243
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_6

    .line 246
    sget-object v1, Lcom/oneplus/battery/OpNewWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->op_warp_charging_wireless_text_image_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 247
    sget-object v1, Lcom/oneplus/battery/OpNewWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->op_warp_charging_wireless_text_image_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 249
    sget-object v1, Lcom/oneplus/battery/OpNewWarpChargingView;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->op_warp_charging_wireless_anim_info_warp_view_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 253
    :cond_6
    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mWarpView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    return-void
.end method

.method private releaseAnimationList()V
    .locals 3

    .line 866
    sget-boolean v0, Lcom/oneplus/battery/OpNewWarpChargingView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpNewWarpChargingView"

    const-string v1, "releaseAnimationList()"

    .line 867
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    :cond_0
    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mBackgroundView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    move v1, v0

    .line 870
    :goto_0
    iget-object v2, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimationAssets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 871
    iget-object v2, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimationAssets:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 873
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 877
    :cond_2
    iget-object v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimationAssets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 879
    :goto_1
    iget-object v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mWarpAnimationAssets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 880
    iget-object v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mWarpAnimationAssets:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 882
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 886
    :cond_4
    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mWarpAnimationAssets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 888
    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/battery/OpNewWarpChargingView$20;

    invoke-direct {v1, p0}, Lcom/oneplus/battery/OpNewWarpChargingView$20;-><init>(Lcom/oneplus/battery/OpNewWarpChargingView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public notifyWarpCharging()V
    .locals 2

    .line 933
    iget-boolean v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mIsWarpAnimStart:Z

    if-nez v0, :cond_0

    const-string v0, "OpNewWarpChargingView"

    const-string v1, " notifyWarpCharging"

    .line 934
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 935
    iput-boolean v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mIsWarpAnimStart:Z

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 158
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 160
    sget v0, Lcom/android/systemui/R$id;->info_view_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mInfoViewContainer:Landroid/widget/RelativeLayout;

    .line 161
    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 162
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 163
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 164
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 165
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 166
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v1, v0, :cond_0

    move v0, v1

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mInfoViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 169
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 170
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 172
    sget v0, Lcom/android/systemui/R$id;->battery_level:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    .line 174
    sget v0, Lcom/android/systemui/R$id;->warp_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mWarpView:Landroid/widget/ImageView;

    .line 176
    sget v0, Lcom/android/systemui/R$id;->background_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mBackgroundView:Landroid/widget/ImageView;

    .line 177
    sget v0, Lcom/android/systemui/R$id;->info_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mInfoView:Landroid/view/View;

    .line 178
    sget v0, Lcom/android/systemui/R$id;->scrim_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mScrim:Landroid/view/View;

    .line 181
    sget v0, Lcom/android/systemui/R$id;->battery_level_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mBatteryLevelViewContainer:Landroid/view/View;

    .line 185
    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mAudioManager:Landroid/media/AudioManager;

    .line 186
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v2, v2, v1}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingSound:Landroid/media/SoundPool;

    .line 187
    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingSound:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$raw;->charging:I

    invoke-virtual {v0, v1, v3, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingSoundId:I

    .line 190
    invoke-direct {p0}, Lcom/oneplus/battery/OpNewWarpChargingView;->refreshUI()V

    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 0

    .line 264
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, "%"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 266
    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 267
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/oneplus/battery/OpNewWarpChargingView;->refreshUI()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 195
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 196
    invoke-virtual {p0}, Lcom/oneplus/battery/OpNewWarpChargingView;->stopAnimation()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 201
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    .line 203
    invoke-direct {p0}, Lcom/oneplus/battery/OpNewWarpChargingView;->refreshUI()V

    :cond_0
    return-void
.end method

.method public playChargingSound()V
    .locals 10

    .line 941
    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    .line 942
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play dash anim, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpNewWarpChargingView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    .line 944
    iget-object v3, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingSound:Landroid/media/SoundPool;

    iget v4, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingSoundId:I

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual/range {v3 .. v9}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result p0

    .line 946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play dash result "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public prepareAsset(I)V
    .locals 2

    .line 734
    sget-boolean v0, Lcom/oneplus/battery/OpNewWarpChargingView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareAsset() / mAssetLoading:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mAssetLoading:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / mAssetLoaded:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mAssetLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " chargingType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpNewWarpChargingView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    :cond_0
    iput p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingType:I

    .line 741
    iget-boolean p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mAssetLoading:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mAssetLoaded:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 742
    iput-boolean p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mAssetLoading:Z

    .line 744
    iput-boolean p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mKeyguardShowing:Z

    .line 746
    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/battery/OpNewWarpChargingView$17;

    invoke-direct {v0, p0}, Lcom/oneplus/battery/OpNewWarpChargingView$17;-><init>(Lcom/oneplus/battery/OpNewWarpChargingView;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public releaseAsset()V
    .locals 2

    .line 757
    sget-boolean v0, Lcom/oneplus/battery/OpNewWarpChargingView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseAsset() / mAssetLoaded:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mAssetLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / isAnimationStart:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->isAnimationStart:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / mAssetReleasing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mAssetReleasing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpNewWarpChargingView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mAssetLoaded:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->isAnimationStart:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mAssetReleasing:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 761
    iput-boolean v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mAssetReleasing:Z

    .line 763
    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mInfoView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 764
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 767
    :cond_1
    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/battery/OpNewWarpChargingView$18;

    invoke-direct {v1, p0}, Lcom/oneplus/battery/OpNewWarpChargingView$18;-><init>(Lcom/oneplus/battery/OpNewWarpChargingView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public setChargingAnimationController(Lcom/oneplus/battery/OpChargingAnimationController;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimationController:Lcom/oneplus/battery/OpChargingAnimationController;

    return-void
.end method

.method public startAnimation(I)V
    .locals 4

    .line 273
    iget v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingType:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    .line 274
    iput-boolean v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mAssetLoaded:Z

    .line 282
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mAssetLoaded:Z

    const-string v2, "OpNewWarpChargingView"

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mAssetReleasing:Z

    if-nez v0, :cond_2

    .line 284
    iput-boolean v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mIsPaddingStartAnimation:Z

    .line 285
    iget-boolean p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->isAnimationStart:Z

    if-nez p1, :cond_5

    const-string/jumbo p1, "startAnimation"

    .line 286
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargeAnimation:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_1

    .line 288
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0

    .line 291
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/battery/OpNewWarpChargingView;->getChargeAnimation()Landroid/animation/AnimatorSet;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargeAnimation:Landroid/animation/AnimatorSet;

    .line 296
    :goto_0
    iput-boolean v3, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->isAnimationStart:Z

    .line 297
    iput-boolean v3, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mIsAnimationPlaying:Z

    .line 300
    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    .line 303
    :cond_2
    sget-boolean v0, Lcom/oneplus/battery/OpNewWarpChargingView;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "startAnimation / else / prepareAsset"

    .line 304
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_3
    iget-boolean v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mAssetReleasing:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mBackgroundHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    .line 309
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 311
    iput-boolean v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mAssetLoaded:Z

    .line 312
    iput-boolean v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mAssetReleasing:Z

    .line 317
    :cond_4
    iput-boolean v3, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mIsPaddingStartAnimation:Z

    .line 319
    invoke-virtual {p0, p1}, Lcom/oneplus/battery/OpNewWarpChargingView;->prepareAsset(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public stopAnimation()V
    .locals 3

    const/4 v0, 0x0

    .line 326
    iput-boolean v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mKeyguardShowing:Z

    .line 331
    iget-boolean v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mIsWarpAnimRunning:Z

    const-string v2, "OpNewWarpChargingView"

    if-eqz v1, :cond_0

    const-string/jumbo v1, "stop warp animation"

    .line 332
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mWarpAnimation:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    .line 334
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 340
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->isAnimationStart:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "stop charging animation"

    .line 341
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iput-boolean v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mIsAnimationPlaying:Z

    .line 344
    iget v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mNowPlaying:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 356
    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimP1:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    .line 352
    :cond_1
    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingScaleDownAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0

    .line 349
    :cond_2
    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingAnimP3:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    .line 346
    :cond_3
    iget-object p0, p0, Lcom/oneplus/battery/OpNewWarpChargingView;->mChargingScaleUpAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_4
    :goto_0
    return-void
.end method
