.class Lcom/oneplus/lib/widget/TextInputTimePickerView$1;
.super Ljava/lang/Object;
.source "TextInputTimePickerView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/TextInputTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/TextInputTimePickerView;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/TextInputTimePickerView;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView$1;->this$0:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    if-eqz p2, :cond_0

    .line 114
    iget-object p2, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView$1;->this$0:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-static {p2}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->access$000(Lcom/oneplus/lib/widget/TextInputTimePickerView;)Landroid/widget/EditText;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setActivated(Z)V

    .line 115
    iget-object p2, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView$1;->this$0:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-static {p2}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->access$100(Lcom/oneplus/lib/widget/TextInputTimePickerView;)Landroid/widget/EditText;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setActivated(Z)V

    .line 116
    iget-object p2, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView$1;->this$0:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    sget v2, Lcom/oneplus/commonctrl/R$style;->OPTextAppearance_Material_TimePicker_InputField:I

    invoke-static {p2}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->access$000(Lcom/oneplus/lib/widget/TextInputTimePickerView;)Landroid/widget/EditText;

    move-result-object v3

    invoke-static {p2, v2, v3}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->access$200(Lcom/oneplus/lib/widget/TextInputTimePickerView;ILandroid/widget/TextView;)V

    .line 117
    iget-object p2, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView$1;->this$0:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    sget v2, Lcom/oneplus/commonctrl/R$style;->OPTextAppearance_Material_TimePicker_InputFieldUnActive:I

    invoke-static {p2}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->access$100(Lcom/oneplus/lib/widget/TextInputTimePickerView;)Landroid/widget/EditText;

    move-result-object v3

    invoke-static {p2, v2, v3}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->access$200(Lcom/oneplus/lib/widget/TextInputTimePickerView;ILandroid/widget/TextView;)V

    .line 118
    iget-object p2, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView$1;->this$0:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-static {p2}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->access$000(Lcom/oneplus/lib/widget/TextInputTimePickerView;)Landroid/widget/EditText;

    move-result-object p2

    iget-object v2, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView$1;->this$0:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-static {v2}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->access$300(Lcom/oneplus/lib/widget/TextInputTimePickerView;)[I

    move-result-object v2

    aget v1, v2, v1

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 119
    iget-object p2, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView$1;->this$0:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-static {p2}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->access$100(Lcom/oneplus/lib/widget/TextInputTimePickerView;)Landroid/widget/EditText;

    move-result-object p2

    iget-object v1, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView$1;->this$0:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-static {v1}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->access$300(Lcom/oneplus/lib/widget/TextInputTimePickerView;)[I

    move-result-object v1

    aget v1, v1, v0

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 120
    iget-object p2, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView$1;->this$0:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-static {p2, v0}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->access$400(Lcom/oneplus/lib/widget/TextInputTimePickerView;Z)V

    .line 122
    iget-object p0, p0, Lcom/oneplus/lib/widget/TextInputTimePickerView$1;->this$0:Lcom/oneplus/lib/widget/TextInputTimePickerView;

    invoke-static {p0, p1}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->access$500(Lcom/oneplus/lib/widget/TextInputTimePickerView;Landroid/view/View;)V

    :cond_0
    return-void
.end method
