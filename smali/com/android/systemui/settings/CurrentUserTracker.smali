.class public abstract Lcom/android/systemui/settings/CurrentUserTracker;
.super Ljava/lang/Object;
.source "CurrentUserTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;
    }
.end annotation


# instance fields
.field private mCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserReceiver:Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-static {p1}, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->getInstance(Landroid/content/Context;)Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/android/systemui/settings/-$$Lambda$JYv4q5Exc5xk6WCK6WtC6eC0sA8;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/-$$Lambda$JYv4q5Exc5xk6WCK6WtC6eC0sA8;-><init>(Lcom/android/systemui/settings/CurrentUserTracker;)V

    iput-object v0, p0, Lcom/android/systemui/settings/CurrentUserTracker;->mCallback:Ljava/util/function/Consumer;

    .line 42
    iput-object p1, p0, Lcom/android/systemui/settings/CurrentUserTracker;->mUserReceiver:Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;

    return-void
.end method


# virtual methods
.method public getCurrentUserId()I
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/settings/CurrentUserTracker;->mUserReceiver:Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;

    invoke-virtual {p0}, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->getCurrentUserId()I

    move-result p0

    return p0
.end method

.method public abstract onUserSwitched(I)V
.end method

.method public startTracking()V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/android/systemui/settings/CurrentUserTracker;->mUserReceiver:Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;

    iget-object p0, p0, Lcom/android/systemui/settings/CurrentUserTracker;->mCallback:Ljava/util/function/Consumer;

    invoke-static {v0, p0}, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->access$000(Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public stopTracking()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/android/systemui/settings/CurrentUserTracker;->mUserReceiver:Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;

    iget-object p0, p0, Lcom/android/systemui/settings/CurrentUserTracker;->mCallback:Ljava/util/function/Consumer;

    invoke-static {v0, p0}, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->access$100(Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;Ljava/util/function/Consumer;)V

    return-void
.end method
