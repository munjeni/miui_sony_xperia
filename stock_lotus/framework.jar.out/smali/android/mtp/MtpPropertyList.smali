.class Landroid/mtp/MtpPropertyList;
.super Ljava/lang/Object;
.source "MtpPropertyList.java"


# instance fields
.field private mCount:I

.field public final mDataTypes:[I

.field public mLongValues:[J

.field private final mMaxCount:I

.field public final mObjectHandles:[I

.field public final mPropertyCodes:[I

.field public mResult:I

.field public mStringValues:[Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter "maxCount"
    .parameter "result"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Landroid/mtp/MtpPropertyList;->mMaxCount:I

    .line 50
    iput p2, p0, Landroid/mtp/MtpPropertyList;->mResult:I

    .line 51
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/mtp/MtpPropertyList;->mObjectHandles:[I

    .line 52
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/mtp/MtpPropertyList;->mPropertyCodes:[I

    .line 53
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/mtp/MtpPropertyList;->mDataTypes:[I

    .line 55
    return-void
.end method


# virtual methods
.method public append(IIIJ)V
    .locals 2
    .parameter "handle"
    .parameter "property"
    .parameter "type"
    .parameter "value"

    .prologue
    .line 58
    iget v0, p0, Landroid/mtp/MtpPropertyList;->mCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/mtp/MtpPropertyList;->mCount:I

    .line 59
    .local v0, index:I
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mLongValues:[J

    if-nez v1, :cond_0

    .line 60
    iget v1, p0, Landroid/mtp/MtpPropertyList;->mMaxCount:I

    new-array v1, v1, [J

    iput-object v1, p0, Landroid/mtp/MtpPropertyList;->mLongValues:[J

    .line 62
    :cond_0
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mObjectHandles:[I

    aput p1, v1, v0

    .line 63
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mPropertyCodes:[I

    aput p2, v1, v0

    .line 64
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mDataTypes:[I

    aput p3, v1, v0

    .line 65
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mLongValues:[J

    aput-wide p4, v1, v0

    .line 66
    return-void
.end method

.method public append(IIILjava/lang/String;)V
    .locals 2
    .parameter "handle"
    .parameter "property"
    .parameter "type"
    .parameter "value"

    .prologue
    .line 83
    iget v0, p0, Landroid/mtp/MtpPropertyList;->mCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/mtp/MtpPropertyList;->mCount:I

    .line 84
    .local v0, index:I
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mStringValues:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 85
    iget v1, p0, Landroid/mtp/MtpPropertyList;->mMaxCount:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/mtp/MtpPropertyList;->mStringValues:[Ljava/lang/String;

    .line 87
    :cond_0
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mObjectHandles:[I

    aput p1, v1, v0

    .line 88
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mPropertyCodes:[I

    aput p2, v1, v0

    .line 89
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mDataTypes:[I

    aput p3, v1, v0

    .line 90
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mStringValues:[Ljava/lang/String;

    aput-object p4, v1, v0

    .line 91
    return-void
.end method

.method public append(IILjava/lang/String;)V
    .locals 3
    .parameter "handle"
    .parameter "property"
    .parameter "value"

    .prologue
    .line 69
    iget v0, p0, Landroid/mtp/MtpPropertyList;->mCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/mtp/MtpPropertyList;->mCount:I

    .line 70
    .local v0, index:I
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mStringValues:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 71
    iget v1, p0, Landroid/mtp/MtpPropertyList;->mMaxCount:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/mtp/MtpPropertyList;->mStringValues:[Ljava/lang/String;

    .line 73
    :cond_0
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mObjectHandles:[I

    aput p1, v1, v0

    .line 74
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mPropertyCodes:[I

    aput p2, v1, v0

    .line 75
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mDataTypes:[I

    const v2, 0xffff

    aput v2, v1, v0

    .line 76
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mStringValues:[Ljava/lang/String;

    aput-object p3, v1, v0

    .line 77
    return-void
.end method

.method public setResult(I)V
    .locals 0
    .parameter "result"

    .prologue
    .line 94
    iput p1, p0, Landroid/mtp/MtpPropertyList;->mResult:I

    .line 95
    return-void
.end method
