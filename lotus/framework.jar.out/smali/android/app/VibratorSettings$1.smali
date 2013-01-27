.class final Landroid/app/VibratorSettings$1;
.super Ljava/lang/Object;
.source "VibratorSettings.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/VibratorSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/app/VibratorSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/VibratorSettings;
    .locals 1
    .parameter "in"

    .prologue
    .line 29
    new-instance v0, Landroid/app/VibratorSettings;

    invoke-direct {v0, p1}, Landroid/app/VibratorSettings;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Landroid/app/VibratorSettings$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/VibratorSettings;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/app/VibratorSettings;
    .locals 1
    .parameter "size"

    .prologue
    .line 34
    new-array v0, p1, [Landroid/app/VibratorSettings;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Landroid/app/VibratorSettings$1;->newArray(I)[Landroid/app/VibratorSettings;

    move-result-object v0

    return-object v0
.end method
