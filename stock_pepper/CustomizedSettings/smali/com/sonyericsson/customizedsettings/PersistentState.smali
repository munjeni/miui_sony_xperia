.class public Lcom/sonyericsson/customizedsettings/PersistentState;
.super Ljava/lang/Object;
.source "PersistentState.java"


# static fields
.field private static final ALREADY_BOOT_UP:Ljava/lang/String; = "ALREADYBOOTUP"

.field private static final BOOT_UP:Ljava/lang/String; = "BOOTUP"

.field private static final CUSTOMIZATION_VERSION:Ljava/lang/String; = "CUSTOMIZATION_VERSION"

.field private static final TAG_VERSION:Ljava/lang/String; = "TAG_VERSION"

.field public static final UNDEFINED_VERSION:I = -0x1


# instance fields
.field private mCmzVersion:I

.field private final mContext:Landroid/content/Context;

.field private mTagVersion:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/sonyericsson/customizedsettings/PersistentState;->mContext:Landroid/content/Context;

    .line 73
    invoke-direct {p0}, Lcom/sonyericsson/customizedsettings/PersistentState;->getState()V

    .line 74
    return-void
.end method

.method private getState()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 78
    iput v3, p0, Lcom/sonyericsson/customizedsettings/PersistentState;->mTagVersion:I

    .line 79
    iput v3, p0, Lcom/sonyericsson/customizedsettings/PersistentState;->mCmzVersion:I

    .line 80
    iget-object v1, p0, Lcom/sonyericsson/customizedsettings/PersistentState;->mContext:Landroid/content/Context;

    const-string v2, "BOOTUP"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 81
    .local v0, settings:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_2

    .line 82
    const-string v1, "CUSTOMIZATION_VERSION"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "TAG_VERSION"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    const-string v1, "CUSTOMIZATION_VERSION"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/customizedsettings/PersistentState;->mCmzVersion:I

    .line 84
    const-string v1, "TAG_VERSION"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/customizedsettings/PersistentState;->mTagVersion:I

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    const-string v1, "ALREADYBOOTUP"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    const/4 v1, 0x1

    iput v1, p0, Lcom/sonyericsson/customizedsettings/PersistentState;->mTagVersion:I

    .line 88
    iput v4, p0, Lcom/sonyericsson/customizedsettings/PersistentState;->mCmzVersion:I

    goto :goto_0

    .line 92
    :cond_2
    const-string v1, "CustomizedSettings"

    const-string v2, "Failed to get reference to shared preference: BOOTUP"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getCustomizationVersion()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/sonyericsson/customizedsettings/PersistentState;->mCmzVersion:I

    return v0
.end method

.method public getTagVersion()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/sonyericsson/customizedsettings/PersistentState;->mTagVersion:I

    return v0
.end method

.method public setState(II)V
    .locals 5
    .parameter "cmzVersion"
    .parameter "tagVersion"

    .prologue
    .line 126
    iget-object v2, p0, Lcom/sonyericsson/customizedsettings/PersistentState;->mContext:Landroid/content/Context;

    const-string v3, "BOOTUP"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 127
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 128
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "CUSTOMIZATION_VERSION"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 129
    const-string v2, "TAG_VERSION"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 130
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 131
    invoke-direct {p0}, Lcom/sonyericsson/customizedsettings/PersistentState;->getState()V

    .line 132
    return-void
.end method
