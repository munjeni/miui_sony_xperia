.class public Lmiui/content/res/ExtraConfiguration;
.super Ljava/lang/Object;
.source "ExtraConfiguration.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lmiui/content/res/ExtraConfiguration;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONTACTS_PKG_NAME:Ljava/lang/String; = "com.android.contacts"

.field public static final LAUNCHER_PKG_NAME:Ljava/lang/String; = "com.miui.home"

.field public static final MMS_PKG_NAME:Ljava/lang/String; = "com.android.mms"

.field public static final SETTINGS_PKG_NAME:Ljava/lang/String; = "com.android.settings"

.field public static final SYSTEMUI_PKG_NAME:Ljava/lang/String; = "com.android.systemui"

.field public static final SYSTEM_INTRESTE_CHANGE_FLAG:J = 0x10007899L

.field public static final THEME_FLAG_ALARM:J = 0x400L

.field public static final THEME_FLAG_AUDIO_EFFECT:J = 0x8000L

.field public static final THEME_FLAG_BOOT_ANIMATION:J = 0x20L

.field public static final THEME_FLAG_BOOT_AUDIO:J = 0x40L

.field public static final THEME_FLAG_CLOCK:J = 0x10000L

.field public static final THEME_FLAG_CONTACT:J = 0x800L

.field public static final THEME_FLAG_FONT:J = 0x10L

.field public static final THEME_FLAG_FRAMEWORK:J = 0x1L

.field public static final THEME_FLAG_ICON:J = 0x8L

.field public static final THEME_FLAG_LAST:J = 0x20000L

.field public static final THEME_FLAG_LAUNCHER:J = 0x4000L

.field public static final THEME_FLAG_LOCKSCREEN:J = 0x4L

.field public static final THEME_FLAG_LOCKSTYLE:J = 0x1000L

.field public static final THEME_FLAG_MMS:J = 0x80L

.field public static final THEME_FLAG_NOTIFICATION:J = 0x200L

.field public static final THEME_FLAG_PHOTO_FRAME:J = 0x20000L

.field public static final THEME_FLAG_RINGTONE:J = 0x100L

.field public static final THEME_FLAG_STATUSBAR:J = 0x2000L

.field public static final THEME_FLAG_THIRD_APP:J = 0x10000000L

.field public static final THEME_FLAG_WALLPAPER:J = 0x2L

.field private static final needRestartActivitySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public themeChanged:I

.field public themeChangedFlags:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lmiui/content/res/ExtraConfiguration;->needRestartActivitySet:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static addNeedRestartActivity(J)V
    .locals 2
    .parameter "themeChangeFlags"

    .prologue
    .line 129
    invoke-static {p0, p1}, Lmiui/content/res/ExtraConfiguration;->needRestartLauncher(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    sget-object v0, Lmiui/content/res/ExtraConfiguration;->needRestartActivitySet:Ljava/util/Set;

    const-string v1, "com.miui.home"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_0
    invoke-static {p0, p1}, Lmiui/content/res/ExtraConfiguration;->needRestartSettings(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    sget-object v0, Lmiui/content/res/ExtraConfiguration;->needRestartActivitySet:Ljava/util/Set;

    const-string v1, "com.android.settings"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_1
    invoke-static {p0, p1}, Lmiui/content/res/ExtraConfiguration;->needRestartMms(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    sget-object v0, Lmiui/content/res/ExtraConfiguration;->needRestartActivitySet:Ljava/util/Set;

    const-string v1, "com.android.mms"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_2
    invoke-static {p0, p1}, Lmiui/content/res/ExtraConfiguration;->needRestartContacts(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 139
    sget-object v0, Lmiui/content/res/ExtraConfiguration;->needRestartActivitySet:Ljava/util/Set;

    const-string v1, "com.android.contacts"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_3
    return-void
.end method

.method public static getScaleMode()I
    .locals 3

    .prologue
    .line 198
    const/4 v1, 0x1

    .line 200
    .local v1, scale:I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 201
    .local v0, config:Landroid/content/res/Configuration;
    if-eqz v0, :cond_0

    .line 202
    iget v2, v0, Landroid/content/res/Configuration;->uiMode:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v1, v2, 0xf

    .line 203
    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    const/16 v2, 0xe

    if-eq v1, v2, :cond_0

    const/16 v2, 0xf

    if-eq v1, v2, :cond_0

    .line 207
    const/4 v1, 0x1

    .line 212
    .end local v0           #config:Landroid/content/res/Configuration;
    :cond_0
    :goto_0
    return v1

    .line 210
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static needNewResources(I)Z
    .locals 1
    .parameter "configChanges"

    .prologue
    .line 95
    const/high16 v0, -0x8000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needRestart3rdApp(J)Z
    .locals 4
    .parameter "themeChangeFlags"

    .prologue
    .line 182
    const-wide/32 v0, 0x10000011

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needRestartActivity(Ljava/lang/String;J)Z
    .locals 1
    .parameter "packageName"
    .parameter "themeChangeFlags"

    .prologue
    .line 148
    if-eqz p0, :cond_3

    .line 149
    const-string v0, "com.miui.home"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-static {p1, p2}, Lmiui/content/res/ExtraConfiguration;->needRestartLauncher(J)Z

    move-result v0

    .line 162
    :goto_0
    return v0

    .line 152
    :cond_0
    const-string v0, "com.android.settings"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    invoke-static {p1, p2}, Lmiui/content/res/ExtraConfiguration;->needRestartSettings(J)Z

    move-result v0

    goto :goto_0

    .line 155
    :cond_1
    const-string v0, "com.android.mms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    invoke-static {p1, p2}, Lmiui/content/res/ExtraConfiguration;->needRestartMms(J)Z

    move-result v0

    goto :goto_0

    .line 158
    :cond_2
    const-string v0, "com.android.contacts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 159
    invoke-static {p1, p2}, Lmiui/content/res/ExtraConfiguration;->needRestartContacts(J)Z

    move-result v0

    goto :goto_0

    .line 162
    :cond_3
    invoke-static {p1, p2}, Lmiui/content/res/ExtraConfiguration;->needRestart3rdApp(J)Z

    move-result v0

    goto :goto_0
.end method

.method public static needRestartContacts(J)Z
    .locals 4
    .parameter "themeChangeFlags"

    .prologue
    .line 178
    const-wide/16 v0, 0x811

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needRestartLauncher(J)Z
    .locals 4
    .parameter "themeChangeFlags"

    .prologue
    .line 166
    const-wide/16 v0, 0x4019

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needRestartMms(J)Z
    .locals 4
    .parameter "themeChangeFlags"

    .prologue
    .line 174
    const-wide/16 v0, 0x91

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needRestartSettings(J)Z
    .locals 4
    .parameter "themeChangeFlags"

    .prologue
    .line 170
    const-wide/16 v0, 0x19

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needRestartStatusBar(J)Z
    .locals 4
    .parameter "themeChangeFlags"

    .prologue
    .line 186
    const-wide/16 v0, 0x2019

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static removeNeedRestartActivity(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 144
    sget-object v0, Lmiui/content/res/ExtraConfiguration;->needRestartActivitySet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    check-cast p1, Lmiui/content/res/ExtraConfiguration;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/content/res/ExtraConfiguration;->compareTo(Lmiui/content/res/ExtraConfiguration;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lmiui/content/res/ExtraConfiguration;)I
    .locals 3
    .parameter "that"

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, n:I
    iget v1, p0, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    iget v2, p1, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    sub-int v0, v1, v2

    .line 112
    if-eqz v0, :cond_0

    .line 115
    :cond_0
    return v0
.end method

.method public diff(Lmiui/content/res/ExtraConfiguration;)I
    .locals 3
    .parameter "delta"

    .prologue
    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, changed:I
    iget v1, p0, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    iget v2, p1, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    if-ge v1, v2, :cond_0

    .line 89
    const/high16 v1, -0x8000

    or-int/2addr v0, v1

    .line 91
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 120
    iget v0, p0, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    iget-wide v1, p0, Lmiui/content/res/ExtraConfiguration;->themeChangedFlags:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/content/res/ExtraConfiguration;->themeChangedFlags:J

    .line 106
    return-void
.end method

.method public setTo(Lmiui/content/res/ExtraConfiguration;)V
    .locals 2
    .parameter "o"

    .prologue
    .line 57
    iget v0, p1, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    iput v0, p0, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    .line 58
    iget-wide v0, p1, Lmiui/content/res/ExtraConfiguration;->themeChangedFlags:J

    iput-wide v0, p0, Lmiui/content/res/ExtraConfiguration;->themeChangedFlags:J

    .line 59
    return-void
.end method

.method public setToDefaults()V
    .locals 2

    .prologue
    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    .line 73
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/content/res/ExtraConfiguration;->themeChangedFlags:J

    .line 74
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, " themeChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget v1, p0, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, " themeChangedFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-wide v1, p0, Lmiui/content/res/ExtraConfiguration;->themeChangedFlags:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateFrom(Lmiui/content/res/ExtraConfiguration;)I
    .locals 3
    .parameter "delta"

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, changed:I
    iget v1, p0, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    iget v2, p1, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    if-ge v1, v2, :cond_0

    .line 79
    const/high16 v1, -0x8000

    or-int/2addr v0, v1

    .line 80
    iget v1, p1, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    iput v1, p0, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    .line 81
    iget-wide v1, p1, Lmiui/content/res/ExtraConfiguration;->themeChangedFlags:J

    iput-wide v1, p0, Lmiui/content/res/ExtraConfiguration;->themeChangedFlags:J

    .line 83
    :cond_0
    return v0
.end method

.method public updateTheme(J)V
    .locals 1
    .parameter "changedFlags"

    .prologue
    .line 124
    iget v0, p0, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    .line 125
    iput-wide p1, p0, Lmiui/content/res/ExtraConfiguration;->themeChangedFlags:J

    .line 126
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 99
    iget v0, p0, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget-wide v0, p0, Lmiui/content/res/ExtraConfiguration;->themeChangedFlags:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 101
    return-void
.end method
