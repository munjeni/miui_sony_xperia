.class Lcom/android/internal/os/storage/ExternalStorageFormatter$InternalStorageFormatterStringGetter;
.super Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageFormatterStringGetter;
.source "ExternalStorageFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/storage/ExternalStorageFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalStorageFormatterStringGetter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageFormatterStringGetter;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/os/storage/ExternalStorageFormatter$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter$InternalStorageFormatterStringGetter;-><init>()V

    return-void
.end method


# virtual methods
.method getStringFormatError()I
    .locals 1

    .prologue
    .line 327
    const v0, 0x1040105

    return v0
.end method

.method getStringMediaChecking()I
    .locals 1

    .prologue
    .line 311
    const v0, 0x1040106

    return v0
.end method

.method getStringMediaShared()I
    .locals 1

    .prologue
    .line 315
    const v0, 0x1040107

    return v0
.end method

.method getStringProgressErasing()I
    .locals 1

    .prologue
    .line 319
    const v0, 0x1040104

    return v0
.end method

.method getStringProgressUnmounting()I
    .locals 1

    .prologue
    .line 323
    const v0, 0x1040103

    return v0
.end method
