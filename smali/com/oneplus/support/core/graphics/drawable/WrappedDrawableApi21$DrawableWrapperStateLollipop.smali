.class Lcom/oneplus/support/core/graphics/drawable/WrappedDrawableApi21$DrawableWrapperStateLollipop;
.super Lcom/oneplus/support/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;
.source "WrappedDrawableApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/core/graphics/drawable/WrappedDrawableApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DrawableWrapperStateLollipop"
.end annotation


# direct methods
.method constructor <init>(Lcom/oneplus/support/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;Landroid/content/res/Resources;)V
    .locals 0

    .line 149
    invoke-direct {p0, p1, p2}, Lcom/oneplus/support/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;-><init>(Lcom/oneplus/support/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 155
    new-instance v0, Lcom/oneplus/support/core/graphics/drawable/WrappedDrawableApi21;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/support/core/graphics/drawable/WrappedDrawableApi21;-><init>(Lcom/oneplus/support/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;Landroid/content/res/Resources;)V

    return-object v0
.end method
