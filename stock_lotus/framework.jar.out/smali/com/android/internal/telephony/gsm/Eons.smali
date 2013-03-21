.class public final Lcom/android/internal/telephony/gsm/Eons;
.super Ljava/lang/Object;
.source "Eons.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/Eons$1;,
        Lcom/android/internal/telephony/gsm/Eons$EonsControlState;,
        Lcom/android/internal/telephony/gsm/Eons$EonsState;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "GSM"


# instance fields
.field mEonsState:Lcom/android/internal/telephony/gsm/Eons$EonsState;

.field mOplDataState:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

.field private mOplLoaded:Z

.field mOplRecords:Lcom/android/internal/telephony/gsm/OplRecords;

.field mPnnDataState:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

.field private mPnnLoaded:Z

.field mPnnRecords:Lcom/android/internal/telephony/gsm/PnnRecords;

.field private mSstLoaded:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsControlState;->INITING:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnDataState:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    .line 96
    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsControlState;->INITING:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mOplDataState:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    .line 97
    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsState;->INITING:Lcom/android/internal/telephony/gsm/Eons$EonsState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mEonsState:Lcom/android/internal/telephony/gsm/Eons$EonsState;

    .line 100
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnLoaded:Z

    .line 101
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/Eons;->mOplLoaded:Z

    .line 102
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/Eons;->mSstLoaded:Z

    .line 106
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/Eons;->reset()V

    .line 107
    return-void
.end method

.method private getEonsState()Lcom/android/internal/telephony/gsm/Eons$EonsState;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mEonsState:Lcom/android/internal/telephony/gsm/Eons$EonsState;

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 354
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EONS] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 358
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EONS] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    return-void
.end method

.method private updateEonsFromOplAndPnn(Ljava/lang/String;I)V
    .locals 4
    .parameter "regOperator"
    .parameter "lac"

    .prologue
    const/4 v3, 0x1

    .line 249
    const/4 v1, 0x0

    .line 250
    .local v1, pnnRecord:I
    const/4 v0, 0x0

    .line 252
    .local v0, pnnName:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/Eons;->mOplRecords:Lcom/android/internal/telephony/gsm/OplRecords;

    if-eqz v2, :cond_0

    .line 253
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/Eons;->mOplRecords:Lcom/android/internal/telephony/gsm/OplRecords;

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/internal/telephony/gsm/OplRecords;->getMatchingPnnRecord(Ljava/lang/String;IZ)I

    move-result v1

    .line 255
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnRecords:Lcom/android/internal/telephony/gsm/PnnRecords;

    if-eqz v2, :cond_1

    .line 256
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnRecords:Lcom/android/internal/telephony/gsm/PnnRecords;

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/telephony/gsm/PnnRecords;->getNameFromPnnRecord(IZ)Ljava/lang/String;

    move-result-object v0

    .line 258
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fetched EONS name from EF_PNN record = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/Eons;->log(Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method private updateEonsIfHplmn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "regOperator"
    .parameter "hplmn"

    .prologue
    const/4 v3, 0x1

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Comparing hplmn, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with registered plmn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/Eons;->log(Ljava/lang/String;)V

    .line 270
    const/4 v0, 0x0

    .line 273
    .local v0, pnnName:Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    const-string v1, "config_use_firstPnnRecord"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 277
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnRecords:Lcom/android/internal/telephony/gsm/PnnRecords;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnRecords:Lcom/android/internal/telephony/gsm/PnnRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/PnnRecords;->size()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 278
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnRecords:Lcom/android/internal/telephony/gsm/PnnRecords;

    invoke-virtual {v1, v3, v3}, Lcom/android/internal/telephony/gsm/PnnRecords;->getNameFromPnnRecord(IZ)Ljava/lang/String;

    move-result-object v0

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "config_use_firstPnnRecord, Fetched EONS name from EF_PNN\'s first record, name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/Eons;->log(Ljava/lang/String;)V

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnRecords:Lcom/android/internal/telephony/gsm/PnnRecords;

    invoke-virtual {v1, v3, v3}, Lcom/android/internal/telephony/gsm/PnnRecords;->getNameFromPnnRecord(IZ)Ljava/lang/String;

    move-result-object v0

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fetched EONS name from EF_PNN\'s first record, name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/Eons;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateEonsState()V
    .locals 2

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mSstLoaded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnLoaded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mOplLoaded:Z

    if-nez v0, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$1;->$SwitchMap$com$android$internal$telephony$gsm$Eons$EonsState:[I

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/Eons;->mEonsState:Lcom/android/internal/telephony/gsm/Eons$EonsState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/Eons$EonsState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 349
    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsState;->DISABLED:Lcom/android/internal/telephony/gsm/Eons$EonsState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mEonsState:Lcom/android/internal/telephony/gsm/Eons$EonsState;

    goto :goto_0

    .line 337
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnDataState:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/Eons$EonsControlState;->isAbsent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 338
    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsState;->DISABLED:Lcom/android/internal/telephony/gsm/Eons$EonsState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mEonsState:Lcom/android/internal/telephony/gsm/Eons$EonsState;

    goto :goto_0

    .line 339
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mOplDataState:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/Eons$EonsControlState;->isAbsent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsState;->PNN_PRESENT:Lcom/android/internal/telephony/gsm/Eons$EonsState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mEonsState:Lcom/android/internal/telephony/gsm/Eons$EonsState;

    goto :goto_0

    .line 344
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnDataState:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/Eons$EonsControlState;->isAbsent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsState;->DISABLED:Lcom/android/internal/telephony/gsm/Eons$EonsState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mEonsState:Lcom/android/internal/telephony/gsm/Eons$EonsState;

    goto :goto_0

    .line 335
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getEons()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnRecords:Lcom/android/internal/telephony/gsm/PnnRecords;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnRecords:Lcom/android/internal/telephony/gsm/PnnRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/PnnRecords;->getCurrentEons()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getEonsForAvailableNetworks(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, avlNetworks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    const/4 v11, 0x0

    .line 199
    const/4 v6, 0x0

    .line 201
    .local v6, eonsNetworkNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/Eons;->getEonsState()Lcom/android/internal/telephony/gsm/Eons$EonsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/Eons$EonsState;->isPnnAndOplPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    const-string v0, "OPL/PNN data is not available. Use the network names from Ril."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/Eons;->loge(Ljava/lang/String;)V

    .line 203
    const/4 v0, 0x0

    .line 238
    :goto_0
    return-object v0

    .line 206
    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 207
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 208
    .local v10, size:I
    new-instance v6, Ljava/util/ArrayList;

    .end local v6           #eonsNetworkNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    invoke-direct {v6, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 209
    .restart local v6       #eonsNetworkNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Available Networks List Size = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/Eons;->log(Ljava/lang/String;)V

    .line 210
    const/4 v9, 0x0

    .line 211
    .local v9, pnnRecord:I
    const/4 v1, 0x0

    .line 213
    .local v1, pnnName:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v10, :cond_5

    .line 214
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/OperatorInfo;

    .line 216
    .local v8, ni:Lcom/android/internal/telephony/OperatorInfo;
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mOplRecords:Lcom/android/internal/telephony/gsm/OplRecords;

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mOplRecords:Lcom/android/internal/telephony/gsm/OplRecords;

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3, v11}, Lcom/android/internal/telephony/gsm/OplRecords;->getMatchingPnnRecord(Ljava/lang/String;IZ)I

    move-result v9

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnRecords:Lcom/android/internal/telephony/gsm/PnnRecords;

    if-eqz v0, :cond_2

    .line 221
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnRecords:Lcom/android/internal/telephony/gsm/PnnRecords;

    invoke-virtual {v0, v9, v11}, Lcom/android/internal/telephony/gsm/PnnRecords;->getNameFromPnnRecord(IZ)Ljava/lang/String;

    move-result-object v1

    .line 224
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PLMN = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", ME Name = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", PNN Name = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/Eons;->log(Ljava/lang/String;)V

    .line 228
    if-nez v1, :cond_3

    .line 229
    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    .line 231
    :cond_3
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo;

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getState()Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v4

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getRAT()Lcom/android/internal/telephony/OperatorInfo$RAT;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/OperatorInfo$State;Lcom/android/internal/telephony/OperatorInfo$RAT;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 235
    .end local v1           #pnnName:Ljava/lang/String;
    .end local v7           #i:I
    .end local v8           #ni:Lcom/android/internal/telephony/OperatorInfo;
    .end local v9           #pnnRecord:I
    .end local v10           #size:I
    :cond_4
    const-string v0, "Available Networks List is empty"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/Eons;->loge(Ljava/lang/String;)V

    :cond_5
    move-object v0, v6

    .line 238
    goto/16 :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 111
    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsControlState;->INITING:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnDataState:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    .line 112
    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsControlState;->INITING:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mOplDataState:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    .line 113
    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsState;->INITING:Lcom/android/internal/telephony/gsm/Eons$EonsState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mEonsState:Lcom/android/internal/telephony/gsm/Eons$EonsState;

    .line 114
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/Eons;->mOplRecords:Lcom/android/internal/telephony/gsm/OplRecords;

    .line 115
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnRecords:Lcom/android/internal/telephony/gsm/PnnRecords;

    .line 116
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnLoaded:Z

    .line 117
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/Eons;->mOplLoaded:Z

    .line 118
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/Eons;->mSstLoaded:Z

    .line 119
    return-void
.end method

.method public resetOplData()V
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsControlState;->ABSENT:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mOplDataState:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mOplLoaded:Z

    .line 131
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/Eons;->updateEonsState()V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mOplRecords:Lcom/android/internal/telephony/gsm/OplRecords;

    .line 133
    return-void
.end method

.method public resetPnnData()V
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsControlState;->ABSENT:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnDataState:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnLoaded:Z

    .line 145
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/Eons;->updateEonsState()V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnRecords:Lcom/android/internal/telephony/gsm/PnnRecords;

    .line 147
    return-void
.end method

.method setEonsState(ILcom/android/internal/telephony/IccCardApplication$AppType;)V
    .locals 3
    .parameter "sstPlmnOplValue"
    .parameter "iccType"

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 303
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-ne p2, v0, :cond_0

    const/16 v0, 0xf

    if-eq p1, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-ne p2, v0, :cond_2

    if-ne p1, v2, :cond_2

    .line 305
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsState;->PNN_AND_OPL_PRESENT:Lcom/android/internal/telephony/gsm/Eons$EonsState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mEonsState:Lcom/android/internal/telephony/gsm/Eons$EonsState;

    .line 306
    const-string v0, "SST: PNN and OPL services are enabled "

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/Eons;->log(Ljava/lang/String;)V

    .line 315
    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/Eons;->mSstLoaded:Z

    .line 316
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/Eons;->updateEonsState()V

    .line 317
    return-void

    .line 307
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-ne p2, v0, :cond_3

    if-eq p1, v2, :cond_4

    :cond_3
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-ne p2, v0, :cond_5

    if-ne p1, v1, :cond_5

    .line 309
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsState;->PNN_PRESENT:Lcom/android/internal/telephony/gsm/Eons$EonsState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mEonsState:Lcom/android/internal/telephony/gsm/Eons$EonsState;

    .line 310
    const-string v0, "SST: PNN is enabled and OPL is disabled "

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/Eons;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 312
    :cond_5
    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsState;->DISABLED:Lcom/android/internal/telephony/gsm/Eons$EonsState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mEonsState:Lcom/android/internal/telephony/gsm/Eons$EonsState;

    .line 313
    const-string v0, "SST: PNN disabled, disabling EONS "

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/Eons;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setOplData(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsControlState;->PRESENT:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mOplDataState:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mOplLoaded:Z

    .line 124
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/Eons;->updateEonsState()V

    .line 125
    new-instance v0, Lcom/android/internal/telephony/gsm/OplRecords;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/gsm/OplRecords;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mOplRecords:Lcom/android/internal/telephony/gsm/OplRecords;

    .line 126
    return-void
.end method

.method public setPnnData(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsControlState;->PRESENT:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnDataState:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnLoaded:Z

    .line 138
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/Eons;->updateEonsState()V

    .line 139
    new-instance v0, Lcom/android/internal/telephony/gsm/PnnRecords;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/gsm/PnnRecords;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnRecords:Lcom/android/internal/telephony/gsm/PnnRecords;

    .line 140
    return-void
.end method

.method public updateEons(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 2
    .parameter "regOperator"
    .parameter "lac"
    .parameter "hplmn"

    .prologue
    .line 169
    const/4 v0, 0x1

    .line 171
    .local v0, needsOperatorNameUpdate:Z
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/Eons;->getEonsState()Lcom/android/internal/telephony/gsm/Eons$EonsState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/Eons$EonsState;->isPnnAndOplPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/Eons;->updateEonsFromOplAndPnn(Ljava/lang/String;I)V

    .line 189
    :goto_0
    return v0

    .line 177
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/Eons;->getEonsState()Lcom/android/internal/telephony/gsm/Eons$EonsState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/Eons$EonsState;->isPnnPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    invoke-direct {p0, p1, p3}, Lcom/android/internal/telephony/gsm/Eons;->updateEonsIfHplmn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_1
    const-string v1, "Reading data from EF_OPL or EF_PNN is not complete. Suppress operator name display until all EF_OPL/EF_PNN data is read."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/Eons;->log(Ljava/lang/String;)V

    .line 184
    const/4 v0, 0x0

    goto :goto_0
.end method
