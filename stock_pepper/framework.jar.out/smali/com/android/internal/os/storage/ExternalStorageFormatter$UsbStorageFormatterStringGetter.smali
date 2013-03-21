.class Lcom/android/internal/os/storage/ExternalStorageFormatter$UsbStorageFormatterStringGetter;
.super Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageFormatterStringGetter;
.source "ExternalStorageFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/storage/ExternalStorageFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UsbStorageFormatterStringGetter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageFormatterStringGetter;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/os/storage/ExternalStorageFormatter$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter$UsbStorageFormatterStringGetter;-><init>()V

    return-void
.end method


# virtual methods
.method getStringBadRemoval()I
    .locals 1

    .prologue
    .line 279
    const v0, 0x10400fb

    return v0
.end method

.method getStringFormatError()I
    .locals 1

    .prologue
    .line 303
    const v0, 0x10400fa

    return v0
.end method

.method getStringMediaChecking()I
    .locals 1

    .prologue
    .line 283
    const v0, 0x10400f8

    return v0
.end method

.method getStringMediaRemoved()I
    .locals 1

    .prologue
    .line 287
    const v0, 0x10400fc

    return v0
.end method

.method getStringMediaShared()I
    .locals 1

    .prologue
    .line 291
    const v0, 0x10400fd

    return v0
.end method

.method getStringProgressErasing()I
    .locals 1

    .prologue
    .line 295
    const v0, 0x10400f7

    return v0
.end method

.method getStringProgressUnmounting()I
    .locals 1

    .prologue
    .line 299
    const v0, 0x10400f9

    return v0
.end method
