.class Lcom/oneplus/lib/app/OPAlertController$AlertParams$4;
.super Ljava/lang/Object;
.source "OPAlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/app/OPAlertController$AlertParams;->createListView(Lcom/oneplus/lib/app/OPAlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

.field final synthetic val$dialog:Lcom/oneplus/lib/app/OPAlertController;

.field final synthetic val$listView:Lcom/oneplus/lib/app/OPAlertController$RecycleListView;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/app/OPAlertController$AlertParams;Lcom/oneplus/lib/app/OPAlertController$RecycleListView;Lcom/oneplus/lib/app/OPAlertController;)V
    .locals 0

    .line 1244
    iput-object p1, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$4;->this$0:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p2, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$4;->val$listView:Lcom/oneplus/lib/app/OPAlertController$RecycleListView;

    iput-object p3, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$4;->val$dialog:Lcom/oneplus/lib/app/OPAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1247
    iget-object p1, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$4;->this$0:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object p1, p1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCheckedItems:[Z

    if-eqz p1, :cond_0

    .line 1248
    iget-object p2, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$4;->val$listView:Lcom/oneplus/lib/app/OPAlertController$RecycleListView;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result p2

    aput-boolean p2, p1, p3

    .line 1250
    :cond_0
    iget-object p1, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$4;->this$0:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object p1, p1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object p2, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$4;->val$dialog:Lcom/oneplus/lib/app/OPAlertController;

    .line 1251
    invoke-static {p2}, Lcom/oneplus/lib/app/OPAlertController;->access$600(Lcom/oneplus/lib/app/OPAlertController;)Landroid/content/DialogInterface;

    move-result-object p2

    iget-object p0, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$4;->val$listView:Lcom/oneplus/lib/app/OPAlertController$RecycleListView;

    invoke-virtual {p0, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result p0

    .line 1250
    invoke-interface {p1, p2, p3, p0}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    return-void
.end method
