.class public Lcom/miui/internal/app/MiuiLicenseActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "MiuiLicenseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static CACHE_URL_MIUI_COPYRIGHT:Ljava/lang/String;

.field public static CACHE_URL_MIUI_PRIVACY_POLICY:Ljava/lang/String;

.field public static CACHE_URL_MIUI_USER_AGREEMENT:Ljava/lang/String;

.field public static CACHE_URL_MIUI_USER_MANUAL:Ljava/lang/String;

.field public static EXTRA_MIUI_DOC_URL:Ljava/lang/String;

.field public static URL_MIUI_COPYRIGHT:Ljava/lang/String;

.field public static URL_MIUI_PRIVACY_POLICY:Ljava/lang/String;

.field public static URL_MIUI_USER_AGREEMENT:Ljava/lang/String;

.field public static URL_MIUI_USER_MANUAL:Ljava/lang/String;


# instance fields
.field private mCachePath:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "http://www.miui.com/res/doc/copyright.html"

    sput-object v0, Lcom/miui/internal/app/MiuiLicenseActivity;->URL_MIUI_COPYRIGHT:Ljava/lang/String;

    .line 28
    const-string v0, "http://product.xiaomi.com/policy/privacy.html"

    sput-object v0, Lcom/miui/internal/app/MiuiLicenseActivity;->URL_MIUI_PRIVACY_POLICY:Ljava/lang/String;

    .line 29
    const-string v0, "http://product.xiaomi.com/policy/eula.html"

    sput-object v0, Lcom/miui/internal/app/MiuiLicenseActivity;->URL_MIUI_USER_AGREEMENT:Ljava/lang/String;

    .line 30
    const-string v0, "http://p.www.xiaomi.com/manual/index.html?lang=%s&miphone=%s"

    sput-object v0, Lcom/miui/internal/app/MiuiLicenseActivity;->URL_MIUI_USER_MANUAL:Ljava/lang/String;

    .line 32
    const-string v0, "file:///system/etc/license/copyright.html"

    sput-object v0, Lcom/miui/internal/app/MiuiLicenseActivity;->CACHE_URL_MIUI_COPYRIGHT:Ljava/lang/String;

    .line 33
    const-string v0, "file:///system/etc/license/privacy.html"

    sput-object v0, Lcom/miui/internal/app/MiuiLicenseActivity;->CACHE_URL_MIUI_PRIVACY_POLICY:Ljava/lang/String;

    .line 34
    const-string v0, "file:///system/etc/license/eula.html"

    sput-object v0, Lcom/miui/internal/app/MiuiLicenseActivity;->CACHE_URL_MIUI_USER_AGREEMENT:Ljava/lang/String;

    .line 35
    const-string v0, "file:///system/etc/user_manual_%s/index.html"

    sput-object v0, Lcom/miui/internal/app/MiuiLicenseActivity;->CACHE_URL_MIUI_USER_MANUAL:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, "url"

    sput-object v0, Lcom/miui/internal/app/MiuiLicenseActivity;->EXTRA_MIUI_DOC_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/app/MiuiLicenseActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/internal/app/MiuiLicenseActivity;)Lcom/android/internal/app/AlertController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mAlert:Lcom/android/internal/app/AlertController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/internal/app/MiuiLicenseActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mCachePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/internal/app/MiuiLicenseActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/miui/internal/app/MiuiLicenseActivity;->showErrorAndFinish(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/internal/app/MiuiLicenseActivity;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method private showErrorAndFinish(Ljava/lang/String;)V
    .locals 5
    .parameter "url"

    .prologue
    const/4 v4, 0x1

    .line 115
    iget-object v0, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mWebView:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 116
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x60c002f

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/miui/internal/app/MiuiLicenseActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 123
    return-void
.end method


# virtual methods
.method public isConnectivityActive()Z
    .locals 2

    .prologue
    .line 110
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/miui/internal/app/MiuiLicenseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 111
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 132
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/miui/internal/app/MiuiLicenseActivity;->finish()V

    .line 140
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/miui/internal/app/MiuiLicenseActivity;->finish()V

    .line 136
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 46
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/miui/internal/app/MiuiLicenseActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x106000d

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 48
    invoke-virtual {p0}, Lcom/miui/internal/app/MiuiLicenseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    sget-object v5, Lcom/miui/internal/app/MiuiLicenseActivity;->EXTRA_MIUI_DOC_URL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mUrl:Ljava/lang/String;

    .line 49
    sget-object v4, Lcom/miui/internal/app/MiuiLicenseActivity;->URL_MIUI_COPYRIGHT:Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 50
    const v4, 0x60c0030

    invoke-virtual {p0, v4}, Lcom/miui/internal/app/MiuiLicenseActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mTitle:Ljava/lang/String;

    .line 51
    sget-object v4, Lcom/miui/internal/app/MiuiLicenseActivity;->CACHE_URL_MIUI_COPYRIGHT:Ljava/lang/String;

    iput-object v4, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mCachePath:Ljava/lang/String;

    .line 72
    :cond_0
    :goto_0
    new-instance v4, Landroid/webkit/WebView;

    invoke-direct {v4, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mWebView:Landroid/webkit/WebView;

    .line 75
    iget-object v4, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 76
    iget-object v4, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v5, Lcom/miui/internal/app/MiuiLicenseActivity$1;

    invoke-direct {v5, p0}, Lcom/miui/internal/app/MiuiLicenseActivity$1;-><init>(Lcom/miui/internal/app/MiuiLicenseActivity;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 93
    invoke-virtual {p0}, Lcom/miui/internal/app/MiuiLicenseActivity;->isConnectivityActive()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 94
    iget-object v4, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v5, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 102
    :goto_1
    iget-object v3, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 103
    .local v3, p:Lcom/android/internal/app/AlertController$AlertParams;
    iget-object v4, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mTitle:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 104
    iget-object v4, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mWebView:Landroid/webkit/WebView;

    iput-object v4, v3, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 105
    iput-boolean v7, v3, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    .line 106
    invoke-virtual {p0}, Lcom/miui/internal/app/MiuiLicenseActivity;->setupAlert()V

    .line 107
    return-void

    .line 52
    .end local v3           #p:Lcom/android/internal/app/AlertController$AlertParams;
    :cond_1
    sget-object v4, Lcom/miui/internal/app/MiuiLicenseActivity;->URL_MIUI_PRIVACY_POLICY:Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 53
    const v4, 0x60c0032

    invoke-virtual {p0, v4}, Lcom/miui/internal/app/MiuiLicenseActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mTitle:Ljava/lang/String;

    .line 54
    sget-object v4, Lcom/miui/internal/app/MiuiLicenseActivity;->CACHE_URL_MIUI_PRIVACY_POLICY:Ljava/lang/String;

    iput-object v4, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mCachePath:Ljava/lang/String;

    goto :goto_0

    .line 55
    :cond_2
    sget-object v4, Lcom/miui/internal/app/MiuiLicenseActivity;->URL_MIUI_USER_AGREEMENT:Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 56
    const v4, 0x60c0031

    invoke-virtual {p0, v4}, Lcom/miui/internal/app/MiuiLicenseActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mTitle:Ljava/lang/String;

    .line 57
    sget-object v4, Lcom/miui/internal/app/MiuiLicenseActivity;->CACHE_URL_MIUI_USER_AGREEMENT:Ljava/lang/String;

    iput-object v4, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mCachePath:Ljava/lang/String;

    goto :goto_0

    .line 58
    :cond_3
    sget-object v4, Lcom/miui/internal/app/MiuiLicenseActivity;->URL_MIUI_USER_MANUAL:Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 59
    const v4, 0x60c0200

    invoke-virtual {p0, v4}, Lcom/miui/internal/app/MiuiLicenseActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mTitle:Ljava/lang/String;

    .line 60
    sget-object v4, Lcom/miui/internal/app/MiuiLicenseActivity;->CACHE_URL_MIUI_USER_MANUAL:Ljava/lang/String;

    new-array v5, v7, [Ljava/lang/Object;

    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mCachePath:Ljava/lang/String;

    .line 62
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 63
    .local v0, am:Landroid/app/IActivityManager;
    const-string/jumbo v2, "zh_CN"

    .line 65
    .local v2, language:Ljava/lang/String;
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 66
    .local v1, config:Landroid/content/res/Configuration;
    iget-object v4, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 70
    .end local v1           #config:Landroid/content/res/Configuration;
    :goto_2
    iget-object v4, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mUrl:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v8

    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 96
    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v2           #language:Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mCachePath:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 97
    iget-object v4, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/miui/internal/app/MiuiLicenseActivity;->showErrorAndFinish(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 99
    :cond_5
    iget-object v4, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v5, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mCachePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 67
    .restart local v0       #am:Landroid/app/IActivityManager;
    .restart local v2       #language:Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_2
.end method
