.class Lcom/oneplus/lib/app/OPAlertController$AlertParams$2;
.super Landroid/widget/CursorAdapter;
.source "OPAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/app/OPAlertController$AlertParams;->createListView(Lcom/oneplus/lib/app/OPAlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mIsCheckedIndex:I

.field private final mLabelIndex:I

.field final synthetic this$0:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

.field final synthetic val$dialog:Lcom/oneplus/lib/app/OPAlertController;

.field final synthetic val$listView:Lcom/oneplus/lib/app/OPAlertController$RecycleListView;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/app/OPAlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLcom/oneplus/lib/app/OPAlertController$RecycleListView;Lcom/oneplus/lib/app/OPAlertController;)V
    .locals 0

    .line 1179
    iput-object p1, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$2;->this$0:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p5, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$2;->val$listView:Lcom/oneplus/lib/app/OPAlertController$RecycleListView;

    iput-object p6, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$2;->val$dialog:Lcom/oneplus/lib/app/OPAlertController;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 1184
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object p1

    .line 1185
    iget-object p2, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$2;->this$0:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object p2, p2, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$2;->mLabelIndex:I

    .line 1186
    iget-object p2, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$2;->this$0:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object p2, p2, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$2;->mIsCheckedIndex:I

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0

    const p2, 0x1020014

    .line 1191
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    .line 1192
    iget p2, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$2;->mLabelIndex:I

    invoke-interface {p3, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1193
    iget-object p1, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$2;->val$listView:Lcom/oneplus/lib/app/OPAlertController$RecycleListView;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result p2

    iget p0, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$2;->mIsCheckedIndex:I

    .line 1194
    invoke-interface {p3, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    const/4 p3, 0x1

    if-ne p0, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 1193
    :goto_0
    invoke-virtual {p1, p2, p3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1199
    iget-object p1, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$2;->this$0:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object p1, p1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    iget-object p0, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams$2;->val$dialog:Lcom/oneplus/lib/app/OPAlertController;

    invoke-static {p0}, Lcom/oneplus/lib/app/OPAlertController;->access$1000(Lcom/oneplus/lib/app/OPAlertController;)I

    move-result p0

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
