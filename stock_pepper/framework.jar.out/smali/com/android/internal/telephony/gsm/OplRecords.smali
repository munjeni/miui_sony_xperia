.class public final Lcom/android/internal/telephony/gsm/OplRecords;
.super Ljava/lang/Object;
.source "OplRecords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/OplRecords$OplRecord;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final wildCardDigit:I = 0xd


# instance fields
.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/OplRecords$OplRecord;",
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
    .line 43
    .local p1, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/OplRecords;->mRecords:Ljava/util/ArrayList;

    .line 46
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

    .line 47
    .local v1, record:[B
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/OplRecords;->mRecords:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/gsm/OplRecords$OplRecord;

    invoke-direct {v3, v1}, Lcom/android/internal/telephony/gsm/OplRecords$OplRecord;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 53
    .end local v1           #record:[B
    :cond_0
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 56
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OplRecords EONS] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 60
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OplRecords EONS] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void
.end method

.method private matchPlmn([I[I)Z
    .locals 8
    .parameter "simPlmn"
    .parameter "bcchPlmn"

    .prologue
    const/4 v7, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x0

    .line 120
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v6

    .line 124
    :cond_1
    array-length v2, p1

    .line 125
    .local v2, len1:I
    array-length v3, p2

    .line 126
    .local v3, len2:I
    const/4 v1, 0x0

    .line 127
    .local v1, len:I
    if-ne v2, v3, :cond_4

    .line 128
    move v1, v2

    .line 143
    :cond_2
    :goto_1
    const/4 v4, 0x1

    .line 144
    .local v4, match:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v1, :cond_7

    .line 145
    aget v5, p2, v0

    aget v7, p1, v0

    if-eq v5, v7, :cond_3

    aget v5, p1, v0

    const/16 v7, 0xd

    if-ne v5, v7, :cond_6

    :cond_3
    const/4 v5, 0x1

    :goto_3
    and-int/2addr v4, v5

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 129
    .end local v0           #i:I
    .end local v4           #match:Z
    :cond_4
    if-ne v2, v5, :cond_5

    if-ne v3, v7, :cond_5

    .line 130
    aget v5, p2, v5

    if-nez v5, :cond_0

    .line 133
    move v1, v2

    goto :goto_1

    .line 135
    :cond_5
    if-ne v3, v5, :cond_2

    if-ne v2, v7, :cond_2

    .line 136
    aget v5, p1, v5

    if-nez v5, :cond_0

    .line 139
    move v1, v3

    goto :goto_1

    .restart local v0       #i:I
    .restart local v4       #match:Z
    :cond_6
    move v5, v6

    .line 145
    goto :goto_3

    :cond_7
    move v6, v4

    .line 149
    goto :goto_0
.end method


# virtual methods
.method public getMatchingPnnRecord(Ljava/lang/String;IZ)I
    .locals 8
    .parameter "operator"
    .parameter "lac"
    .parameter "useLac"

    .prologue
    const/4 v7, 0x6

    const/4 v5, 0x0

    .line 76
    if-nez p1, :cond_0

    move v3, v5

    .line 77
    .local v3, length:I
    :goto_0
    if-nez v3, :cond_1

    .line 78
    const-string v6, "No registered operator."

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/OplRecords;->loge(Ljava/lang/String;)V

    .line 110
    :goto_1
    return v5

    .line 76
    .end local v3           #length:I
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_0

    .line 80
    .restart local v3       #length:I
    :cond_1
    if-eqz p3, :cond_2

    const/4 v6, -0x1

    if-ne p2, v6, :cond_2

    .line 81
    const-string v6, "Invalid LAC"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/OplRecords;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 85
    :cond_2
    const/4 v6, 0x5

    if-eq v3, v6, :cond_3

    if-eq v3, v7, :cond_3

    .line 86
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid registered operator length "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/OplRecords;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 90
    :cond_3
    new-array v0, v7, [I

    fill-array-data v0, :array_0

    .line 92
    .local v0, bcchPlmn:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v3, :cond_4

    .line 93
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v6, v6, -0x30

    aput v6, v0, v1

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 96
    :cond_4
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/OplRecords;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gsm/OplRecords$OplRecord;

    .line 97
    .local v4, record:Lcom/android/internal/telephony/gsm/OplRecords$OplRecord;
    #getter for: Lcom/android/internal/telephony/gsm/OplRecords$OplRecord;->mPlmn:[I
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/OplRecords$OplRecord;->access$000(Lcom/android/internal/telephony/gsm/OplRecords$OplRecord;)[I

    move-result-object v6

    invoke-direct {p0, v6, v0}, Lcom/android/internal/telephony/gsm/OplRecords;->matchPlmn([I[I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 100
    if-eqz p3, :cond_6

    #getter for: Lcom/android/internal/telephony/gsm/OplRecords$OplRecord;->mLac1:I
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/OplRecords$OplRecord;->access$100(Lcom/android/internal/telephony/gsm/OplRecords$OplRecord;)I

    move-result v6

    if-gt v6, p2, :cond_5

    #getter for: Lcom/android/internal/telephony/gsm/OplRecords$OplRecord;->mLac2:I
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/OplRecords$OplRecord;->access$200(Lcom/android/internal/telephony/gsm/OplRecords$OplRecord;)I

    move-result v6

    if-gt p2, v6, :cond_5

    .line 102
    :cond_6
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/OplRecords$OplRecord;->getPnnRecordNumber()I

    move-result v5

    goto :goto_1

    .line 109
    .end local v4           #record:Lcom/android/internal/telephony/gsm/OplRecords$OplRecord;
    :cond_7
    const-string v6, "No matching OPL record found."

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/OplRecords;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 90
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public size()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OplRecords;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
