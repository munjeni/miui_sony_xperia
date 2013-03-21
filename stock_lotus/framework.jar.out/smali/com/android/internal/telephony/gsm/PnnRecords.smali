.class public final Lcom/android/internal/telephony/gsm/PnnRecords;
.super Ljava/lang/Object;
.source "PnnRecords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/PnnRecords$PnnRecord;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "GSM"


# instance fields
.field private mCurrentEons:Ljava/lang/String;

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/PnnRecords$PnnRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/PnnRecords;->mRecords:Ljava/util/ArrayList;

    .line 47
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/PnnRecords;->mCurrentEons:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 50
    .local v1, record:[B
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/PnnRecords;->mRecords:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/PnnRecords$PnnRecord;

    invoke-direct {v3, v1}, Lcom/android/internal/telephony/gsm/PnnRecords$PnnRecord;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 56
    .end local v1           #record:[B
    :cond_0
    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 59
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PnnRecords EONS] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void
.end method

.method public static loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 63
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PnnRecords EONS] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method


# virtual methods
.method public getCurrentEons()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/PnnRecords;->mCurrentEons:Ljava/lang/String;

    return-object v0
.end method

.method public getNameFromPnnRecord(IZ)Ljava/lang/String;
    .locals 3
    .parameter "recordNumber"
    .parameter "update"

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 84
    .local v0, fullName:Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/PnnRecords;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le p1, v1, :cond_2

    .line 85
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid PNN record number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/PnnRecords;->loge(Ljava/lang/String;)V

    .line 92
    :goto_0
    if-eqz p2, :cond_1

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/PnnRecords;->mCurrentEons:Ljava/lang/String;

    .line 93
    :cond_1
    return-object v0

    .line 87
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/PnnRecords;->mRecords:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/PnnRecords$PnnRecord;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/PnnRecords$PnnRecord;->getFullName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/PnnRecords;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
