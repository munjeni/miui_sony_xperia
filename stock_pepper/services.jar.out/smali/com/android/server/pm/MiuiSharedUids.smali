.class public Lcom/android/server/pm/MiuiSharedUids;
.super Ljava/lang/Object;
.source "MiuiSharedUids.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Lcom/android/server/pm/Settings;Z)V
    .locals 4
    .parameter "settings"
    .parameter "multipleUids"

    .prologue
    const/16 v1, 0x2710

    const/4 v3, 0x1

    .line 10
    const-string v2, "android.uid.backup"

    if-eqz p1, :cond_1

    const/16 v0, 0x2648

    :goto_0
    invoke-virtual {p0, v2, v0, v3}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;II)Lcom/android/server/pm/SharedUserSetting;

    .line 12
    const-string v2, "android.uid.theme"

    if-eqz p1, :cond_2

    const/16 v0, 0x2649

    :goto_1
    invoke-virtual {p0, v2, v0, v3}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;II)Lcom/android/server/pm/SharedUserSetting;

    .line 14
    const-string v0, "android.uid.updater"

    if-eqz p1, :cond_0

    const/16 v1, 0x264a

    :cond_0
    invoke-virtual {p0, v0, v1, v3}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;II)Lcom/android/server/pm/SharedUserSetting;

    .line 16
    return-void

    :cond_1
    move v0, v1

    .line 10
    goto :goto_0

    :cond_2
    move v0, v1

    .line 12
    goto :goto_1
.end method
