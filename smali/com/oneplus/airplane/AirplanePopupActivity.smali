.class public Lcom/oneplus/airplane/AirplanePopupActivity;
.super Landroid/app/Activity;
.source "AirplanePopupActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getDialog()V
    .locals 3

    .line 23
    new-instance v0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/systemui/R$string;->status_bar_airplane:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    sget v1, Lcom/android/systemui/R$string;->aiplane_warning_msg:I

    .line 24
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    const v1, 0x1010355

    .line 25
    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setIconAttribute(I)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    sget v1, Lcom/android/systemui/R$string;->ok:I

    new-instance v2, Lcom/oneplus/airplane/AirplanePopupActivity$2;

    invoke-direct {v2, p0}, Lcom/oneplus/airplane/AirplanePopupActivity$2;-><init>(Lcom/oneplus/airplane/AirplanePopupActivity;)V

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    new-instance v1, Lcom/oneplus/airplane/AirplanePopupActivity$1;

    invoke-direct {v1, p0}, Lcom/oneplus/airplane/AirplanePopupActivity$1;-><init>(Lcom/oneplus/airplane/AirplanePopupActivity;)V

    .line 32
    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    .line 38
    invoke-virtual {v0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->show()Lcom/oneplus/lib/app/OPAlertDialog;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 17
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 18
    invoke-direct {p0}, Lcom/oneplus/airplane/AirplanePopupActivity;->getDialog()V

    return-void
.end method
