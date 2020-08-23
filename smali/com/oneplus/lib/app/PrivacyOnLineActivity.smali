.class public Lcom/oneplus/lib/app/PrivacyOnLineActivity;
.super Landroid/app/Activity;
.source "PrivacyOnLineActivity.java"


# instance fields
.field mLoadingView:Landroid/widget/RelativeLayout;

.field mUrl:Ljava/lang/String;

.field mWebView:Landroid/webkit/WebView;

.field mWebViewContainer:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initViews()V
    .locals 2

    .line 51
    sget v0, Lcom/oneplus/commonctrl/R$id;->web_view_container:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/oneplus/lib/app/PrivacyOnLineActivity;->mWebViewContainer:Landroid/widget/FrameLayout;

    .line 52
    sget v0, Lcom/oneplus/commonctrl/R$id;->loading_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oneplus/lib/app/PrivacyOnLineActivity;->mLoadingView:Landroid/widget/RelativeLayout;

    .line 53
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/PrivacyOnLineActivity;->mWebView:Landroid/webkit/WebView;

    .line 55
    iget-object v0, p0, Lcom/oneplus/lib/app/PrivacyOnLineActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Landroid/webkit/WebViewClient;

    invoke-direct {v1}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 56
    iget-object v0, p0, Lcom/oneplus/lib/app/PrivacyOnLineActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/oneplus/lib/app/PrivacyOnLineActivity$1;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/app/PrivacyOnLineActivity$1;-><init>(Lcom/oneplus/lib/app/PrivacyOnLineActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 70
    iget-object v0, p0, Lcom/oneplus/lib/app/PrivacyOnLineActivity;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/lib/app/PrivacyOnLineActivity;->loadUrl(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/oneplus/lib/app/PrivacyOnLineActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 73
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 74
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 75
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 76
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 77
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 79
    iget-object v0, p0, Lcom/oneplus/lib/app/PrivacyOnLineActivity;->mWebViewContainer:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lcom/oneplus/lib/app/PrivacyOnLineActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private loadUrl(Ljava/lang/String;)V
    .locals 1

    .line 83
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 86
    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/app/PrivacyOnLineActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    sget p1, Lcom/oneplus/commonctrl/R$layout;->web_browser_activity_layout:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    sget v0, Lcom/oneplus/commonctrl/R$string;->about_privacy_policy:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 35
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 37
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string/jumbo v0, "url"

    .line 39
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/lib/app/PrivacyOnLineActivity;->mUrl:Ljava/lang/String;

    .line 41
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/lib/app/PrivacyOnLineActivity;->initViews()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 91
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 92
    iget-object v0, p0, Lcom/oneplus/lib/app/PrivacyOnLineActivity;->mWebViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 93
    iget-object v0, p0, Lcom/oneplus/lib/app/PrivacyOnLineActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    .line 95
    iget-object v0, p0, Lcom/oneplus/lib/app/PrivacyOnLineActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 96
    iget-object v0, p0, Lcom/oneplus/lib/app/PrivacyOnLineActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 97
    iget-object p0, p0, Lcom/oneplus/lib/app/PrivacyOnLineActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->destroy()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 103
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 110
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method protected onResume()V
    .locals 0

    .line 46
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 47
    invoke-static {p0}, Lcom/oneplus/lib/util/NavigationBarUtils;->setNavBarColor(Landroid/app/Activity;)V

    return-void
.end method
