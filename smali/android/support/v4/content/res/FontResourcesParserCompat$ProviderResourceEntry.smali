.class public final Landroid/support/v4/content/res/FontResourcesParserCompat$ProviderResourceEntry;
.super Ljava/lang/Object;
.source "FontResourcesParserCompat.java"

# interfaces
.implements Landroid/support/v4/content/res/FontResourcesParserCompat$FamilyResourceEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/res/FontResourcesParserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProviderResourceEntry"
.end annotation


# instance fields
.field private final mRequest:Landroid/support/v4/provider/FontRequest;

.field private final mStrategy:I

.field private final mTimeoutMs:I


# direct methods
.method public constructor <init>(Landroid/support/v4/provider/FontRequest;II)V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$ProviderResourceEntry;->mRequest:Landroid/support/v4/provider/FontRequest;

    .line 82
    iput p2, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$ProviderResourceEntry;->mStrategy:I

    .line 83
    iput p3, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$ProviderResourceEntry;->mTimeoutMs:I

    return-void
.end method


# virtual methods
.method public getFetchStrategy()I
    .locals 0

    .line 91
    iget p0, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$ProviderResourceEntry;->mStrategy:I

    return p0
.end method

.method public getRequest()Landroid/support/v4/provider/FontRequest;
    .locals 0

    .line 87
    iget-object p0, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$ProviderResourceEntry;->mRequest:Landroid/support/v4/provider/FontRequest;

    return-object p0
.end method

.method public getTimeout()I
    .locals 0

    .line 95
    iget p0, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$ProviderResourceEntry;->mTimeoutMs:I

    return p0
.end method