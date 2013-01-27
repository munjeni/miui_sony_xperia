.class public final Lmiui/provider/ExtraContacts$Groups;
.super Ljava/lang/Object;
.source "ExtraContacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/ExtraContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Groups"
.end annotation


# static fields
.field public static final CUSTOM_RINGTONE:Ljava/lang/String; = "custom_ringtone"

.field public static final GROUP_ORDER:Ljava/lang/String; = "group_order"

.field public static final SYSTEM_ID_CONTACTS:Ljava/lang/String; = "Contacts"

.field public static final SYSTEM_ID_COWORKERS:Ljava/lang/String; = "Coworkers"

.field public static final SYSTEM_ID_FAMILY:Ljava/lang/String; = "Family"

.field public static final SYSTEM_ID_FRIENDS:Ljava/lang/String; = "Friends"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static translateGroupName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "systemId"
    .parameter "title"

    .prologue
    .line 550
    const/4 v0, 0x0

    .line 551
    .local v0, result:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 552
    const-string v1, "Contacts"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 553
    const v1, 0x60c01cb

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 567
    :goto_0
    if-nez v0, :cond_0

    .line 568
    const v1, 0x60c003c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 571
    :cond_0
    return-object v0

    .line 554
    :cond_1
    const-string v1, "Friends"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 555
    const v1, 0x60c01cc

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 556
    :cond_2
    const-string v1, "Family"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 557
    const v1, 0x60c01cd

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 558
    :cond_3
    const-string v1, "Coworkers"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 559
    const v1, 0x60c01ce

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 561
    :cond_4
    move-object v0, p1

    goto :goto_0

    .line 564
    :cond_5
    move-object v0, p2

    goto :goto_0
.end method
