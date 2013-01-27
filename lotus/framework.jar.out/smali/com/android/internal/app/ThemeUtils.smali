.class public Lcom/android/internal/app/ThemeUtils;
.super Ljava/lang/Object;
.source "ThemeUtils.java"


# static fields
.field private static final ACTION_TMOBILE_THEME_CHANGED:Ljava/lang/String; = "com.tmobile.intent.action.THEME_CHANGED"

.field private static final DATA_TYPE_TMOBILE_STYLE:Ljava/lang/String; = "vnd.tmobile.cursor.item/style"

.field private static final DATA_TYPE_TMOBILE_THEME:Ljava/lang/String; = "vnd.tmobile.cursor.item/theme"

.field private static final TAG:Ljava/lang/String; = "ThemeUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createUiContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 2
    .parameter "context"

    .prologue
    .line 37
    :try_start_0
    const-string v0, "com.android.systemui"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 41
    :goto_0
    return-object v0

    .line 38
    :catch_0
    move-exception v0

    .line 41
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static registerThemeChangeReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 4
    .parameter "context"
    .parameter "receiver"

    .prologue
    .line 45
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.tmobile.intent.action.THEME_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 47
    .local v1, filter:Landroid/content/IntentFilter;
    :try_start_0
    const-string/jumbo v2, "vnd.tmobile.cursor.item/theme"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V

    .line 48
    const-string/jumbo v2, "vnd.tmobile.cursor.item/style"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 54
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v2, "ThemeUtils"

    const-string v3, "Could not add MIME types to filter"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
