.class Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;
.super Ljava/lang/Object;
.source "UsimPhoneBookManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PbrRecord"
.end annotation


# instance fields
.field final mEfFiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mIccPBCapacityInfo:Lcom/android/internal/telephony/IccPBCapacityInfo;

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)V
    .locals 1
    .parameter

    .prologue
    .line 1292
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1293
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->mEfFiles:Ljava/util/HashMap;

    .line 1294
    new-instance v0, Lcom/android/internal/telephony/IccPBCapacityInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/IccPBCapacityInfo;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->mIccPBCapacityInfo:Lcom/android/internal/telephony/IccPBCapacityInfo;

    .line 1295
    return-void
.end method


# virtual methods
.method public addEfFile(III)V
    .locals 3
    .parameter "fileType"
    .parameter "efType"
    .parameter "efId"

    .prologue
    .line 1392
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->mEfFiles:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1394
    .local v0, efFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;>;"
    if-nez v0, :cond_0

    .line 1395
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #efFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1396
    .restart local v0       #efFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;>;"
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->mEfFiles:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1398
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;-><init>(III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1399
    return-void
.end method

.method public filesExist(I)Z
    .locals 3
    .parameter "fileType"

    .prologue
    .line 1323
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->mEfFiles:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1324
    .local v0, efFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAllFilesOfEfType(I)Ljava/util/ArrayList;
    .locals 7
    .parameter "efType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1370
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->mEfFiles:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1371
    .local v0, collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;>;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1373
    .local v3, filesFound:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1374
    .local v2, files:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;

    .line 1375
    .local v1, efFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getEfType()I

    move-result v6

    if-ne v6, p1, :cond_1

    .line 1376
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1380
    .end local v1           #efFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;
    .end local v2           #files:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;>;"
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_2
    return-object v3
.end method

.method public getFiles(I)Ljava/util/ArrayList;
    .locals 2
    .parameter "fileType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->mEfFiles:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFiles(II)Ljava/util/List;
    .locals 5
    .parameter "fileType"
    .parameter "efType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1337
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->getFiles(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 1338
    .local v3, simFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;>;"
    if-nez v3, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 1346
    :cond_0
    return-object v1

    .line 1340
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1341
    .local v1, filteredFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;

    .line 1342
    .local v0, ef:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getEfType()I

    move-result v4

    if-ne v4, p2, :cond_2

    .line 1343
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getIAPIndex(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;)I
    .locals 4
    .parameter "searchedEfFile"

    .prologue
    .line 1305
    const/16 v3, 0xa9

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->getFiles(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1306
    .local v2, type2Files:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;>;"
    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 1313
    :cond_0
    :goto_0
    return v0

    .line 1308
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getEfId()I

    move-result v1

    .line 1309
    .local v1, searchEfId:I
    const/4 v0, 0x0

    .local v0, index:I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1310
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getEfId()I

    move-result v3

    if-eq v3, v1, :cond_0

    .line 1309
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1313
    :cond_2
    const/16 v0, 0xff

    goto :goto_0
.end method

.method public getUsimPBCapacityInfo()Lcom/android/internal/telephony/IccPBCapacityInfo;
    .locals 14

    .prologue
    .line 1409
    const/16 v10, 0xa8

    const/16 v11, 0xc0

    invoke-virtual {p0, v10, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->getFiles(II)Ljava/util/List;

    move-result-object v1

    .line 1410
    .local v1, adnEfFiles:Ljava/util/List;
    const/16 v10, 0xc4

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->getAllFilesOfEfType(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 1411
    .local v3, anrEfFiles:Ljava/util/List;
    const/16 v10, 0xca

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->getAllFilesOfEfType(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 1413
    .local v5, emailEfFiles:Ljava/util/List;
    check-cast v1, Ljava/util/ArrayList;

    .end local v1           #adnEfFiles:Ljava/util/List;
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;

    .line 1414
    .local v0, adnEfFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_5

    check-cast v3, Ljava/util/ArrayList;

    .end local v3           #anrEfFiles:Ljava/util/List;
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;

    move-object v2, v10

    .line 1416
    .local v2, anrEfFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_6

    check-cast v5, Ljava/util/ArrayList;

    .end local v5           #emailEfFiles:Ljava/util/List;
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;

    move-object v4, v10

    .line 1418
    .local v4, emailEfFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;
    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getEfId()I

    move-result v10

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    #getter for: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mTotalPhoneBookRecords:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$500(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/internal/telephony/AdnRecord;->getUsedCount(ILjava/util/ArrayList;)[I

    move-result-object v9

    .line 1421
    .local v9, usedCount:[I
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->mIccPBCapacityInfo:Lcom/android/internal/telephony/IccPBCapacityInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getNumberOfRecords()I

    move-result v11

    const/4 v12, 0x0

    aget v12, v9, v12

    sub-int/2addr v11, v12

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getRecordSize()I

    move-result v12

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getNumberOfRecords()I

    move-result v13

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/internal/telephony/IccPBCapacityInfo;->setAdnLikeCapacities(III)V

    .line 1425
    if-eqz v2, :cond_1

    .line 1426
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getNumberOfRecords()I

    move-result v10

    const/4 v11, 0x1

    aget v11, v9, v11

    sub-int v6, v10, v11

    .line 1429
    .local v6, emptyAnrCount:I
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getFileType()I

    move-result v10

    const/16 v11, 0xa8

    if-ne v10, v11, :cond_0

    .line 1430
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getNumberOfRecords()I

    move-result v10

    const/4 v11, 0x0

    aget v11, v9, v11

    sub-int v6, v10, v11

    .line 1432
    :cond_0
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->mIccPBCapacityInfo:Lcom/android/internal/telephony/IccPBCapacityInfo;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getNumberOfRecords()I

    move-result v11

    invoke-virtual {v10, v6, v11}, Lcom/android/internal/telephony/IccPBCapacityInfo;->setAnrCapacity(II)V

    .line 1436
    .end local v6           #emptyAnrCount:I
    :cond_1
    if-eqz v4, :cond_4

    .line 1439
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getNumberOfRecords()I

    move-result v10

    const/4 v11, 0x2

    aget v11, v9, v11

    sub-int v7, v10, v11

    .line 1440
    .local v7, emptyEmailCount:I
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getFileType()I

    move-result v10

    const/16 v11, 0xa8

    if-ne v10, v11, :cond_2

    .line 1441
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getNumberOfRecords()I

    move-result v10

    const/4 v11, 0x0

    aget v11, v9, v11

    sub-int v7, v10, v11

    .line 1444
    :cond_2
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getRecordSize()I

    move-result v8

    .line 1448
    .local v8, maxEmailRecordSize:I
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getFileType()I

    move-result v10

    const/16 v11, 0xa9

    if-ne v10, v11, :cond_3

    .line 1449
    add-int/lit8 v8, v8, -0x2

    .line 1452
    :cond_3
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->mIccPBCapacityInfo:Lcom/android/internal/telephony/IccPBCapacityInfo;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getNumberOfRecords()I

    move-result v11

    invoke-virtual {v10, v7, v8, v11}, Lcom/android/internal/telephony/IccPBCapacityInfo;->setEmailCapacity(III)V

    .line 1456
    .end local v7           #emptyEmailCount:I
    .end local v8           #maxEmailRecordSize:I
    :cond_4
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->mIccPBCapacityInfo:Lcom/android/internal/telephony/IccPBCapacityInfo;

    return-object v10

    .line 1414
    .end local v2           #anrEfFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;
    .end local v4           #emailEfFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;
    .end local v9           #usedCount:[I
    .restart local v3       #anrEfFiles:Ljava/util/List;
    .restart local v5       #emailEfFiles:Ljava/util/List;
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1416
    .end local v3           #anrEfFiles:Ljava/util/List;
    .restart local v2       #anrEfFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;
    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_1
.end method
