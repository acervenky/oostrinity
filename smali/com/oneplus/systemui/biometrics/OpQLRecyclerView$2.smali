.class Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$2;
.super Ljava/lang/Object;
.source "OpQLRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$2;->this$0:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$2;->this$0:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->access$200(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$2;->this$0:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->access$300(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;)I

    move-result v0

    .line 192
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$2;->this$0:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    invoke-static {v1}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->access$400(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;)I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_1

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 194
    :cond_1
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$2;->this$0:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    invoke-static {v1}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->access$400(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;)I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$2;->this$0:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    iget-object v1, v1, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mAppMap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 196
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$2;->this$0:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    iget-object v1, v1, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mAppMap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 197
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$2;->this$0:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->mAppMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 200
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$2;->this$0:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    invoke-static {v1}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->access$300(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;)I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 201
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$2;->this$0:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    invoke-static {v1, v0}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->access$302(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;I)I

    .line 202
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$2;->this$0:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->access$500(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;)V

    .line 203
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$2;->this$0:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->access$600(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method
