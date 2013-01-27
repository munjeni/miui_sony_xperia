.class public Lmiui/micloud/MicloudPushType;
.super Ljava/lang/Object;
.source "MicloudPushType.java"


# instance fields
.field private final mContentAuthority:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;

.field private final mPushName:Ljava/lang/String;

.field private final mPushType:Ljava/lang/String;

.field private mWatermark:J

.field private final mWatermarkType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "packageName"
    .parameter "contentAuthority"
    .parameter "pushType"
    .parameter "pushName"

    .prologue
    .line 32
    const-string/jumbo v5, "p"

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lmiui/micloud/MicloudPushType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .parameter "packageName"
    .parameter "contentAuthority"
    .parameter "pushType"
    .parameter "pushName"
    .parameter "watermarkType"
    .parameter "watermark"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "the packageName, contentAuthority, pushType and pushName must not be empty: "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_1
    iput-object p1, p0, Lmiui/micloud/MicloudPushType;->mPackageName:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lmiui/micloud/MicloudPushType;->mContentAuthority:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lmiui/micloud/MicloudPushType;->mPushType:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lmiui/micloud/MicloudPushType;->mPushName:Ljava/lang/String;

    .line 26
    iput-object p5, p0, Lmiui/micloud/MicloudPushType;->mWatermarkType:Ljava/lang/String;

    .line 27
    iput-wide p6, p0, Lmiui/micloud/MicloudPushType;->mWatermark:J

    .line 28
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 62
    if-ne p1, p0, :cond_1

    .line 67
    :cond_0
    :goto_0
    return v1

    .line 64
    :cond_1
    instance-of v3, p1, Lmiui/micloud/MicloudPushType;

    if-nez v3, :cond_2

    move v1, v2

    .line 65
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 66
    check-cast v0, Lmiui/micloud/MicloudPushType;

    .line 67
    .local v0, other:Lmiui/micloud/MicloudPushType;
    iget-object v3, p0, Lmiui/micloud/MicloudPushType;->mPackageName:Ljava/lang/String;

    iget-object v4, v0, Lmiui/micloud/MicloudPushType;->mPackageName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lmiui/micloud/MicloudPushType;->mContentAuthority:Ljava/lang/String;

    iget-object v4, v0, Lmiui/micloud/MicloudPushType;->mContentAuthority:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lmiui/micloud/MicloudPushType;->mPushType:Ljava/lang/String;

    iget-object v4, v0, Lmiui/micloud/MicloudPushType;->mPushType:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lmiui/micloud/MicloudPushType;->mPushName:Ljava/lang/String;

    iget-object v4, v0, Lmiui/micloud/MicloudPushType;->mPushName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lmiui/micloud/MicloudPushType;->mWatermarkType:Ljava/lang/String;

    iget-object v4, v0, Lmiui/micloud/MicloudPushType;->mWatermarkType:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-wide v3, p0, Lmiui/micloud/MicloudPushType;->mWatermark:J

    iget-wide v5, v0, Lmiui/micloud/MicloudPushType;->mWatermark:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getContentAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lmiui/micloud/MicloudPushType;->mContentAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lmiui/micloud/MicloudPushType;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPushName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lmiui/micloud/MicloudPushType;->mPushName:Ljava/lang/String;

    return-object v0
.end method

.method public getPushType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lmiui/micloud/MicloudPushType;->mPushType:Ljava/lang/String;

    return-object v0
.end method

.method public getWatermark()J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lmiui/micloud/MicloudPushType;->mWatermark:J

    return-wide v0
.end method

.method public getWatermarkType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lmiui/micloud/MicloudPushType;->mWatermarkType:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 77
    const/16 v0, 0x11

    .line 78
    .local v0, result:I
    iget-object v1, p0, Lmiui/micloud/MicloudPushType;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 79
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lmiui/micloud/MicloudPushType;->mContentAuthority:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 80
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lmiui/micloud/MicloudPushType;->mPushType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 81
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lmiui/micloud/MicloudPushType;->mPushName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 82
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lmiui/micloud/MicloudPushType;->mWatermarkType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 83
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lmiui/micloud/MicloudPushType;->mWatermark:J

    iget-wide v4, p0, Lmiui/micloud/MicloudPushType;->mWatermark:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 84
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MicloudPushType {packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/micloud/MicloudPushType;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contentAuthority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/micloud/MicloudPushType;->mContentAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pushType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/micloud/MicloudPushType;->mPushType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pushName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/micloud/MicloudPushType;->mPushName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", watermarkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/micloud/MicloudPushType;->mWatermarkType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", watermark="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lmiui/micloud/MicloudPushType;->mWatermark:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
