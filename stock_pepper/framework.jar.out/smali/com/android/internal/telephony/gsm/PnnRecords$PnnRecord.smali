.class public Lcom/android/internal/telephony/gsm/PnnRecords$PnnRecord;
.super Ljava/lang/Object;
.source "PnnRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/PnnRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PnnRecord"
.end annotation


# static fields
.field static final TAG_ADDL_INFO:I = 0x80

.field static final TAG_FULL_NAME_IEI:I = 0x43

.field static final TAG_SHORT_NAME_IEI:I = 0x45


# instance fields
.field private mAddlInfo:Ljava/lang/String;

.field private mFullName:Ljava/lang/String;

.field private mShortName:Ljava/lang/String;


# direct methods
.method constructor <init>([B)V
    .locals 4
    .parameter "record"

    .prologue
    const/4 v3, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v1, p1

    invoke-direct {v0, p1, v3, v1}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 109
    .local v0, tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v1

    const/16 v2, 0x43

    if-ne v1, v2, :cond_0

    .line 110
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v1, v3, v2}, Lcom/android/internal/telephony/IccUtils;->networkNameToString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/PnnRecords$PnnRecord;->mFullName:Ljava/lang/String;

    .line 117
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    .line 118
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v1

    const/16 v2, 0x45

    if-ne v1, v2, :cond_1

    .line 119
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v1, v3, v2}, Lcom/android/internal/telephony/IccUtils;->networkNameToString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/PnnRecords$PnnRecord;->mShortName:Ljava/lang/String;

    .line 126
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    .line 127
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v1

    const/16 v2, 0x80

    if-ne v1, v2, :cond_2

    .line 128
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v1, v3, v2}, Lcom/android/internal/telephony/IccUtils;->networkNameToString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/PnnRecords$PnnRecord;->mAddlInfo:Ljava/lang/String;

    .line 134
    :cond_2
    return-void
.end method


# virtual methods
.method public getAddlInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/PnnRecords$PnnRecord;->mAddlInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/PnnRecords$PnnRecord;->mFullName:Ljava/lang/String;

    return-object v0
.end method

.method public getShortName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/PnnRecords$PnnRecord;->mShortName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Full Name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/PnnRecords$PnnRecord;->mFullName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Short Name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/PnnRecords$PnnRecord;->mShortName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Additional Info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/PnnRecords$PnnRecord;->mAddlInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
