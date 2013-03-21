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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsControlState;->INITING:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnDataState:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsControlState;->INITING:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mOplDataState:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsState;->INITING:Lcom/android/internal/telephony/gsm/Eons$EonsState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mEonsState:Lcom/android/internal/telephony/gsm/Eons$EonsState;

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnLoaded:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/Eons;->mOplLoaded:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/Eons;->mSstLoaded:Z

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/Eons;->reset()V

    return-void
.end method

.method private getEonsState()Lcom/android/internal/telephony/gsm/Eons$EonsState;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mEonsState:Lcom/android/internal/telephony/gsm/Eons$EonsState;

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
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

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
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

    return-void
.end method

.method private updateEonsFromOplAndPnn(Ljava/lang/String;I)V
    .locals 4
    .parameter "regOperator"
    .parameter "lac"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .local v1, pnnRecord:I
    const/4 v0, 0x0

    .local v0, pnnName:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/Eons;->mOplRecords:Lcom/android/internal/telephony/gsm/OplRecords;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/Eons;->mOplRecords:Lcom/android/internal/telephony/gsm/OplRecords;

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/internal/telephony/gsm/OplRecords;->getMatchingPnnRecord(Ljava/lang/String;IZ)I

    move-result v1

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnRecords:Lcom/android/internal/telephony/gsm/PnnRecords;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnRecords:Lcom/android/internal/telephony/gsm/PnnRecords;

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/telephony/gsm/PnnRecords;->getNameFromPnnRecord(IZ)Ljava/lang/String;

    move-result-object v0

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

    return-void
.end method

.method private updateEonsIfHplmn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "regOperator"
    .parameter "hplmn"

    .prologue
    const/4 v3, 0x1

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

    const/4 v0, 0x0

    .local v0, pnnName:Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "config_use_firstPnnRecord"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnRecords:Lcom/android/internal/telephony/gsm/PnnRecords;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnRecords:Lcom/android/internal/telephony/gsm/PnnRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/PnnRecords;->size()I

    move-result v1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnRecords:Lcom/android/internal/telephony/gsm/PnnRecords;

    invoke-virtual {v1, v3, v3}, Lcom/android/internal/telephony/gsm/PnnRecords;->getNameFromPnnRecord(IZ)Ljava/lang/String;

    move-result-object v0

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

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnRecords:Lcom/android/internal/telephony/gsm/PnnRecords;

    invoke-virtual {v1, v3, v3}, Lcom/android/internal/telephony/gsm/PnnRecords;->getNameFromPnnRecord(IZ)Ljava/lang/String;

    move-result-object v0

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
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mSstLoaded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnLoaded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mOplLoaded:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$1;->$SwitchMap$com$android$internal$telephony$gsm$Eons$EonsState:[I

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/Eons;->mEonsState:Lcom/android/internal/telephony/gsm/Eons$EonsState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/Eons$EonsState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsState;->DISABLED:Lcom/android/internal/telephony/gsm/Eons$EonsState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mEonsState:Lcom/android/internal/telephony/gsm/Eons$EonsState;

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnDataState:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/Eons$EonsControlState;->isAbsent()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsState;->DISABLED:Lcom/android/internal/telephony/gsm/Eons$EonsState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mEonsState:Lcom/android/internal/telephony/gsm/Eons$EonsState;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mOplDataState:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/Eons$EonsControlState;->isAbsent()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsState;->PNN_PRESENT:Lcom/android/internal/telephony/gsm/Eons$EonsState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mEonsState:Lcom/android/internal/telephony/gsm/Eons$EonsState;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnDataState:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/Eons$EonsControlState;->isAbsent()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsState;->DISABLED:Lcom/android/internal/telephony/gsm/Eons$EonsState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mEonsState:Lcom/android/internal/telephony/gsm/Eons$EonsState;

    goto :goto_0

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

    const/4 v6, 0x0

    .local v6, eonsNetworkNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/Eons;->getEonsState()Lcom/android/internal/telephony/gsm/Eons$EonsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/Eons$EonsState;->isPnnAndOplPresent()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "OPL/PNN data is not available. Use the network names from Ril."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/Eons;->loge(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    .local v10, size:I
    new-instance v6, Ljava/util/ArrayList;

    .end local v6           #eonsNetworkNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    invoke-direct {v6, v10}, Ljava/util/ArrayList;-><init>(I)V

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

    const/4 v9, 0x0

    .local v9, pnnRecord:I
    const/4 v1, 0x0

    .local v1, pnnName:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v10, :cond_5

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/OperatorInfo;

    .local v8, ni:Lcom/android/internal/telephony/OperatorInfo;
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mOplRecords:Lcom/android/internal/telephony/gsm/OplRecords;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mOplRecords:Lcom/android/internal/telephony/gsm/OplRecords;

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3, v11}, Lcom/android/internal/telephony/gsm/OplRecords;->getMatchingPnnRecord(Ljava/lang/String;IZ)I

    move-result v9

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnRecords:Lcom/android/internal/telephony/gsm/PnnRecords;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnRecords:Lcom/android/internal/telephony/gsm/PnnRecords;

    invoke-virtual {v0, v9, v11}, Lcom/android/internal/telephony/gsm/PnnRecords;->getNameFromPnnRecord(IZ)Ljava/lang/String;

    move-result-object v1

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

    if-nez v1, :cond_3

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

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

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

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

    goto/16 :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsControlState;->INITING:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnDataState:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsControlState;->INITING:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mOplDataState:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsState;->INITING:Lcom/android/internal/telephony/gsm/Eons$EonsState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mEonsState:Lcom/android/internal/telephony/gsm/Eons$EonsState;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/Eons;->mOplRecords:Lcom/android/internal/telephony/gsm/OplRecords;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnRecords:Lcom/android/internal/telephony/gsm/PnnRecords;

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnLoaded:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/Eons;->mOplLoaded:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/Eons;->mSstLoaded:Z

    return-void
.end method

.method public resetOplData()V
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsControlState;->ABSENT:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mOplDataState:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mOplLoaded:Z

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/Eons;->updateEonsState()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mOplRecords:Lcom/android/internal/telephony/gsm/OplRecords;

    return-void
.end method

.method public resetPnnData()V
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsControlState;->ABSENT:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnDataState:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnLoaded:Z

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/Eons;->updateEonsState()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnRecords:Lcom/android/internal/telephony/gsm/PnnRecords;

    return-void
.end method

.method setEonsState(ILcom/android/internal/telephony/IccCardApplication$AppType;)V
    .locals 3
    .parameter "sstPlmnOplValue"
    .parameter "iccType"

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-ne p2, v0, :cond_0

    const/16 v0, 0xf

    if-eq p1, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-ne p2, v0, :cond_2

    if-ne p1, v2, :cond_2

    :cond_1
    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsState;->PNN_AND_OPL_PRESENT:Lcom/android/internal/telephony/gsm/Eons$EonsState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mEonsState:Lcom/android/internal/telephony/gsm/Eons$EonsState;

    const-string v0, "SST: PNN and OPL services are enabled "

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/Eons;->log(Ljava/lang/String;)V

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/Eons;->mSstLoaded:Z

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/Eons;->updateEonsState()V

    return-void

    :cond_2
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-ne p2, v0, :cond_3

    if-eq p1, v2, :cond_4

    :cond_3
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-ne p2, v0, :cond_5

    if-ne p1, v1, :cond_5

    :cond_4
    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsState;->PNN_PRESENT:Lcom/android/internal/telephony/gsm/Eons$EonsState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mEonsState:Lcom/android/internal/telephony/gsm/Eons$EonsState;

    const-string v0, "SST: PNN is enabled and OPL is disabled "

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/Eons;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsState;->DISABLED:Lcom/android/internal/telephony/gsm/Eons$EonsState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mEonsState:Lcom/android/internal/telephony/gsm/Eons$EonsState;

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
    .local p1, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsControlState;->PRESENT:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mOplDataState:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mOplLoaded:Z

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/Eons;->updateEonsState()V

    new-instance v0, Lcom/android/internal/telephony/gsm/OplRecords;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/gsm/OplRecords;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mOplRecords:Lcom/android/internal/telephony/gsm/OplRecords;

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
    .local p1, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    sget-object v0, Lcom/android/internal/telephony/gsm/Eons$EonsControlState;->PRESENT:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnDataState:Lcom/android/internal/telephony/gsm/Eons$EonsControlState;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnLoaded:Z

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/Eons;->updateEonsState()V

    new-instance v0, Lcom/android/internal/telephony/gsm/PnnRecords;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/gsm/PnnRecords;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/Eons;->mPnnRecords:Lcom/android/internal/telephony/gsm/PnnRecords;

    return-void
.end method

.method public updateEons(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 2
    .parameter "regOperator"
    .parameter "lac"
    .parameter "hplmn"

    .prologue
    const/4 v0, 0x1

    .local v0, needsOperatorNameUpdate:Z
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/Eons;->getEonsState()Lcom/android/internal/telephony/gsm/Eons$EonsState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/Eons$EonsState;->isPnnAndOplPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/Eons;->updateEonsFromOplAndPnn(Ljava/lang/String;I)V

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/Eons;->getEonsState()Lcom/android/internal/telephony/gsm/Eons$EonsState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/Eons$EonsState;->isPnnPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, p3}, Lcom/android/internal/telephony/gsm/Eons;->updateEonsIfHplmn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "Reading data from EF_OPL or EF_PNN is not complete. Suppress operator name display until all EF_OPL/EF_PNN data is read."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/Eons;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
