.class public Lcom/android/internal/policy/impl/ExternalLockScreen;
.super Ljava/lang/Object;
.source "ExternalLockScreen.java"


# static fields
.field private static final DEBUG_ALLOW_UNPROTECTED_LOCKSCREENS:Z = false

.field private static final EXTERNAL_LOCKSCREEN_ENTRY_CLASS_KEY:Ljava/lang/String; = "android.lockscreen.ENTRYCLASS"

.field private static final EXTERNAL_LOCKSCREEN_PERMISSION:Ljava/lang/String; = "com.sonyericsson.permission.EXTERNAL_LOCKSCREEN"

.field private static final TAG:Ljava/lang/String; = "ExternalLockScreen"

.field private static sExternalLockScreenInfo:Landroid/content/ComponentName;

.field private static sLockScreenInfoLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/ExternalLockScreen;->sLockScreenInfoLock:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createLockScreenContext(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Context;
    .locals 4
    .parameter "packageName"
    .parameter "context"

    .prologue
    .line 87
    const/4 v1, 0x0

    .line 90
    .local v1, lockScreenContext:Landroid/content/Context;
    const/4 v2, 0x3

    :try_start_0
    invoke-virtual {p1, p0, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 96
    :goto_0
    return-object v1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "ExternalLockScreen"

    const-string v3, "Exception when creating LockScreen context"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getExternalLockScreenPackage(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 8
    .parameter "context"

    .prologue
    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, className:Ljava/lang/String;
    const/4 v2, 0x0

    .line 107
    .local v2, info:Landroid/content/ComponentName;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 108
    .local v5, pm:Landroid/content/pm/PackageManager;
    const/16 v6, 0x80

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 110
    .local v3, packageInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 111
    .local v4, pi:Landroid/content/pm/PackageInfo;
    if-eqz v4, :cond_0

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_0

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_0

    .line 112
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "android.lockscreen.ENTRYCLASS"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_0

    .line 116
    new-instance v2, Landroid/content/ComponentName;

    .end local v2           #info:Landroid/content/ComponentName;
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v2, v6, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .end local v4           #pi:Landroid/content/pm/PackageInfo;
    .restart local v2       #info:Landroid/content/ComponentName;
    :cond_1
    return-object v2
.end method

.method public static getLockScreen(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)Landroid/view/View;
    .locals 7
    .parameter "context"
    .parameter "keyguardScreenCallback"

    .prologue
    .line 196
    const/4 v1, 0x0

    .line 197
    .local v1, lockScreen:Landroid/view/View;
    const/4 v3, 0x0

    .line 198
    .local v3, lockScreenInfo:Landroid/content/ComponentName;
    const/4 v4, 0x0

    .line 203
    .local v4, validationOk:Z
    sget-object v5, Lcom/android/internal/policy/impl/ExternalLockScreen;->sLockScreenInfoLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 205
    :try_start_0
    sget-object v3, Lcom/android/internal/policy/impl/ExternalLockScreen;->sExternalLockScreenInfo:Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    sget-object v5, Lcom/android/internal/policy/impl/ExternalLockScreen;->sLockScreenInfoLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 210
    if-nez v3, :cond_0

    .line 211
    invoke-static {p0}, Lcom/android/internal/policy/impl/ExternalLockScreen;->getExternalLockScreenPackage(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v3

    .line 215
    :cond_0
    invoke-static {p0, v3}, Lcom/android/internal/policy/impl/ExternalLockScreen;->validateExternalLockScreen(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v4

    .line 219
    if-eqz v4, :cond_1

    .line 220
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p0}, Lcom/android/internal/policy/impl/ExternalLockScreen;->createLockScreenContext(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    .line 222
    .local v2, lockScreenContext:Landroid/content/Context;
    if-eqz v2, :cond_1

    .line 223
    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 224
    .local v0, classLoader:Ljava/lang/ClassLoader;
    invoke-static {v0, v3, v2, p1}, Lcom/android/internal/policy/impl/ExternalLockScreen;->instantiateLockScreen(Ljava/lang/ClassLoader;Landroid/content/ComponentName;Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)Landroid/view/View;

    move-result-object v1

    .line 233
    .end local v0           #classLoader:Ljava/lang/ClassLoader;
    .end local v2           #lockScreenContext:Landroid/content/Context;
    :cond_1
    instance-of v5, v1, Lcom/android/internal/policy/impl/KeyguardScreen;

    if-nez v5, :cond_2

    .line 234
    const/4 v1, 0x0

    .line 237
    :cond_2
    return-object v1

    .line 207
    :catchall_0
    move-exception v5

    sget-object v6, Lcom/android/internal/policy/impl/ExternalLockScreen;->sLockScreenInfoLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5
.end method

.method private static instantiateLockScreen(Ljava/lang/ClassLoader;Landroid/content/ComponentName;Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)Landroid/view/View;
    .locals 11
    .parameter "classLoader"
    .parameter "lockScreenInfo"
    .parameter "externalLockScreenContext"
    .parameter "keyguardScreenCallback"

    .prologue
    .line 158
    const/4 v4, 0x0

    .line 159
    .local v4, lockScreenInstance:Landroid/view/View;
    const/4 v3, 0x0

    .line 164
    .local v3, lockScreenClass:Ljava/lang/Class;,"Ljava/lang/Class<Landroid/view/View;>;"
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 165
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    aput-object v10, v8, v9

    invoke-virtual {v3, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 167
    .local v1, c:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Landroid/view/View;>;"
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    const/4 v9, 0x1

    aput-object p3, v8, v9

    invoke-virtual {v1, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Landroid/view/View;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .line 180
    .end local v1           #c:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Landroid/view/View;>;"
    :goto_0
    return-object v4

    .line 168
    :catch_0
    move-exception v2

    .line 169
    .local v2, cnfe:Ljava/lang/ClassNotFoundException;
    const-string v8, "ExternalLockScreen"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "External lockscreen class "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " could not be found"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 171
    .end local v2           #cnfe:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v5

    .line 172
    .local v5, nsme:Ljava/lang/NoSuchMethodException;
    const-string v8, "ExternalLockScreen"

    const-string v9, "External lockscreen constructor could not be found"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 173
    .end local v5           #nsme:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v6

    .line 174
    .local v6, se:Ljava/lang/SecurityException;
    const-string v8, "ExternalLockScreen"

    const-string v9, "Security Exception when obtaining External Lockscreen constructor"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 175
    .end local v6           #se:Ljava/lang/SecurityException;
    :catch_3
    move-exception v7

    .line 177
    .local v7, t:Ljava/lang/Throwable;
    const-string v8, "ExternalLockScreen"

    const-string v9, "Error occured when instantiating the external lockscreen"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setExternalLockScreen(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "externalLockscreenInfo"

    .prologue
    .line 246
    sget-object v0, Lcom/android/internal/policy/impl/ExternalLockScreen;->sLockScreenInfoLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 248
    :try_start_0
    sput-object p0, Lcom/android/internal/policy/impl/ExternalLockScreen;->sExternalLockScreenInfo:Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    sget-object v0, Lcom/android/internal/policy/impl/ExternalLockScreen;->sLockScreenInfoLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 252
    return-void

    .line 250
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/android/internal/policy/impl/ExternalLockScreen;->sLockScreenInfoLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private static validateExternalLockScreen(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 4
    .parameter "context"
    .parameter "info"

    .prologue
    const/4 v1, 0x0

    .line 131
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 132
    :cond_0
    const-string v2, "ExternalLockScreen"

    const-string v3, "External lockscreen name and package info has not been set correctly!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :goto_0
    return v1

    .line 140
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 141
    .local v0, pm:Landroid/content/pm/PackageManager;
    const-string v2, "com.sonyericsson.permission.EXTERNAL_LOCKSCREEN"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 143
    const/4 v1, 0x1

    goto :goto_0

    .line 146
    :cond_2
    const-string v2, "ExternalLockScreen"

    const-string v3, "Validation of external lockscreen failed!!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
