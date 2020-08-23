.class Lcom/oneplus/lib/app/OPAlertController$AlertParams$1;
.super Landroid/widget/ArrayAdapter;
.source "OPAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/app/OPAlertController$AlertParams;->createListView(Lcom/oneplus/lib/app/OPAlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

.field final synthetic val$listView:Lcom/oneplus/lib/app/OPAlertController$RecycleListView;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/app/OPAlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/oneplus/lib/app/OPAlertController$RecycleListView;)V
    .locals 0

    .line 1165
    iput-object p1, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$1;->this$0:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p6, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$1;->val$listView:Lcom/oneplus/lib/app/OPAlertController$RecycleListView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1168
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1169
    iget-object p3, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$1;->this$0:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object p3, p3, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCheckedItems:[Z

    if-eqz p3, :cond_0

    .line 1170
    aget-boolean p3, p3, p1

    if-eqz p3, :cond_0

    .line 1172
    iget-object p0, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$1;->val$listView:Lcom/oneplus/lib/app/OPAlertController$RecycleListView;

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_0
    return-object p2
.end method
