.class Lcom/android/systemui/bubbles/BubbleData$1;
.super Ljava/lang/Object;
.source "BubbleData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/bubbles/BubbleData;->removeBubble(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bubbles/BubbleData;


# direct methods
.method constructor <init>(Lcom/android/systemui/bubbles/BubbleData;)V
    .locals 0

    .line 749
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleData$1;->this$0:Lcom/android/systemui/bubbles/BubbleData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData$1;->this$0:Lcom/android/systemui/bubbles/BubbleData;

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleData;->access$100(Lcom/android/systemui/bubbles/BubbleData;)V

    return-void
.end method
