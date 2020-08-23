.class public Lcom/oneplus/lib/widget/preference/OPDividerSwitchPreference;
.super Lcom/oneplus/lib/preference/SwitchPreference;
.source "OPDividerSwitchPreference.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 28
    sget v0, Lcom/oneplus/commonctrl/R$attr;->op_dividerSwitchPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/preference/OPDividerSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 32
    sget v0, Lcom/oneplus/commonctrl/R$style;->OnePlus_DeviceDefault_Preference_Material_DividerSwitchPreference:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/preference/OPDividerSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 36
    invoke-static {p1, p3}, Lcom/oneplus/lib/widget/util/utils;->resolveDefStyleAttr(Landroid/content/Context;I)I

    move-result p3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 37
    iput-object p1, p0, Lcom/oneplus/lib/widget/preference/OPDividerSwitchPreference;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4

    .line 42
    invoke-super {p0, p1}, Lcom/oneplus/lib/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    .line 43
    sget v0, Lcom/oneplus/commonctrl/R$id;->left_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 44
    sget v1, Lcom/oneplus/commonctrl/R$id;->right_layout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 45
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->isSummaryEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    if-eqz v0, :cond_2

    .line 48
    sget v1, Lcom/oneplus/commonctrl/R$id;->top_space:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_0

    .line 52
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 p1, -0x2

    .line 54
    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 55
    iget-object p0, p0, Lcom/oneplus/lib/widget/preference/OPDividerSwitchPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/oneplus/commonctrl/R$dimen;->op_preference_divider_switch_bottom_padding:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    invoke-virtual {v0, v3, v3, v3, p0}, Landroid/view/View;->setPadding(IIII)V

    .line 56
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 62
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p0, :cond_2

    const/16 p1, 0x10

    .line 64
    iput p1, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 65
    iput v3, p0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 66
    invoke-virtual {v1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onClick()V
    .locals 0

    return-void
.end method
