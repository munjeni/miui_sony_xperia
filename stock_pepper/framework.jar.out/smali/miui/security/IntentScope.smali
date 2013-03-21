.class public Lmiui/security/IntentScope;
.super Ljava/lang/Object;
.source "IntentScope.java"


# static fields
.field public static final PACKAGE_NAME_PHONE:Ljava/lang/String; = "com.android.phone"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static processIntentScope(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0
    .parameter "context"
    .parameter "intent"
    .parameter "packageName"

    .prologue
    .line 20
    if-eqz p1, :cond_0

    .line 21
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    :cond_0
    return-object p1
.end method
