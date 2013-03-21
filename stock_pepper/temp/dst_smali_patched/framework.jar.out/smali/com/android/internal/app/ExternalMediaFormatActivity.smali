.class public Lcom/android/internal/app/ExternalMediaFormatActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "ExternalMediaFormatActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final EXT_STORAGE_PATH:Ljava/lang/String; = "path"

.field private static final POSITIVE_BUTTON:I = -0x1


# instance fields
.field private mPath:Ljava/lang/String;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mPath:Ljava/lang/String;

    new-instance v0, Lcom/android/internal/app/ExternalMediaFormatActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ExternalMediaFormatActivity$1;-><init>(Lcom/android/internal/app/ExternalMediaFormatActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mStorageReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/ExternalMediaFormatActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method private getVolume(Ljava/lang/String;)Landroid/os/storage/StorageVolume;
    .locals 5
    .parameter "path"

    .prologue
    iget-object v4, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    .local v3, storageVolumes:[Landroid/os/storage/StorageVolume;
    const/4 v2, 0x0

    .local v2, storageVolume:Landroid/os/storage/StorageVolume;
    array-length v1, v3

    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v4, v3, v0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    aget-object v2, v3, v0

    :cond_0
    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.os.storage.FORMAT_ONLY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "storage_volume"

    iget-object v2, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mPath:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/internal/app/ExternalMediaFormatActivity;->getVolume(Ljava/lang/String;)Landroid/os/storage/StorageVolume;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ExternalMediaFormatActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ExternalMediaFormatActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v5, "ExternalMediaFormatActivity"

    const-string v6, "onCreate!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .local v3, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v2, 0x1040469

    .local v2, formatTitleStringId:I
    const v1, 0x104046a

    .local v1, formatMessageStringId:I
    invoke-virtual {p0}, Lcom/android/internal/app/ExternalMediaFormatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "path"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mPath:Ljava/lang/String;

    const-string v5, "storage"

    invoke-virtual {p0, v5}, Lcom/android/internal/app/ExternalMediaFormatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageManager;

    iput-object v5, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    sget-object v4, Landroid/os/storage/StorageManager$StorageType;->EXTERNAL_CARD:Landroid/os/storage/StorageManager$StorageType;

    .local v4, storageType:Landroid/os/storage/StorageManager$StorageType;
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v6, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/os/storage/StorageManager;->getVolumeType(Ljava/lang/String;)Landroid/os/storage/StorageManager$StorageType;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_0
    sget-object v5, Landroid/os/storage/StorageManager$StorageType;->EXTERNAL_USB:Landroid/os/storage/StorageManager$StorageType;

    invoke-virtual {v5, v4}, Landroid/os/storage/StorageManager$StorageType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const v2, 0x10400f5

    const v1, 0x10400f6

    :cond_0
    :goto_1
    const v5, 0x108008a

    iput v5, v3, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ExternalMediaFormatActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ExternalMediaFormatActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    const v5, 0x104046b

    invoke-virtual {p0, v5}, Lcom/android/internal/app/ExternalMediaFormatActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iput-object p0, v3, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/high16 v5, 0x104

    invoke-virtual {p0, v5}, Lcom/android/internal/app/ExternalMediaFormatActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iput-object p0, v3, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0}, Lcom/android/internal/app/ExternalMediaFormatActivity;->setupAlert()V

    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v5, "ExternalMediaFormatActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to get volume type, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_1
    sget-object v5, Landroid/os/storage/StorageManager$StorageType;->INTERNAL:Landroid/os/storage/StorageManager$StorageType;

    invoke-virtual {v5, v4}, Landroid/os/storage/StorageManager$StorageType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const v2, 0x1040108

    const v1, 0x1040109

    goto :goto_1
.end method

.method protected onPause()V
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    iget-object v0, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mStorageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ExternalMediaFormatActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mStorageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/app/ExternalMediaFormatActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
