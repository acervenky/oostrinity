.class public Lcom/android/systemui/bubbles/BubbleData;
.super Ljava/lang/Object;
.source "BubbleData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/bubbles/BubbleData$TimeSource;,
        Lcom/android/systemui/bubbles/BubbleData$Listener;,
        Lcom/android/systemui/bubbles/BubbleData$Update;
    }
.end annotation


# static fields
.field private static final BUBBLES_BY_SORT_KEY_DESCENDING:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/systemui/bubbles/Bubble;",
            ">;"
        }
    .end annotation
.end field

.field private static final GROUPS_BY_MAX_SORT_KEY_DESCENDING:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mBubbles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/bubbles/Bubble;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mExpanded:Z

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/systemui/bubbles/BubbleData$Listener;

.field private mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

.field private mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

.field private mTimeSource:Lcom/android/systemui/bubbles/BubbleData$TimeSource;

.field private mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    sget-object v0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$vPZCImnk7rTPTX1c7nr0PX7FO2o;->INSTANCE:Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$vPZCImnk7rTPTX1c7nr0PX7FO2o;

    .line 71
    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/bubbles/BubbleData;->BUBBLES_BY_SORT_KEY_DESCENDING:Ljava/util/Comparator;

    .line 73
    sget-object v0, Lcom/android/systemui/bubbles/-$$Lambda$JmVH-PWbzq5woEs3Hauzhf2I3Jc;->INSTANCE:Lcom/android/systemui/bubbles/-$$Lambda$JmVH-PWbzq5woEs3Hauzhf2I3Jc;

    .line 74
    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/bubbles/BubbleData;->GROUPS_BY_MAX_SORT_KEY_DESCENDING:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    sget-object v0, Lcom/android/systemui/bubbles/-$$Lambda$0E0fwzH9SS6-aB9lL5npMzupI4Q;->INSTANCE:Lcom/android/systemui/bubbles/-$$Lambda$0E0fwzH9SS6-aB9lL5npMzupI4Q;

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mTimeSource:Lcom/android/systemui/bubbles/BubbleData$TimeSource;

    .line 141
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mContext:Landroid/content/Context;

    .line 142
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    .line 143
    new-instance p1, Lcom/android/systemui/bubbles/BubbleData$Update;

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/android/systemui/bubbles/BubbleData$Update;-><init>(Ljava/util/List;Lcom/android/systemui/bubbles/BubbleData$1;)V

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    .line 144
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/bubbles/BubbleData;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleData;->dispatchPendingChanges()V

    return-void
.end method

.method private dispatchPendingChanges()V
    .locals 3

    .line 349
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mListener:Lcom/android/systemui/bubbles/BubbleData$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleData$Update;->anythingChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mListener:Lcom/android/systemui/bubbles/BubbleData$Listener;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    invoke-interface {v0, v1}, Lcom/android/systemui/bubbles/BubbleData$Listener;->applyUpdate(Lcom/android/systemui/bubbles/BubbleData$Update;)V

    .line 352
    :cond_0
    new-instance v0, Lcom/android/systemui/bubbles/BubbleData$Update;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bubbles/BubbleData$Update;-><init>(Ljava/util/List;Lcom/android/systemui/bubbles/BubbleData$1;)V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    return-void
.end method

.method private doAdd(Lcom/android/systemui/bubbles/Bubble;)V
    .locals 4

    .line 244
    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/BubbleData;->hasBubbleWithGroupId(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 245
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleData;->isExpanded()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 247
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/BubbleData;->findFirstIndexForGroup(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    .line 249
    :goto_1
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/bubbles/BubbleData;->insertBubble(ILcom/android/systemui/bubbles/Bubble;)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_2

    .line 251
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/BubbleData;->opRepackAll(Ljava/util/List;)Z

    .line 253
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    iput-boolean v1, v0, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    .line 255
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    iput-object p1, v0, Lcom/android/systemui/bubbles/BubbleData$Update;->addedBubble:Lcom/android/systemui/bubbles/Bubble;

    .line 256
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleData;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_3

    .line 257
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    iget-boolean v1, v0, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getGroupId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->findFirstIndexForGroup(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->packGroup(I)Z

    move-result p1

    or-int/2addr p1, v1

    iput-boolean p1, v0, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    .line 259
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/bubbles/Bubble;

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/systemui/bubbles/Bubble;)V

    :cond_3
    return-void
.end method

.method private doRemove(Ljava/lang/String;I)V
    .locals 5

    .line 299
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->indexForKey(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/bubbles/Bubble;

    .line 304
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 306
    invoke-direct {p0, v1}, Lcom/android/systemui/bubbles/BubbleData;->setExpandedInternal(Z)V

    const/4 v1, 0x0

    .line 307
    invoke-direct {p0, v1}, Lcom/android/systemui/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/systemui/bubbles/Bubble;)V

    .line 309
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge p1, v1, :cond_2

    .line 311
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    iput-boolean v2, v1, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    .line 313
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 314
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    invoke-virtual {v1, v0, p2}, Lcom/android/systemui/bubbles/BubbleData$Update;->bubbleRemoved(Lcom/android/systemui/bubbles/Bubble;I)V

    .line 315
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleData;->isExpanded()Z

    move-result v1

    if-nez v1, :cond_3

    .line 316
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    iget-boolean v3, v1, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleData;->repackAll()Z

    move-result v4

    or-int/2addr v3, v4

    iput-boolean v3, v1, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    .line 320
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 322
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 323
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/bubbles/Bubble;

    .line 324
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/systemui/bubbles/Bubble;)V

    .line 326
    :cond_4
    invoke-virtual {v0}, Lcom/android/systemui/bubbles/Bubble;->setDismissed()V

    .line 327
    iget-object p1, v0, Lcom/android/systemui/bubbles/Bubble;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-direct {p0, p2, p1}, Lcom/android/systemui/bubbles/BubbleData;->maybeSendDeleteIntent(ILcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method private doUpdate(Lcom/android/systemui/bubbles/Bubble;)V
    .locals 3

    .line 279
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    iput-object p1, v0, Lcom/android/systemui/bubbles/BubbleData$Update;->updatedBubble:Lcom/android/systemui/bubbles/Bubble;

    .line 280
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleData;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_2

    .line 282
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 283
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 284
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/bubbles/BubbleData;->insertBubble(ILcom/android/systemui/bubbles/Bubble;)I

    move-result p1

    const/4 v2, 0x1

    if-eq v0, p1, :cond_0

    .line 286
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->packGroup(I)Z

    .line 287
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    iput-boolean v2, p1, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    .line 290
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->opRepackAll(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 291
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    iput-boolean v2, p1, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    .line 294
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/bubbles/Bubble;

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/systemui/bubbles/Bubble;)V

    :cond_2
    return-void
.end method

.method private findFirstIndexForGroup(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 511
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 512
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/bubbles/Bubble;

    .line 513
    invoke-virtual {v2}, Lcom/android/systemui/bubbles/Bubble;->getGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private hasBubbleWithGroupId(Ljava/lang/String;)Z
    .locals 1

    .line 507
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$H_9shD4W4k6iZvs8GpmXTAxbTbM;

    invoke-direct {v0, p1}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$H_9shD4W4k6iZvs8GpmXTAxbTbM;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method private indexForKey(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 690
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 691
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bubbles/Bubble;

    .line 692
    invoke-virtual {v1}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private insertBubble(ILcom/android/systemui/bubbles/Bubble;)I
    .locals 5

    .line 487
    invoke-static {p2}, Lcom/android/systemui/bubbles/BubbleData;->sortKey(Lcom/android/systemui/bubbles/Bubble;)J

    move-result-wide v0

    const/4 v2, 0x0

    .line 490
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge p1, v3, :cond_1

    .line 491
    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/bubbles/Bubble;

    .line 492
    invoke-virtual {v3}, Lcom/android/systemui/bubbles/Bubble;->getGroupId()Ljava/lang/String;

    move-result-object v4

    .line 493
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 495
    invoke-static {v3}, Lcom/android/systemui/bubbles/BubbleData;->sortKey(Lcom/android/systemui/bubbles/Bubble;)J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 497
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    move-object v2, v4

    goto :goto_0

    .line 502
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method static synthetic lambda$hasBubbleWithGroupId$2(Ljava/lang/String;Lcom/android/systemui/bubbles/Bubble;)Z
    .locals 0

    .line 507
    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getGroupId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$repackAll$3(Ljava/lang/String;Lcom/android/systemui/bubbles/Bubble;)Z
    .locals 0

    .line 585
    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getGroupId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$vPZCImnk7rTPTX1c7nr0PX7FO2o(Lcom/android/systemui/bubbles/Bubble;)J
    .locals 2

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleData;->sortKey(Lcom/android/systemui/bubbles/Bubble;)J

    move-result-wide v0

    return-wide v0
.end method

.method private maybeSendDeleteIntent(ILcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_1

    .line 653
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 655
    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->getDeleteIntent()Landroid/app/PendingIntent;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 659
    :try_start_0
    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 661
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to send delete intent for bubble with key: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BubbleData"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method

.method private opRepackAll(Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/bubbles/Bubble;",
            ">;)Z"
        }
    .end annotation

    .line 627
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 628
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 629
    sget-boolean v2, Lcom/oneplus/util/OpUtils;->QUICK_REPLY_PORTRAIT_ENABLED:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 630
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x0

    if-ne p0, v3, :cond_0

    move p0, v3

    goto :goto_0

    :cond_0
    move p0, v4

    .line 632
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/bubbles/Bubble;

    .line 633
    invoke-virtual {v6}, Lcom/android/systemui/bubbles/Bubble;->isQuickReply()Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz p0, :cond_1

    if-eqz v2, :cond_1

    .line 634
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 636
    :cond_1
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 639
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    .line 644
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 645
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 646
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return v3

    :cond_4
    :goto_2
    return v4
.end method

.method private packGroup(I)Z
    .locals 6

    .line 532
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/bubbles/Bubble;

    .line 533
    invoke-virtual {v0}, Lcom/android/systemui/bubbles/Bubble;->getGroupId()Ljava/lang/String;

    move-result-object v0

    .line 534
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 537
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    const/4 v4, 0x0

    if-le v2, p1, :cond_1

    .line 538
    iget-object v5, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/bubbles/Bubble;

    invoke-virtual {v5}, Lcom/android/systemui/bubbles/Bubble;->getGroupId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 539
    iget-object v5, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/bubbles/Bubble;

    invoke-interface {v1, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 542
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return v4

    .line 545
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 546
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    add-int/2addr p1, v3

    invoke-interface {p0, p1, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    return v3
.end method

.method private repackAll()Z
    .locals 8

    .line 561
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 564
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 565
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/bubbles/Bubble;

    .line 566
    invoke-virtual {v3}, Lcom/android/systemui/bubbles/Bubble;->getGroupId()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 567
    invoke-static {v3}, Lcom/android/systemui/bubbles/BubbleData;->sortKey(Lcom/android/systemui/bubbles/Bubble;)J

    move-result-wide v6

    cmp-long v4, v6, v4

    if-lez v4, :cond_1

    .line 569
    invoke-virtual {v3}, Lcom/android/systemui/bubbles/Bubble;->getGroupId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 575
    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v2, Lcom/android/systemui/bubbles/BubbleData;->GROUPS_BY_MAX_SORT_KEY_DESCENDING:Ljava/util/Comparator;

    .line 576
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v2, Lcom/android/systemui/bubbles/-$$Lambda$CSz_ibwXhtkKNl72Q8tR5oBgkWk;->INSTANCE:Lcom/android/systemui/bubbles/-$$Lambda$CSz_ibwXhtkKNl72Q8tR5oBgkWk;

    .line 577
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 578
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 580
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 583
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 584
    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$dNlU6_h6UYMtjKJV6CpiMlj80Mk;

    invoke-direct {v5, v3}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$dNlU6_h6UYMtjKJV6CpiMlj80Mk;-><init>(Ljava/lang/String;)V

    .line 585
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/bubbles/BubbleData;->BUBBLES_BY_SORT_KEY_DESCENDING:Ljava/util/Comparator;

    .line 586
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/bubbles/-$$Lambda$0tU2wih_2wwdAnw6hE7FT9YuCis;

    invoke-direct {v4, v2}, Lcom/android/systemui/bubbles/-$$Lambda$0tU2wih_2wwdAnw6hE7FT9YuCis;-><init>(Ljava/util/List;)V

    .line 587
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    goto :goto_1

    .line 590
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/systemui/bubbles/BubbleData;->opRepackAll(Ljava/util/List;)Z

    .line 592
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 595
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 596
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p0, 0x1

    return p0
.end method

.method private setExpandedInternal(Z)V
    .locals 5

    .line 407
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mExpanded:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 411
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const-string v3, "BubbleData"

    if-eqz v2, :cond_1

    const-string p0, "Attempt to expand stack when empty!"

    .line 412
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 415
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    if-nez v2, :cond_2

    const-string p0, "Attempt to expand stack without selected bubble!"

    .line 416
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 421
    :cond_2
    iget-object v2, v2, Lcom/android/systemui/bubbles/Bubble;->iconView:Lcom/android/systemui/bubbles/BubbleView;

    if-eqz v2, :cond_4

    .line 423
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_3

    const-string p0, "selected bubble is invisible, do not expand."

    .line 424
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 428
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    iget-object v2, v2, Lcom/android/systemui/bubbles/Bubble;->iconView:Lcom/android/systemui/bubbles/BubbleView;

    invoke-virtual {v2, v0}, Lcom/oneplus/systemui/bubbles/OpBubbleView;->setPointerVisibility(Z)V

    .line 432
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleData;->mTimeSource:Lcom/android/systemui/bubbles/BubbleData$TimeSource;

    invoke-interface {v3}, Lcom/android/systemui/bubbles/BubbleData$TimeSource;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/bubbles/Bubble;->markAsAccessedAt(J)V

    .line 433
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    iget-boolean v3, v2, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleData;->repackAll()Z

    move-result v4

    or-int/2addr v3, v4

    iput-boolean v3, v2, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    goto :goto_0

    .line 434
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 437
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    iget-boolean v3, v2, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleData;->repackAll()Z

    move-result v4

    or-int/2addr v3, v4

    iput-boolean v3, v2, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    .line 440
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_7

    .line 442
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-virtual {v2}, Lcom/android/systemui/bubbles/Bubble;->isOngoing()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/bubbles/Bubble;

    invoke-virtual {v2}, Lcom/android/systemui/bubbles/Bubble;->isOngoing()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 446
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/bubbles/Bubble;

    invoke-direct {p0, v2}, Lcom/android/systemui/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/systemui/bubbles/Bubble;)V

    goto :goto_0

    .line 450
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 451
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-interface {v2, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 452
    invoke-direct {p0, v1}, Lcom/android/systemui/bubbles/BubbleData;->packGroup(I)Z

    :cond_7
    :goto_0
    if-nez p1, :cond_8

    .line 458
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    iget-object v2, v2, Lcom/android/systemui/bubbles/Bubble;->iconView:Lcom/android/systemui/bubbles/BubbleView;

    if-eqz v2, :cond_8

    .line 459
    invoke-virtual {v2, v1}, Lcom/oneplus/systemui/bubbles/OpBubbleView;->setPointerVisibility(Z)V

    .line 463
    :cond_8
    iput-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mExpanded:Z

    .line 464
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    iput-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleData$Update;->expanded:Z

    .line 465
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleData$Update;->expandedChanged:Z

    return-void
.end method

.method private setSelectedBubbleInternal(Lcom/android/systemui/bubbles/Bubble;)V
    .locals 4

    .line 364
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "BubbleData"

    if-eqz p1, :cond_1

    .line 367
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot select bubble which doesn\'t exist! ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") bubbles="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 373
    iget-object v2, p1, Lcom/android/systemui/bubbles/Bubble;->iconView:Lcom/android/systemui/bubbles/BubbleView;

    if-eqz v2, :cond_2

    .line 374
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    .line 377
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Should do collapse because this bubble is invisible! ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-direct {p0, v1}, Lcom/android/systemui/bubbles/BubbleData;->setExpandedInternal(Z)V

    goto :goto_0

    .line 382
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mExpanded:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 383
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mTimeSource:Lcom/android/systemui/bubbles/BubbleData$TimeSource;

    invoke-interface {v0}, Lcom/android/systemui/bubbles/BubbleData$TimeSource;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/android/systemui/bubbles/Bubble;->markAsAccessedAt(J)V

    .line 388
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/android/systemui/bubbles/Bubble;->iconView:Lcom/android/systemui/bubbles/BubbleView;

    if-eqz v0, :cond_4

    .line 389
    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/bubbles/OpBubbleView;->setPointerVisibility(Z)V

    .line 393
    :cond_4
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    .line 394
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleData$Update;->selectedBubble:Lcom/android/systemui/bubbles/Bubble;

    const/4 p1, 0x1

    .line 395
    iput-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleData$Update;->selectionChanged:Z

    return-void
.end method

.method private static sortKey(Lcom/android/systemui/bubbles/Bubble;)J
    .locals 4

    .line 469
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/Bubble;->getLastUpdateTime()J

    move-result-wide v0

    .line 470
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/Bubble;->isOngoing()Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    or-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method private trim()V
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/bubbles/-$$Lambda$x9O8XLDgnXklCbpbq_xgakOvcgY;->INSTANCE:Lcom/android/systemui/bubbles/-$$Lambda$x9O8XLDgnXklCbpbq_xgakOvcgY;

    .line 267
    invoke-static {v1}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$cMHgi74d7w0GcIwOfMT2Vp3u6PQ;

    invoke-direct {v1, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$cMHgi74d7w0GcIwOfMT2Vp3u6PQ;-><init>(Lcom/android/systemui/bubbles/BubbleData;)V

    .line 269
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 270
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$29N_uZXST8y3Cv7BRkVQkHhseh0;

    invoke-direct {v1, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$29N_uZXST8y3Cv7BRkVQkHhseh0;-><init>(Lcom/android/systemui/bubbles/BubbleData;)V

    .line 271
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dismissAll(I)V
    .locals 3

    .line 334
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 337
    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/BubbleData;->setExpandedInternal(Z)V

    const/4 v1, 0x0

    .line 338
    invoke-direct {p0, v1}, Lcom/android/systemui/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/systemui/bubbles/Bubble;)V

    .line 339
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 340
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bubbles/Bubble;

    .line 341
    invoke-virtual {v1}, Lcom/android/systemui/bubbles/Bubble;->setDismissed()V

    .line 342
    iget-object v2, v1, Lcom/android/systemui/bubbles/Bubble;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/bubbles/BubbleData;->maybeSendDeleteIntent(ILcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 343
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    invoke-virtual {v2, v1, p1}, Lcom/android/systemui/bubbles/BubbleData$Update;->bubbleRemoved(Lcom/android/systemui/bubbles/Bubble;I)V

    goto :goto_0

    .line 345
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleData;->dispatchPendingChanges()V

    return-void
.end method

.method getBubbleWithKey(Ljava/lang/String;)Lcom/android/systemui/bubbles/Bubble;
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    const/4 v0, 0x0

    .line 709
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 710
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bubbles/Bubble;

    .line 711
    invoke-virtual {v1}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBubbles()Ljava/util/List;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/bubbles/Bubble;",
            ">;"
        }
    .end annotation

    .line 704
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getVisibleBubbleCount()I
    .locals 2

    .line 602
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 607
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/bubbles/Bubble;

    .line 608
    iget-object v0, v0, Lcom/android/systemui/bubbles/Bubble;->iconView:Lcom/android/systemui/bubbles/BubbleView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public hasBubbleWithKey(Ljava/lang/String;)Z
    .locals 0

    .line 156
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->getBubbleWithKey(Ljava/lang/String;)Lcom/android/systemui/bubbles/Bubble;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasBubbles()Z
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isExpanded()Z
    .locals 0

    .line 152
    iget-boolean p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mExpanded:Z

    return p0
.end method

.method public synthetic lambda$trim$0$BubbleData(Lcom/android/systemui/bubbles/Bubble;)Z
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-virtual {p1, p0}, Lcom/android/systemui/bubbles/Bubble;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public synthetic lambda$trim$1$BubbleData(Lcom/android/systemui/bubbles/Bubble;)V
    .locals 1

    .line 271
    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleData;->doRemove(Ljava/lang/String;I)V

    return-void
.end method

.method public notificationEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V
    .locals 0

    .line 210
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/bubbles/BubbleData;->doRemove(Ljava/lang/String;I)V

    .line 211
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleData;->dispatchPendingChanges()V

    return-void
.end method

.method public notificationEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 3

    .line 184
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/BubbleData;->getBubbleWithKey(Ljava/lang/String;)Lcom/android/systemui/bubbles/Bubble;

    move-result-object v0

    if-nez v0, :cond_0

    .line 187
    new-instance v0, Lcom/android/systemui/bubbles/Bubble;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$zesn1_xjTP9VJj3ngsaJURNhUiY;

    invoke-direct {v2, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$zesn1_xjTP9VJj3ngsaJURNhUiY;-><init>(Lcom/android/systemui/bubbles/BubbleData;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/android/systemui/bubbles/Bubble;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/bubbles/BubbleExpandedView$OnBubbleBlockedListener;)V

    .line 188
    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/BubbleData;->doAdd(Lcom/android/systemui/bubbles/Bubble;)V

    .line 189
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleData;->trim()V

    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/systemui/bubbles/Bubble;->setEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 193
    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/BubbleData;->doUpdate(Lcom/android/systemui/bubbles/Bubble;)V

    .line 195
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->shouldAutoExpand(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 196
    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/systemui/bubbles/Bubble;)V

    .line 197
    iget-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mExpanded:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 198
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->setExpandedInternal(Z)V

    goto :goto_1

    .line 200
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    if-nez p1, :cond_2

    .line 201
    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/systemui/bubbles/Bubble;)V

    .line 203
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleData;->dispatchPendingChanges()V

    return-void
.end method

.method public notificationRankingUpdated(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 4

    .line 222
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 226
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getOrderedKeys()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 227
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 228
    aget-object v2, v0, v1

    .line 229
    invoke-virtual {p0, v2}, Lcom/android/systemui/bubbles/BubbleData;->hasBubbleWithKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 230
    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p1, v2, v3}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 231
    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v3}, Landroid/service/notification/NotificationListenerService$Ranking;->canBubble()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x4

    .line 232
    invoke-direct {p0, v2, v3}, Lcom/android/systemui/bubbles/BubbleData;->doRemove(Ljava/lang/String;I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 236
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleData;->dispatchPendingChanges()V

    return-void
.end method

.method public removeBubble(Ljava/lang/String;)V
    .locals 4

    .line 737
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 740
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bubbles/Bubble;

    if-eqz v1, :cond_0

    .line 741
    iget-object v2, v1, Lcom/android/systemui/bubbles/Bubble;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/systemui/bubbles/BubbleUtils;->isQuickReply(Landroid/app/Notification;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/systemui/bubbles/Bubble;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 742
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 743
    iget-object v2, v1, Lcom/android/systemui/bubbles/Bubble;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    const/16 v3, 0x8

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/bubbles/BubbleData;->doRemove(Ljava/lang/String;I)V

    .line 744
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remove bubble since activity is on top: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/systemui/bubbles/Bubble;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BubbleData"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 749
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/bubbles/BubbleData$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/bubbles/BubbleData$1;-><init>(Lcom/android/systemui/bubbles/BubbleData;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public setExpanded(Z)V
    .locals 0

    .line 168
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->setExpandedInternal(Z)V

    .line 169
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleData;->dispatchPendingChanges()V

    return-void
.end method

.method public setListener(Lcom/android/systemui/bubbles/BubbleData$Listener;)V
    .locals 0

    .line 724
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mListener:Lcom/android/systemui/bubbles/BubbleData$Listener;

    return-void
.end method

.method public setSelectedBubble(Lcom/android/systemui/bubbles/Bubble;)V
    .locals 0

    .line 176
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/systemui/bubbles/Bubble;)V

    .line 177
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleData;->dispatchPendingChanges()V

    return-void
.end method

.method setTimeSource(Lcom/android/systemui/bubbles/BubbleData$TimeSource;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 720
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mTimeSource:Lcom/android/systemui/bubbles/BubbleData$TimeSource;

    return-void
.end method

.method shouldAutoExpand(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 1

    .line 728
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 729
    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getAutoExpandBubble()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 730
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/bubbles/BubbleController;->isForegroundApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public updatePortraitSupportSettings()V
    .locals 3

    .line 616
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 619
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleData;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 620
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    iget-boolean v1, v0, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleData;->repackAll()Z

    move-result v2

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    .line 621
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/bubbles/Bubble;

    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/systemui/bubbles/Bubble;)V

    .line 622
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleData;->dispatchPendingChanges()V

    :cond_1
    return-void
.end method
