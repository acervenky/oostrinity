.class Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$DecodeBitmapTask;
.super Ljava/lang/Object;
.source "OpFrameAnimationHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DecodeBitmapTask"
.end annotation


# instance fields
.field private mHelper:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

.field private mIndex:I


# direct methods
.method public constructor <init>(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;I)V
    .locals 0

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$DecodeBitmapTask;->mHelper:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    .line 251
    iput p2, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$DecodeBitmapTask;->mIndex:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 256
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$DecodeBitmapTask;->mHelper:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    if-eqz v0, :cond_4

    .line 258
    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mAnimationView:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    return-void

    .line 262
    :cond_0
    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_4

    .line 263
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$DecodeBitmapTask;->mHelper:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 268
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$DecodeBitmapTask;->mHelper:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    iget v2, v1, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mStartFrameIndex:I

    iget v3, v1, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mPlayFrameNum:I

    add-int/2addr v3, v2

    .line 269
    iget v4, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$DecodeBitmapTask;->mIndex:I

    add-int/2addr v4, v2

    if-lt v4, v3, :cond_2

    return-void

    .line 275
    :cond_2
    iget-object v1, v1, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mFrames:[I

    aget v1, v1, v4

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 278
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$DecodeBitmapTask;->mHelper:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    iget-object v1, v1, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mBitmapArray:[Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 279
    iget p0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$DecodeBitmapTask;->mIndex:I

    aput-object v0, v1, p0

    .line 286
    :cond_3
    :try_start_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x5

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 288
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    nop

    :cond_4
    :goto_0
    return-void
.end method
