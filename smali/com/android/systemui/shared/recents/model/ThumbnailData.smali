.class public Lcom/android/systemui/shared/recents/model/ThumbnailData;
.super Ljava/lang/Object;
.source "ThumbnailData.java"


# instance fields
.field public insets:Landroid/graphics/Rect;

.field public isRealSnapshot:Z

.field public isTranslucent:Z

.field public orientation:I

.field public reducedResolution:Z

.field public scale:F

.field public systemUiVisibility:I

.field public thumbnail:Landroid/graphics/Bitmap;

.field public windowingMode:I


# direct methods
.method public constructor <init>(Landroid/app/ActivityManager$TaskSnapshot;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    :try_start_0
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskSnapshot;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThumbnailData"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskSnapshot;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->insets:Landroid/graphics/Rect;

    .line 69
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskSnapshot;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->orientation:I

    .line 70
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskSnapshot;->isReducedResolution()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->reducedResolution:Z

    .line 71
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskSnapshot;->getScale()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->scale:F

    .line 72
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskSnapshot;->isRealSnapshot()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->isRealSnapshot:Z

    .line 73
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskSnapshot;->isTranslucent()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->isTranslucent:Z

    .line 74
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskSnapshot;->getWindowingMode()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->windowingMode:I

    .line 75
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskSnapshot;->getSystemUiVisibility()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->systemUiVisibility:I

    return-void
.end method
