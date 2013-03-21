.class Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageFormatterStringGetter;
.super Ljava/lang/Object;
.source "ExternalStorageFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/storage/ExternalStorageFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StorageFormatterStringGetter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/os/storage/ExternalStorageFormatter$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 245
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageFormatterStringGetter;-><init>()V

    return-void
.end method


# virtual methods
.method getStringBadRemoval()I
    .locals 1

    .prologue
    .line 247
    const v0, 0x10404b6

    return v0
.end method

.method getStringFormatError()I
    .locals 1

    .prologue
    .line 271
    const v0, 0x10404b5

    return v0
.end method

.method getStringMediaChecking()I
    .locals 1

    .prologue
    .line 251
    const v0, 0x10404b7

    return v0
.end method

.method getStringMediaRemoved()I
    .locals 1

    .prologue
    .line 255
    const v0, 0x10404b8

    return v0
.end method

.method getStringMediaShared()I
    .locals 1

    .prologue
    .line 259
    const v0, 0x10404b9

    return v0
.end method

.method getStringProgressErasing()I
    .locals 1

    .prologue
    .line 263
    const v0, 0x10404b4

    return v0
.end method

.method getStringProgressUnmounting()I
    .locals 1

    .prologue
    .line 267
    const v0, 0x10404b3

    return v0
.end method
