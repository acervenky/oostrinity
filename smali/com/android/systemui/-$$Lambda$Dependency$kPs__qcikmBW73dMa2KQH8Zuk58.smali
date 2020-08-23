.class public final synthetic Lcom/android/systemui/-$$Lambda$Dependency$kPs__qcikmBW73dMa2KQH8Zuk58;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Landroid/content/res/Configuration;


# direct methods
.method public synthetic constructor <init>(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/-$$Lambda$Dependency$kPs__qcikmBW73dMa2KQH8Zuk58;->f$0:Landroid/content/res/Configuration;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/-$$Lambda$Dependency$kPs__qcikmBW73dMa2KQH8Zuk58;->f$0:Landroid/content/res/Configuration;

    invoke-static {p0, p1}, Lcom/android/systemui/Dependency;->lambda$onConfigurationChanged$5(Landroid/content/res/Configuration;Ljava/lang/Object;)V

    return-void
.end method
