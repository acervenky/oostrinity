.class public final synthetic Lcom/android/systemui/-$$Lambda$Dependency$HuGkTCw9vMDR4eaRCu8aHVVCJv8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/Dependency$LazyDependencyCreator;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/Dependency;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/Dependency;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/-$$Lambda$Dependency$HuGkTCw9vMDR4eaRCu8aHVVCJv8;->f$0:Lcom/android/systemui/Dependency;

    return-void
.end method


# virtual methods
.method public final createDependency()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/-$$Lambda$Dependency$HuGkTCw9vMDR4eaRCu8aHVVCJv8;->f$0:Lcom/android/systemui/Dependency;

    invoke-virtual {p0}, Lcom/android/systemui/Dependency;->lambda$start$1$Dependency()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
