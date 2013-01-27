.class public final Landroid/app/Profile;
.super Ljava/lang/Object;
.source "Profile.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Profile$AirplaneMode;,
        Landroid/app/Profile$LockMode;
    }
.end annotation


# static fields
.field private static final CONDITIONAL_TYPE:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/Profile;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Profile"

.field private static final TOGGLE_TYPE:I


# instance fields
.field private connections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/ConnectionSettings;",
            ">;"
        }
    .end annotation
.end field

.field private mAirplaneMode:I

.field private mDefaultGroup:Landroid/app/ProfileGroup;

.field private mDirty:Z

.field private mName:Ljava/lang/String;

.field private mNameResId:I

.field private mProfileType:I

.field private mScreenLockMode:I

.field private mSecondaryUuids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusBarIndicator:Z

.field private mUuid:Ljava/util/UUID;

.field private profileGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Landroid/app/ProfileGroup;",
            ">;"
        }
    .end annotation
.end field

.field private streams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/StreamSettings;",
            ">;"
        }
    .end annotation
.end field

.field private vibrators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/VibratorSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    new-instance v0, Landroid/app/Profile$1;

    invoke-direct {v0}, Landroid/app/Profile$1;-><init>()V

    sput-object v0, Landroid/app/Profile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    .line 57
    iput-boolean v1, p0, Landroid/app/Profile;->mStatusBarIndicator:Z

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/Profile;->streams:Ljava/util/Map;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/Profile;->connections:Ljava/util/Map;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/Profile;->vibrators:Ljava/util/Map;

    .line 75
    iput v1, p0, Landroid/app/Profile;->mScreenLockMode:I

    .line 77
    iput v1, p0, Landroid/app/Profile;->mAirplaneMode:I

    .line 119
    invoke-virtual {p0, p1}, Landroid/app/Profile;->readFromParcel(Landroid/os/Parcel;)V

    .line 120
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/Profile$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/app/Profile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 107
    const/4 v0, -0x1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Landroid/app/Profile;-><init>(Ljava/lang/String;ILjava/util/UUID;)V

    .line 108
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/UUID;)V
    .locals 2
    .parameter "name"
    .parameter "nameResId"
    .parameter "uuid"

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    .line 57
    iput-boolean v1, p0, Landroid/app/Profile;->mStatusBarIndicator:Z

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/Profile;->streams:Ljava/util/Map;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/Profile;->connections:Ljava/util/Map;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/Profile;->vibrators:Ljava/util/Map;

    .line 75
    iput v1, p0, Landroid/app/Profile;->mScreenLockMode:I

    .line 77
    iput v1, p0, Landroid/app/Profile;->mAirplaneMode:I

    .line 111
    iput-object p1, p0, Landroid/app/Profile;->mName:Ljava/lang/String;

    .line 112
    iput p2, p0, Landroid/app/Profile;->mNameResId:I

    .line 113
    iput-object p3, p0, Landroid/app/Profile;->mUuid:Ljava/util/UUID;

    .line 114
    iput v1, p0, Landroid/app/Profile;->mProfileType:I

    .line 115
    iput-boolean v1, p0, Landroid/app/Profile;->mDirty:Z

    .line 116
    return-void
.end method

.method private doSelectAirplaneMode(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 536
    invoke-virtual {p0}, Landroid/app/Profile;->getAirplaneMode()I

    move-result v5

    if-eqz v5, :cond_2

    .line 537
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 538
    .local v0, current:I
    invoke-virtual {p0}, Landroid/app/Profile;->getAirplaneMode()I

    move-result v2

    .line 539
    .local v2, target:I
    if-ne v0, v3, :cond_0

    if-eq v2, v8, :cond_1

    :cond_0
    if-nez v0, :cond_2

    if-ne v2, v3, :cond_2

    .line 540
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    rsub-int/lit8 v7, v0, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 541
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 542
    .local v1, intent:Landroid/content/Intent;
    const-string/jumbo v5, "state"

    if-eq v2, v8, :cond_3

    :goto_0
    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 543
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 546
    .end local v0           #current:I
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #target:I
    :cond_2
    return-void

    .restart local v0       #current:I
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v2       #target:I
    :cond_3
    move v3, v4

    .line 542
    goto :goto_0
.end method

.method public static fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Landroid/app/Profile;
    .locals 15
    .parameter "xpp"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 430
    const/4 v12, 0x0

    const-string/jumbo v13, "nameres"

    invoke-interface {p0, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 431
    .local v10, value:Ljava/lang/String;
    const/4 v7, -0x1

    .line 432
    .local v7, profileNameResId:I
    const/4 v6, 0x0

    .line 434
    .local v6, profileName:Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 435
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const-string/jumbo v13, "string"

    const-string v14, "android"

    invoke-virtual {v12, v10, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 436
    if-lez v7, :cond_0

    .line 437
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 441
    :cond_0
    if-nez v6, :cond_1

    .line 442
    const/4 v12, 0x0

    const-string/jumbo v13, "name"

    invoke-interface {p0, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 445
    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v8

    .line 447
    .local v8, profileUuid:Ljava/util/UUID;
    const/4 v12, 0x0

    :try_start_0
    const-string/jumbo v13, "uuid"

    invoke-interface {p0, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .line 464
    :goto_0
    new-instance v5, Landroid/app/Profile;

    invoke-direct {v5, v6, v7, v8}, Landroid/app/Profile;-><init>(Ljava/lang/String;ILjava/util/UUID;)V

    .line 465
    .local v5, profile:Landroid/app/Profile;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 466
    .local v2, event:I
    :goto_1
    const/4 v12, 0x3

    if-eq v2, v12, :cond_c

    .line 467
    const/4 v12, 0x2

    if-ne v2, v12, :cond_a

    .line 468
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 469
    .local v3, name:Ljava/lang/String;
    const-string/jumbo v12, "uuids"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 470
    invoke-static/range {p0 .. p1}, Landroid/app/Profile;->readSecondaryUuidsFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Ljava/util/List;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/app/Profile;->setSecondaryUuids(Ljava/util/List;)V

    .line 472
    :cond_2
    const-string/jumbo v12, "statusbar"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 473
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "yes"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    invoke-virtual {v5, v12}, Landroid/app/Profile;->setStatusBarIndicator(Z)V

    .line 475
    :cond_3
    const-string/jumbo v12, "profiletype"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 476
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "toggle"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    const/4 v12, 0x0

    :goto_2
    invoke-virtual {v5, v12}, Landroid/app/Profile;->setProfileType(I)V

    .line 478
    :cond_4
    const-string/jumbo v12, "screen-lock-mode"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 479
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v5, v12}, Landroid/app/Profile;->setScreenLockMode(I)V

    .line 481
    :cond_5
    const-string v12, "airplane-mode"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 482
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v5, v12}, Landroid/app/Profile;->setAirplaneMode(I)V

    .line 484
    :cond_6
    const-string/jumbo v12, "profileGroup"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 485
    invoke-static/range {p0 .. p1}, Landroid/app/ProfileGroup;->fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Landroid/app/ProfileGroup;

    move-result-object v4

    .line 486
    .local v4, pg:Landroid/app/ProfileGroup;
    invoke-virtual {v5, v4}, Landroid/app/Profile;->addProfileGroup(Landroid/app/ProfileGroup;)V

    .line 488
    .end local v4           #pg:Landroid/app/ProfileGroup;
    :cond_7
    const-string/jumbo v12, "streamDescriptor"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 489
    invoke-static/range {p0 .. p1}, Landroid/app/StreamSettings;->fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Landroid/app/StreamSettings;

    move-result-object v9

    .line 490
    .local v9, sd:Landroid/app/StreamSettings;
    invoke-virtual {v5, v9}, Landroid/app/Profile;->setStreamSettings(Landroid/app/StreamSettings;)V

    .line 492
    .end local v9           #sd:Landroid/app/StreamSettings;
    :cond_8
    const-string v12, "connectionDescriptor"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 493
    invoke-static/range {p0 .. p1}, Landroid/app/ConnectionSettings;->fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Landroid/app/ConnectionSettings;

    move-result-object v0

    .line 494
    .local v0, cs:Landroid/app/ConnectionSettings;
    iget-object v12, v5, Landroid/app/Profile;->connections:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/app/ConnectionSettings;->getConnectionId()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    .end local v0           #cs:Landroid/app/ConnectionSettings;
    :cond_9
    const-string/jumbo v12, "vibratorDescriptor"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 497
    invoke-static/range {p0 .. p1}, Landroid/app/VibratorSettings;->fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Landroid/app/VibratorSettings;

    move-result-object v11

    .line 498
    .local v11, vs:Landroid/app/VibratorSettings;
    invoke-virtual {v5, v11}, Landroid/app/Profile;->setVibratorSettings(Landroid/app/VibratorSettings;)V

    .line 501
    .end local v3           #name:Ljava/lang/String;
    .end local v11           #vs:Landroid/app/VibratorSettings;
    :cond_a
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto/16 :goto_1

    .line 448
    .end local v2           #event:I
    .end local v5           #profile:Landroid/app/Profile;
    :catch_0
    move-exception v1

    .line 449
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v12, "Profile"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Null Pointer - UUID not found for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".  New UUID generated: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 455
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 456
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v12, "Profile"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "UUID not recognized for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".  New UUID generated: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 476
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .restart local v2       #event:I
    .restart local v3       #name:Ljava/lang/String;
    .restart local v5       #profile:Landroid/app/Profile;
    :cond_b
    const/4 v12, 0x1

    goto/16 :goto_2

    .line 505
    .end local v3           #name:Ljava/lang/String;
    :cond_c
    const/4 v12, 0x0

    iput-boolean v12, v5, Landroid/app/Profile;->mDirty:Z

    .line 507
    return-object v5
.end method

.method private static readSecondaryUuidsFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .parameter "xpp"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 407
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 408
    .local v3, uuids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/UUID;>;"
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 409
    .local v1, event:I
    :goto_0
    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "uuids"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 410
    :cond_0
    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 411
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 412
    .local v2, name:Ljava/lang/String;
    const-string/jumbo v4, "uuid"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 414
    :try_start_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 422
    .end local v2           #name:Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 415
    .restart local v2       #name:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 416
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v4, "Profile"

    const-string v5, "Null Pointer - invalid UUID"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 417
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 418
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v4, "Profile"

    const-string v5, "UUID not recognized"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 424
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .end local v2           #name:Ljava/lang/String;
    :cond_2
    return-object v3
.end method


# virtual methods
.method public addProfileGroup(Landroid/app/ProfileGroup;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 135
    invoke-virtual {p1}, Landroid/app/ProfileGroup;->isDefaultGroup()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Landroid/app/Profile;->mDefaultGroup:Landroid/app/ProfileGroup;

    if-eqz v0, :cond_0

    .line 144
    :goto_0
    return-void

    .line 140
    :cond_0
    iput-object p1, p0, Landroid/app/Profile;->mDefaultGroup:Landroid/app/ProfileGroup;

    .line 142
    :cond_1
    iget-object v0, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/ProfileGroup;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Profile;->mDirty:Z

    goto :goto_0
.end method

.method public addSecondaryUuid(Ljava/util/UUID;)V
    .locals 1
    .parameter "uuid"

    .prologue
    .line 272
    if-eqz p1, :cond_0

    .line 273
    iget-object v0, p0, Landroid/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Profile;->mDirty:Z

    .line 276
    :cond_0
    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 3
    .parameter "obj"

    .prologue
    .line 124
    move-object v0, p1

    check-cast v0, Landroid/app/Profile;

    .line 125
    .local v0, tmp:Landroid/app/Profile;
    iget-object v1, p0, Landroid/app/Profile;->mName:Ljava/lang/String;

    iget-object v2, v0, Landroid/app/Profile;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    .line 126
    const/4 v1, -0x1

    .line 130
    :goto_0
    return v1

    .line 127
    :cond_0
    iget-object v1, p0, Landroid/app/Profile;->mName:Ljava/lang/String;

    iget-object v2, v0, Landroid/app/Profile;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 128
    const/4 v1, 0x1

    goto :goto_0

    .line 130
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public doSelect(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 513
    const-string v5, "audio"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 514
    .local v0, am:Landroid/media/AudioManager;
    iget-object v5, p0, Landroid/app/Profile;->streams:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StreamSettings;

    .line 515
    .local v3, sd:Landroid/app/StreamSettings;
    invoke-virtual {v3}, Landroid/app/StreamSettings;->isOverride()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 516
    invoke-virtual {v3}, Landroid/app/StreamSettings;->getStreamId()I

    move-result v5

    invoke-virtual {v3}, Landroid/app/StreamSettings;->getValue()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 520
    .end local v3           #sd:Landroid/app/StreamSettings;
    :cond_1
    iget-object v5, p0, Landroid/app/Profile;->connections:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ConnectionSettings;

    .line 521
    .local v1, cs:Landroid/app/ConnectionSettings;
    invoke-virtual {v1}, Landroid/app/ConnectionSettings;->isOverride()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 522
    invoke-virtual {v1, p1}, Landroid/app/ConnectionSettings;->processOverride(Landroid/content/Context;)V

    goto :goto_1

    .line 526
    .end local v1           #cs:Landroid/app/ConnectionSettings;
    :cond_3
    iget-object v5, p0, Landroid/app/Profile;->vibrators:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/VibratorSettings;

    .line 527
    .local v4, vs:Landroid/app/VibratorSettings;
    invoke-virtual {v4}, Landroid/app/VibratorSettings;->isOverride()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 528
    invoke-virtual {v4, p1}, Landroid/app/VibratorSettings;->processOverride(Landroid/content/Context;)V

    goto :goto_2

    .line 532
    .end local v4           #vs:Landroid/app/VibratorSettings;
    :cond_5
    invoke-direct {p0, p1}, Landroid/app/Profile;->doSelectAirplaneMode(Landroid/content/Context;)V

    .line 533
    return-void
.end method

.method public getAirplaneMode()I
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Landroid/app/Profile;->mAirplaneMode:I

    return v0
.end method

.method public getConnectionSettings()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/app/ConnectionSettings;",
            ">;"
        }
    .end annotation

    .prologue
    .line 592
    iget-object v0, p0, Landroid/app/Profile;->connections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultGroup()Landroid/app/ProfileGroup;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Landroid/app/Profile;->mDefaultGroup:Landroid/app/ProfileGroup;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Landroid/app/Profile;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileGroup(Ljava/util/UUID;)Landroid/app/ProfileGroup;
    .locals 1
    .parameter "uuid"

    .prologue
    .line 160
    iget-object v0, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProfileGroup;

    return-object v0
.end method

.method public getProfileGroups()[Landroid/app/ProfileGroup;
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Landroid/app/ProfileGroup;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/ProfileGroup;

    return-object v0
.end method

.method public getProfileType()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Landroid/app/Profile;->mProfileType:I

    return v0
.end method

.method public getScreenLockMode()I
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Landroid/app/Profile;->mScreenLockMode:I

    return v0
.end method

.method public getSecondaryUuids()[Ljava/util/UUID;
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Landroid/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/UUID;

    return-object v0
.end method

.method public getSettingsForConnection(I)Landroid/app/ConnectionSettings;
    .locals 2
    .parameter "connectionId"

    .prologue
    .line 582
    iget-object v0, p0, Landroid/app/Profile;->connections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ConnectionSettings;

    return-object v0
.end method

.method public getSettingsForStream(I)Landroid/app/StreamSettings;
    .locals 2
    .parameter "streamId"

    .prologue
    .line 550
    iget-object v0, p0, Landroid/app/Profile;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StreamSettings;

    return-object v0
.end method

.method public getSettingsForVibrator(I)Landroid/app/VibratorSettings;
    .locals 2
    .parameter "vibratorId"

    .prologue
    .line 566
    iget-object v0, p0, Landroid/app/Profile;->vibrators:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/VibratorSettings;

    return-object v0
.end method

.method public getStatusBarIndicator()Z
    .locals 1

    .prologue
    .line 279
    iget-boolean v0, p0, Landroid/app/Profile;->mStatusBarIndicator:Z

    return v0
.end method

.method public getStreamSettings()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/app/StreamSettings;",
            ">;"
        }
    .end annotation

    .prologue
    .line 561
    iget-object v0, p0, Landroid/app/Profile;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Landroid/app/Profile;->mUuid:Ljava/util/UUID;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Profile;->mUuid:Ljava/util/UUID;

    .line 256
    :cond_0
    iget-object v0, p0, Landroid/app/Profile;->mUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public getVibratorSettings()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/app/VibratorSettings;",
            ">;"
        }
    .end annotation

    .prologue
    .line 577
    iget-object v0, p0, Landroid/app/Profile;->vibrators:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V
    .locals 8
    .parameter "builder"
    .parameter "context"

    .prologue
    .line 352
    const-string v6, "<profile "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    iget v6, p0, Landroid/app/Profile;->mNameResId:I

    if-lez v6, :cond_0

    .line 354
    const-string/jumbo v6, "nameres=\""

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Landroid/app/Profile;->mNameResId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    :goto_0
    const-string v6, "\" uuid=\""

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {p0}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    const-string v6, "\">\n"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    const-string v6, "<uuids>"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    iget-object v6, p0, Landroid/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/UUID;

    .line 366
    .local v4, u:Ljava/util/UUID;
    const-string v6, "<uuid>"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    const-string v6, "</uuid>"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 357
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #u:Ljava/util/UUID;
    :cond_0
    const-string/jumbo v6, "name=\""

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    invoke-virtual {p0}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 370
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    const-string v6, "</uuids>\n"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    const-string v6, "<profiletype>"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {p0}, Landroid/app/Profile;->getProfileType()I

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "toggle"

    :goto_2
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    const-string v6, "</profiletype>\n"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    const-string v6, "<statusbar>"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    invoke-virtual {p0}, Landroid/app/Profile;->getStatusBarIndicator()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "yes"

    :goto_3
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    const-string v6, "</statusbar>\n"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    const-string v6, "<screen-lock-mode>"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    iget v6, p0, Landroid/app/Profile;->mScreenLockMode:I

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 382
    const-string v6, "</screen-lock-mode>\n"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    const-string v6, "<airplane-mode>"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    iget v6, p0, Landroid/app/Profile;->mAirplaneMode:I

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 386
    const-string v6, "</airplane-mode>\n"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    iget-object v6, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ProfileGroup;

    .line 389
    .local v2, pGroup:Landroid/app/ProfileGroup;
    invoke-virtual {v2, p1, p2}, Landroid/app/ProfileGroup;->getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V

    goto :goto_4

    .line 373
    .end local v2           #pGroup:Landroid/app/ProfileGroup;
    :cond_2
    const-string v6, "conditional"

    goto :goto_2

    .line 377
    :cond_3
    const-string/jumbo v6, "no"

    goto :goto_3

    .line 391
    :cond_4
    iget-object v6, p0, Landroid/app/Profile;->streams:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StreamSettings;

    .line 392
    .local v3, sd:Landroid/app/StreamSettings;
    invoke-virtual {v3, p1, p2}, Landroid/app/StreamSettings;->getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V

    goto :goto_5

    .line 394
    .end local v3           #sd:Landroid/app/StreamSettings;
    :cond_5
    iget-object v6, p0, Landroid/app/Profile;->connections:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ConnectionSettings;

    .line 395
    .local v0, cs:Landroid/app/ConnectionSettings;
    invoke-virtual {v0, p1, p2}, Landroid/app/ConnectionSettings;->getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V

    goto :goto_6

    .line 397
    .end local v0           #cs:Landroid/app/ConnectionSettings;
    :cond_6
    iget-object v6, p0, Landroid/app/Profile;->vibrators:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/VibratorSettings;

    .line 398
    .local v5, vs:Landroid/app/VibratorSettings;
    invoke-virtual {v5, p1, p2}, Landroid/app/VibratorSettings;->getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V

    goto :goto_7

    .line 400
    .end local v5           #vs:Landroid/app/VibratorSettings;
    :cond_7
    const-string v6, "</profile>\n"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/app/Profile;->mDirty:Z

    .line 402
    return-void
.end method

.method public isConditionalType()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 288
    iget v1, p0, Landroid/app/Profile;->mProfileType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDirty()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 324
    iget-boolean v6, p0, Landroid/app/Profile;->mDirty:Z

    if-eqz v6, :cond_0

    .line 347
    :goto_0
    return v5

    .line 327
    :cond_0
    iget-object v6, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProfileGroup;

    .line 328
    .local v1, group:Landroid/app/ProfileGroup;
    invoke-virtual {v1}, Landroid/app/ProfileGroup;->isDirty()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .line 332
    .end local v1           #group:Landroid/app/ProfileGroup;
    :cond_2
    iget-object v6, p0, Landroid/app/Profile;->streams:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StreamSettings;

    .line 333
    .local v3, stream:Landroid/app/StreamSettings;
    invoke-virtual {v3}, Landroid/app/StreamSettings;->isDirty()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_0

    .line 337
    .end local v3           #stream:Landroid/app/StreamSettings;
    :cond_4
    iget-object v6, p0, Landroid/app/Profile;->connections:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ConnectionSettings;

    .line 338
    .local v0, conn:Landroid/app/ConnectionSettings;
    invoke-virtual {v0}, Landroid/app/ConnectionSettings;->isDirty()Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_0

    .line 342
    .end local v0           #conn:Landroid/app/ConnectionSettings;
    :cond_6
    iget-object v6, p0, Landroid/app/Profile;->vibrators:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/VibratorSettings;

    .line 343
    .local v4, vibrator:Landroid/app/VibratorSettings;
    invoke-virtual {v4}, Landroid/app/VibratorSettings;->isDirty()Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_0

    .line 347
    .end local v4           #vibrator:Landroid/app/VibratorSettings;
    :cond_8
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 12
    .parameter "in"

    .prologue
    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/app/Profile;->mName:Ljava/lang/String;

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, p0, Landroid/app/Profile;->mNameResId:I

    .line 202
    sget-object v10, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/ParcelUuid;

    invoke-virtual {v10}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v10

    iput-object v10, p0, Landroid/app/Profile;->mUuid:Ljava/util/UUID;

    .line 203
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    .local v0, arr$:[Landroid/os/Parcelable;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v6, v0, v4

    .local v6, parcel:Landroid/os/Parcelable;
    move-object v8, v6

    .line 204
    check-cast v8, Landroid/os/ParcelUuid;

    .line 205
    .local v8, u:Landroid/os/ParcelUuid;
    iget-object v10, p0, Landroid/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 207
    .end local v6           #parcel:Landroid/os/Parcelable;
    .end local v8           #u:Landroid/os/ParcelUuid;
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    const/4 v10, 0x1

    :goto_1
    iput-boolean v10, p0, Landroid/app/Profile;->mStatusBarIndicator:Z

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, p0, Landroid/app/Profile;->mProfileType:I

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    const/4 v10, 0x1

    :goto_2
    iput-boolean v10, p0, Landroid/app/Profile;->mDirty:Z

    .line 210
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    array-length v5, v0

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v5, :cond_4

    aget-object v2, v0, v4

    .local v2, group:Landroid/os/Parcelable;
    move-object v3, v2

    .line 211
    check-cast v3, Landroid/app/ProfileGroup;

    .line 212
    .local v3, grp:Landroid/app/ProfileGroup;
    iget-object v10, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-virtual {v3}, Landroid/app/ProfileGroup;->getUuid()Ljava/util/UUID;

    move-result-object v11

    invoke-interface {v10, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    invoke-virtual {v3}, Landroid/app/ProfileGroup;->isDefaultGroup()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 214
    iput-object v3, p0, Landroid/app/Profile;->mDefaultGroup:Landroid/app/ProfileGroup;

    .line 210
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 207
    .end local v2           #group:Landroid/os/Parcelable;
    .end local v3           #grp:Landroid/app/ProfileGroup;
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 209
    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    .line 217
    :cond_4
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    array-length v5, v0

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v5, :cond_5

    aget-object v6, v0, v4

    .restart local v6       #parcel:Landroid/os/Parcelable;
    move-object v7, v6

    .line 218
    check-cast v7, Landroid/app/StreamSettings;

    .line 219
    .local v7, stream:Landroid/app/StreamSettings;
    iget-object v10, p0, Landroid/app/Profile;->streams:Ljava/util/Map;

    invoke-virtual {v7}, Landroid/app/StreamSettings;->getStreamId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 221
    .end local v6           #parcel:Landroid/os/Parcelable;
    .end local v7           #stream:Landroid/app/StreamSettings;
    :cond_5
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    array-length v5, v0

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v5, :cond_6

    aget-object v6, v0, v4

    .restart local v6       #parcel:Landroid/os/Parcelable;
    move-object v1, v6

    .line 222
    check-cast v1, Landroid/app/ConnectionSettings;

    .line 223
    .local v1, connection:Landroid/app/ConnectionSettings;
    iget-object v10, p0, Landroid/app/Profile;->connections:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/app/ConnectionSettings;->getConnectionId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 225
    .end local v1           #connection:Landroid/app/ConnectionSettings;
    .end local v6           #parcel:Landroid/os/Parcelable;
    :cond_6
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    array-length v5, v0

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v5, :cond_7

    aget-object v6, v0, v4

    .restart local v6       #parcel:Landroid/os/Parcelable;
    move-object v9, v6

    .line 226
    check-cast v9, Landroid/app/VibratorSettings;

    .line 227
    .local v9, vibrator:Landroid/app/VibratorSettings;
    iget-object v10, p0, Landroid/app/Profile;->vibrators:Ljava/util/Map;

    invoke-virtual {v9}, Landroid/app/VibratorSettings;->getVibratorId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 229
    .end local v6           #parcel:Landroid/os/Parcelable;
    .end local v9           #vibrator:Landroid/app/VibratorSettings;
    :cond_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, p0, Landroid/app/Profile;->mScreenLockMode:I

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, p0, Landroid/app/Profile;->mAirplaneMode:I

    .line 231
    return-void
.end method

.method public removeProfileGroup(Ljava/util/UUID;)V
    .locals 3
    .parameter "uuid"

    .prologue
    .line 148
    iget-object v0, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProfileGroup;

    invoke-virtual {v0}, Landroid/app/ProfileGroup;->isDefaultGroup()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    const-string v0, "Profile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot remove default group: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAirplaneMode(I)V
    .locals 1
    .parameter "airplaneMode"

    .prologue
    .line 314
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 315
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Profile;->mAirplaneMode:I

    .line 319
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Profile;->mDirty:Z

    .line 320
    return-void

    .line 317
    :cond_1
    iput p1, p0, Landroid/app/Profile;->mAirplaneMode:I

    goto :goto_0
.end method

.method public setConditionalType()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 292
    iput v0, p0, Landroid/app/Profile;->mProfileType:I

    .line 293
    iput-boolean v0, p0, Landroid/app/Profile;->mDirty:Z

    .line 294
    return-void
.end method

.method public setConnectionSettings(Landroid/app/ConnectionSettings;)V
    .locals 2
    .parameter "descriptor"

    .prologue
    .line 587
    iget-object v0, p0, Landroid/app/Profile;->connections:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/ConnectionSettings;->getConnectionId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 239
    iput-object p1, p0, Landroid/app/Profile;->mName:Ljava/lang/String;

    .line 240
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/Profile;->mNameResId:I

    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Profile;->mDirty:Z

    .line 242
    return-void
.end method

.method public setProfileType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 250
    iput p1, p0, Landroid/app/Profile;->mProfileType:I

    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Profile;->mDirty:Z

    .line 252
    return-void
.end method

.method public setScreenLockMode(I)V
    .locals 1
    .parameter "screenLockMode"

    .prologue
    .line 301
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 302
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Profile;->mScreenLockMode:I

    .line 306
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Profile;->mDirty:Z

    .line 307
    return-void

    .line 304
    :cond_1
    iput p1, p0, Landroid/app/Profile;->mScreenLockMode:I

    goto :goto_0
.end method

.method public setSecondaryUuids(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/UUID;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 264
    .local p1, uuids:Ljava/util/List;,"Ljava/util/List<Ljava/util/UUID;>;"
    iget-object v0, p0, Landroid/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 265
    if-eqz p1, :cond_0

    .line 266
    iget-object v0, p0, Landroid/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Profile;->mDirty:Z

    .line 269
    :cond_0
    return-void
.end method

.method public setStatusBarIndicator(Z)V
    .locals 1
    .parameter "newStatusBarIndicator"

    .prologue
    .line 283
    iput-boolean p1, p0, Landroid/app/Profile;->mStatusBarIndicator:Z

    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Profile;->mDirty:Z

    .line 285
    return-void
.end method

.method public setStreamSettings(Landroid/app/StreamSettings;)V
    .locals 2
    .parameter "descriptor"

    .prologue
    .line 555
    iget-object v0, p0, Landroid/app/Profile;->streams:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/StreamSettings;->getStreamId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Profile;->mDirty:Z

    .line 557
    return-void
.end method

.method public setVibratorSettings(Landroid/app/VibratorSettings;)V
    .locals 2
    .parameter "descriptor"

    .prologue
    .line 571
    iget-object v0, p0, Landroid/app/Profile;->vibrators:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/VibratorSettings;->getVibratorId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Profile;->mDirty:Z

    .line 573
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 7
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 176
    iget-object v3, p0, Landroid/app/Profile;->mName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    iget v3, p0, Landroid/app/Profile;->mNameResId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    new-instance v3, Landroid/os/ParcelUuid;

    iget-object v6, p0, Landroid/app/Profile;->mUuid:Ljava/util/UUID;

    invoke-direct {v3, v6}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v3, p1, v5}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 179
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 180
    .local v2, uuids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/ParcelUuid;>;"
    iget-object v3, p0, Landroid/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/UUID;

    .line 181
    .local v1, u:Ljava/util/UUID;
    new-instance v3, Landroid/os/ParcelUuid;

    invoke-direct {v3, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 183
    .end local v1           #u:Ljava/util/UUID;
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/os/Parcelable;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/Parcelable;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 184
    iget-boolean v3, p0, Landroid/app/Profile;->mStatusBarIndicator:Z

    if-eqz v3, :cond_1

    move v3, v4

    :goto_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    iget v3, p0, Landroid/app/Profile;->mProfileType:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    iget-boolean v3, p0, Landroid/app/Profile;->mDirty:Z

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    iget-object v3, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Landroid/os/Parcelable;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/Parcelable;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 189
    iget-object v3, p0, Landroid/app/Profile;->streams:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Profile;->streams:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Landroid/os/Parcelable;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/Parcelable;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 191
    iget-object v3, p0, Landroid/app/Profile;->connections:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Profile;->connections:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Landroid/os/Parcelable;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/Parcelable;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 193
    iget-object v3, p0, Landroid/app/Profile;->vibrators:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Profile;->vibrators:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Landroid/os/Parcelable;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/Parcelable;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 194
    iget v3, p0, Landroid/app/Profile;->mScreenLockMode:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget v3, p0, Landroid/app/Profile;->mAirplaneMode:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    return-void

    :cond_1
    move v3, v5

    .line 184
    goto :goto_1

    :cond_2
    move v4, v5

    .line 186
    goto :goto_2
.end method
