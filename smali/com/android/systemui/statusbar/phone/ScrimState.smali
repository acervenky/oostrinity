.class public enum Lcom/android/systemui/statusbar/phone/ScrimState;
.super Ljava/lang/Enum;
.source "ScrimState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/statusbar/phone/ScrimState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum BOUNCER:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum BOUNCER_SCRIMMED:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum BOUNCER_TO_KEYGUARD:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum BRIGHTNESS_MIRROR:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum BUBBLE_EXPANDED:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum KEYGUARD:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum UNINITIALIZED:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;


# instance fields
.field mAnimateChange:Z

.field mAnimationDuration:J

.field mAodFrontScrimAlpha:F

.field mBlankScreen:Z

.field mCurrentBehindAlpha:F

.field mCurrentBehindTint:I

.field mCurrentInFrontAlpha:F

.field mCurrentInFrontTint:I

.field mDisplayRequiresBlanking:Z

.field mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field mHasBackdrop:Z

.field mIndex:I

.field mLaunchingAffordanceWithPreview:Z

.field mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

.field mScrimBehindAlphaKeyguard:F

.field mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

.field mWakeLockScreenSensorActive:Z

.field mWallpaperSupportsAmbientMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 38
    new-instance v0, Lcom/android/systemui/statusbar/phone/ScrimState;

    const/4 v1, 0x0

    const-string v2, "UNINITIALIZED"

    const/4 v3, -0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/android/systemui/statusbar/phone/ScrimState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->UNINITIALIZED:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 43
    new-instance v0, Lcom/android/systemui/statusbar/phone/ScrimState$1;

    const/4 v2, 0x1

    const-string v3, "KEYGUARD"

    invoke-direct {v0, v3, v2, v1}, Lcom/android/systemui/statusbar/phone/ScrimState$1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->KEYGUARD:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 74
    new-instance v0, Lcom/android/systemui/statusbar/phone/ScrimState$2;

    const/4 v3, 0x2

    const-string v4, "BOUNCER"

    invoke-direct {v0, v4, v3, v2}, Lcom/android/systemui/statusbar/phone/ScrimState$2;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 92
    new-instance v0, Lcom/android/systemui/statusbar/phone/ScrimState$3;

    const/4 v4, 0x3

    const-string v5, "BOUNCER_SCRIMMED"

    invoke-direct {v0, v5, v4, v3}, Lcom/android/systemui/statusbar/phone/ScrimState$3;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER_SCRIMMED:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 110
    new-instance v0, Lcom/android/systemui/statusbar/phone/ScrimState$4;

    const/4 v5, 0x4

    const-string v6, "BRIGHTNESS_MIRROR"

    invoke-direct {v0, v6, v5, v4}, Lcom/android/systemui/statusbar/phone/ScrimState$4;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->BRIGHTNESS_MIRROR:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 121
    new-instance v0, Lcom/android/systemui/statusbar/phone/ScrimState$5;

    const/4 v6, 0x5

    const-string v7, "AOD"

    invoke-direct {v0, v7, v6, v5}, Lcom/android/systemui/statusbar/phone/ScrimState$5;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 149
    new-instance v0, Lcom/android/systemui/statusbar/phone/ScrimState$6;

    const/4 v7, 0x6

    const-string v8, "PULSING"

    invoke-direct {v0, v8, v7, v6}, Lcom/android/systemui/statusbar/phone/ScrimState$6;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 167
    new-instance v0, Lcom/android/systemui/statusbar/phone/ScrimState$7;

    const/4 v8, 0x7

    const-string v9, "UNLOCKED"

    invoke-direct {v0, v9, v8, v7}, Lcom/android/systemui/statusbar/phone/ScrimState$7;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 205
    new-instance v0, Lcom/android/systemui/statusbar/phone/ScrimState$8;

    const/16 v9, 0x8

    const-string v10, "BUBBLE_EXPANDED"

    invoke-direct {v0, v10, v9, v8}, Lcom/android/systemui/statusbar/phone/ScrimState$8;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->BUBBLE_EXPANDED:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 220
    new-instance v0, Lcom/android/systemui/statusbar/phone/ScrimState$9;

    const/16 v10, 0x9

    const-string v11, "BOUNCER_TO_KEYGUARD"

    invoke-direct {v0, v11, v10, v9}, Lcom/android/systemui/statusbar/phone/ScrimState$9;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER_TO_KEYGUARD:Lcom/android/systemui/statusbar/phone/ScrimState;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 33
    sget-object v11, Lcom/android/systemui/statusbar/phone/ScrimState;->UNINITIALIZED:Lcom/android/systemui/statusbar/phone/ScrimState;

    aput-object v11, v0, v1

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->KEYGUARD:Lcom/android/systemui/statusbar/phone/ScrimState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER:Lcom/android/systemui/statusbar/phone/ScrimState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER_SCRIMMED:Lcom/android/systemui/statusbar/phone/ScrimState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->BRIGHTNESS_MIRROR:Lcom/android/systemui/statusbar/phone/ScrimState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->BUBBLE_EXPANDED:Lcom/android/systemui/statusbar/phone/ScrimState;

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER_TO_KEYGUARD:Lcom/android/systemui/statusbar/phone/ScrimState;

    aput-object v1, v0, v10

    sput-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->$VALUES:[Lcom/android/systemui/statusbar/phone/ScrimState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 252
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 233
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBlankScreen:Z

    const-wide/16 v0, 0xdc

    .line 234
    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimationDuration:J

    .line 235
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mCurrentInFrontTint:I

    .line 236
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mCurrentBehindTint:I

    const/4 p1, 0x1

    .line 237
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimateChange:Z

    .line 253
    iput p3, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mIndex:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILcom/android/systemui/statusbar/phone/ScrimState$1;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/ScrimState;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/ScrimState;
    .locals 1

    .line 33
    const-class v0, Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ScrimState;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/statusbar/phone/ScrimState;
    .locals 1

    .line 33
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->$VALUES:[Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/phone/ScrimState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/phone/ScrimState;

    return-object v0
.end method


# virtual methods
.method protected applyOpAlphaValue()V
    .locals 0

    return-void
.end method

.method public getAnimateChange()Z
    .locals 0

    .line 308
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimateChange:Z

    return p0
.end method

.method public getAnimationDuration()J
    .locals 2

    .line 287
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimationDuration:J

    return-wide v0
.end method

.method public getBehindAlpha()F
    .locals 0

    .line 275
    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mCurrentBehindAlpha:F

    return p0
.end method

.method public getBehindTint()I
    .locals 0

    .line 283
    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mCurrentBehindTint:I

    return p0
.end method

.method public getBlanksScreen()Z
    .locals 0

    .line 291
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBlankScreen:Z

    return p0
.end method

.method public getFrontAlpha()F
    .locals 0

    .line 271
    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mCurrentInFrontAlpha:F

    return p0
.end method

.method public getFrontTint()I
    .locals 0

    .line 279
    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mCurrentInFrontTint:I

    return p0
.end method

.method public getIndex()I
    .locals 0

    .line 267
    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mIndex:I

    return p0
.end method

.method public init(Lcom/android/systemui/statusbar/ScrimView;Lcom/android/systemui/statusbar/ScrimView;Lcom/android/systemui/statusbar/phone/DozeParameters;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    .line 258
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    .line 259
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 260
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mDisplayRequiresBlanking:Z

    return-void
.end method

.method public isLowPowerState()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public prepare(Lcom/android/systemui/statusbar/phone/ScrimState;)V
    .locals 0

    return-void
.end method

.method public setAodFrontScrimAlpha(F)V
    .locals 0

    .line 312
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAodFrontScrimAlpha:F

    return-void
.end method

.method public setHasBackdrop(Z)V
    .locals 0

    .line 332
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mHasBackdrop:Z

    return-void
.end method

.method public setLaunchingAffordanceWithPreview(Z)V
    .locals 0

    .line 324
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mLaunchingAffordanceWithPreview:Z

    return-void
.end method

.method public setScrimBehindAlphaKeyguard(F)V
    .locals 0

    .line 316
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mScrimBehindAlphaKeyguard:F

    return-void
.end method

.method public setWakeLockScreenSensorActive(Z)V
    .locals 0

    .line 336
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mWakeLockScreenSensorActive:Z

    return-void
.end method

.method public setWallpaperSupportsAmbientMode(Z)V
    .locals 0

    .line 320
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mWallpaperSupportsAmbientMode:Z

    return-void
.end method

.method public updateScrimColor(Lcom/android/systemui/statusbar/ScrimView;FI)V
    .locals 4

    .line 296
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    if-ne p1, v0, :cond_0

    const-string v0, "front_scrim_alpha"

    goto :goto_0

    :cond_0
    const-string v0, "back_scrim_alpha"

    :goto_0
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p2

    float-to-int v1, v1

    const-wide/16 v2, 0x1000

    .line 295
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 300
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    if-ne p1, p0, :cond_1

    const-string p0, "front_scrim_tint"

    goto :goto_1

    :cond_1
    const-string p0, "back_scrim_tint"

    .line 301
    :goto_1
    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 299
    invoke-static {v2, v3, p0, v0}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 303
    invoke-virtual {p1, p3}, Lcom/android/systemui/statusbar/ScrimView;->setTint(I)V

    .line 304
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/ScrimView;->setViewAlpha(F)V

    return-void
.end method
