.class public Landroid/content/res/PackageRedirectionMap;
.super Ljava/lang/Object;
.source "PackageRedirectionMap.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/res/PackageRedirectionMap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mNativePointer:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Landroid/content/res/PackageRedirectionMap$1;

    invoke-direct {v0}, Landroid/content/res/PackageRedirectionMap$1;-><init>()V

    sput-object v0, Landroid/content/res/PackageRedirectionMap;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Landroid/content/res/PackageRedirectionMap;->nativeConstructor()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/content/res/PackageRedirectionMap;-><init>(I)V

    .line 28
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .parameter "nativePointer"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 38
    :cond_0
    iput p1, p0, Landroid/content/res/PackageRedirectionMap;->mNativePointer:I

    .line 39
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 31
    invoke-static {p1}, Landroid/content/res/PackageRedirectionMap;->nativeCreateFromParcel(Landroid/os/Parcel;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/content/res/PackageRedirectionMap;-><init>(I)V

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/res/PackageRedirectionMap$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/content/res/PackageRedirectionMap;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private native nativeAddRedirection(III)V
.end method

.method private static native nativeConstructor()I
.end method

.method private static native nativeCreateFromParcel(Landroid/os/Parcel;)I
.end method

.method private static native nativeDestructor(I)V
.end method

.method private native nativeGetPackageId(I)I
.end method

.method private native nativeGetRedirectionKeys(I)[I
.end method

.method private native nativeLookupRedirection(II)I
.end method

.method private static native nativeWriteToParcel(ILandroid/os/Parcel;)Z
.end method


# virtual methods
.method public addRedirection(II)V
    .locals 1
    .parameter "fromIdent"
    .parameter "toIdent"

    .prologue
    .line 67
    iget v0, p0, Landroid/content/res/PackageRedirectionMap;->mNativePointer:I

    invoke-direct {p0, v0, p1, p2}, Landroid/content/res/PackageRedirectionMap;->nativeAddRedirection(III)V

    .line 68
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 43
    iget v0, p0, Landroid/content/res/PackageRedirectionMap;->mNativePointer:I

    invoke-static {v0}, Landroid/content/res/PackageRedirectionMap;->nativeDestructor(I)V

    .line 44
    return-void
.end method

.method public getNativePointer()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Landroid/content/res/PackageRedirectionMap;->mNativePointer:I

    return v0
.end method

.method public getPackageId()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Landroid/content/res/PackageRedirectionMap;->mNativePointer:I

    invoke-direct {p0, v0}, Landroid/content/res/PackageRedirectionMap;->nativeGetPackageId(I)I

    move-result v0

    return v0
.end method

.method public getRedirectionKeys()[I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Landroid/content/res/PackageRedirectionMap;->mNativePointer:I

    invoke-direct {p0, v0}, Landroid/content/res/PackageRedirectionMap;->nativeGetRedirectionKeys(I)[I

    move-result-object v0

    return-object v0
.end method

.method public lookupRedirection(I)I
    .locals 1
    .parameter "fromIdent"

    .prologue
    .line 77
    iget v0, p0, Landroid/content/res/PackageRedirectionMap;->mNativePointer:I

    invoke-direct {p0, v0, p1}, Landroid/content/res/PackageRedirectionMap;->nativeLookupRedirection(II)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 57
    iget v0, p0, Landroid/content/res/PackageRedirectionMap;->mNativePointer:I

    invoke-static {v0, p1}, Landroid/content/res/PackageRedirectionMap;->nativeWriteToParcel(ILandroid/os/Parcel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 60
    :cond_0
    return-void
.end method
