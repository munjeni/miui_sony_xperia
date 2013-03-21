.class Landroid/widget/RelativeLayout$DependencyGraph;
.super Ljava/lang/Object;
.source "RelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DependencyGraph"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RelativeLayout$DependencyGraph$Node;
    }
.end annotation


# instance fields
.field private mKeyNodes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/widget/RelativeLayout$DependencyGraph$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/RelativeLayout$DependencyGraph$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mRoots:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/widget/RelativeLayout$DependencyGraph$Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mNodes:Ljava/util/ArrayList;

    .line 1226
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mKeyNodes:Landroid/util/SparseArray;

    .line 1232
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mRoots:Ljava/util/LinkedList;

    .line 1426
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/RelativeLayout$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1216
    invoke-direct {p0}, Landroid/widget/RelativeLayout$DependencyGraph;-><init>()V

    return-void
.end method

.method static synthetic access$500(Landroid/widget/RelativeLayout$DependencyGraph;)Landroid/util/SparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1216
    iget-object v0, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mKeyNodes:Landroid/util/SparseArray;

    return-object v0
.end method

.method private static appendViewId(Landroid/content/res/Resources;Landroid/widget/RelativeLayout$DependencyGraph$Node;Ljava/lang/StringBuilder;)V
    .locals 2
    .parameter "resources"
    .parameter "node"
    .parameter "buffer"

    .prologue
    .line 1387
    iget-object v0, p1, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1388
    iget-object v0, p1, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1392
    :goto_0
    return-void

    .line 1390
    :cond_0
    const-string v0, "NO_ID"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private findRoots([I)Ljava/util/LinkedList;
    .locals 13
    .parameter "rulesFilter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/widget/RelativeLayout$DependencyGraph$Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1314
    iget-object v4, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mKeyNodes:Landroid/util/SparseArray;

    .line 1315
    .local v4, keyNodes:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/widget/RelativeLayout$DependencyGraph$Node;>;"
    iget-object v7, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mNodes:Ljava/util/ArrayList;

    .line 1316
    .local v7, nodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/RelativeLayout$DependencyGraph$Node;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1320
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1321
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 1322
    .local v6, node:Landroid/widget/RelativeLayout$DependencyGraph$Node;
    iget-object v12, v6, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependents:Ljava/util/HashSet;

    invoke-virtual {v12}, Ljava/util/HashSet;->clear()V

    .line 1323
    iget-object v12, v6, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependencies:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->clear()V

    .line 1320
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1327
    .end local v6           #node:Landroid/widget/RelativeLayout$DependencyGraph$Node;
    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_4

    .line 1328
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 1330
    .restart local v6       #node:Landroid/widget/RelativeLayout$DependencyGraph$Node;
    iget-object v12, v6, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1331
    .local v5, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    #getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I
    invoke-static {v5}, Landroid/widget/RelativeLayout$LayoutParams;->access$700(Landroid/widget/RelativeLayout$LayoutParams;)[I

    move-result-object v10

    .line 1332
    .local v10, rules:[I
    array-length v11, p1

    .line 1336
    .local v11, rulesCount:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_2
    if-ge v3, v11, :cond_3

    .line 1337
    aget v12, p1, v3

    aget v9, v10, v12

    .line 1338
    .local v9, rule:I
    if-lez v9, :cond_1

    .line 1340
    invoke-virtual {v4, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 1342
    .local v1, dependency:Landroid/widget/RelativeLayout$DependencyGraph$Node;
    if-eqz v1, :cond_1

    if-ne v1, v6, :cond_2

    .line 1336
    .end local v1           #dependency:Landroid/widget/RelativeLayout$DependencyGraph$Node;
    :cond_1
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1346
    .restart local v1       #dependency:Landroid/widget/RelativeLayout$DependencyGraph$Node;
    :cond_2
    iget-object v12, v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependents:Ljava/util/HashSet;

    invoke-virtual {v12, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1348
    iget-object v12, v6, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependencies:Landroid/util/SparseArray;

    invoke-virtual {v12, v9, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 1327
    .end local v1           #dependency:Landroid/widget/RelativeLayout$DependencyGraph$Node;
    .end local v9           #rule:I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1353
    .end local v3           #j:I
    .end local v5           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v6           #node:Landroid/widget/RelativeLayout$DependencyGraph$Node;
    .end local v10           #rules:[I
    .end local v11           #rulesCount:I
    :cond_4
    iget-object v8, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mRoots:Ljava/util/LinkedList;

    .line 1354
    .local v8, roots:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/widget/RelativeLayout$DependencyGraph$Node;>;"
    invoke-virtual {v8}, Ljava/util/LinkedList;->clear()V

    .line 1357
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_6

    .line 1358
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 1359
    .restart local v6       #node:Landroid/widget/RelativeLayout$DependencyGraph$Node;
    iget-object v12, v6, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependencies:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-nez v12, :cond_5

    invoke-virtual {v8, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1357
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1362
    .end local v6           #node:Landroid/widget/RelativeLayout$DependencyGraph$Node;
    :cond_6
    return-object v8
.end method

.method private static printNode(Landroid/content/res/Resources;Landroid/widget/RelativeLayout$DependencyGraph$Node;)V
    .locals 4
    .parameter "resources"
    .parameter "node"

    .prologue
    .line 1395
    iget-object v3, p1, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependents:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 1396
    iget-object v3, p1, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    invoke-static {p0, v3}, Landroid/widget/RelativeLayout$DependencyGraph;->printViewId(Landroid/content/res/Resources;Landroid/view/View;)V

    .line 1404
    :cond_0
    return-void

    .line 1398
    :cond_1
    iget-object v3, p1, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependents:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 1399
    .local v1, dependent:Landroid/widget/RelativeLayout$DependencyGraph$Node;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1400
    .local v0, buffer:Ljava/lang/StringBuilder;
    invoke-static {p0, p1, v0}, Landroid/widget/RelativeLayout$DependencyGraph;->appendViewId(Landroid/content/res/Resources;Landroid/widget/RelativeLayout$DependencyGraph$Node;Ljava/lang/StringBuilder;)V

    .line 1401
    invoke-static {p0, v1, v0}, Landroid/widget/RelativeLayout$DependencyGraph;->printdependents(Landroid/content/res/Resources;Landroid/widget/RelativeLayout$DependencyGraph$Node;Ljava/lang/StringBuilder;)V

    goto :goto_0
.end method

.method static printViewId(Landroid/content/res/Resources;Landroid/view/View;)V
    .locals 2
    .parameter "resources"
    .parameter "view"

    .prologue
    .line 1379
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1380
    const-string v0, "RelativeLayout"

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    :goto_0
    return-void

    .line 1382
    :cond_0
    const-string v0, "RelativeLayout"

    const-string v1, "NO_ID"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static printdependents(Landroid/content/res/Resources;Landroid/widget/RelativeLayout$DependencyGraph$Node;Ljava/lang/StringBuilder;)V
    .locals 5
    .parameter "resources"
    .parameter "node"
    .parameter "buffer"

    .prologue
    .line 1407
    const-string v3, " -> "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1408
    invoke-static {p0, p1, p2}, Landroid/widget/RelativeLayout$DependencyGraph;->appendViewId(Landroid/content/res/Resources;Landroid/widget/RelativeLayout$DependencyGraph$Node;Ljava/lang/StringBuilder;)V

    .line 1410
    iget-object v3, p1, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependents:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 1411
    const-string v3, "RelativeLayout"

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    :cond_0
    return-void

    .line 1413
    :cond_1
    iget-object v3, p1, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependents:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 1414
    .local v0, dependent:Landroid/widget/RelativeLayout$DependencyGraph$Node;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1415
    .local v2, subBuffer:Ljava/lang/StringBuilder;
    invoke-static {p0, v0, v2}, Landroid/widget/RelativeLayout$DependencyGraph;->printdependents(Landroid/content/res/Resources;Landroid/widget/RelativeLayout$DependencyGraph$Node;Ljava/lang/StringBuilder;)V

    goto :goto_0
.end method


# virtual methods
.method add(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 1256
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1257
    .local v0, id:I
    invoke-static {p1}, Landroid/widget/RelativeLayout$DependencyGraph$Node;->acquire(Landroid/view/View;)Landroid/widget/RelativeLayout$DependencyGraph$Node;

    move-result-object v1

    .line 1259
    .local v1, node:Landroid/widget/RelativeLayout$DependencyGraph$Node;
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 1260
    iget-object v2, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mKeyNodes:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1263
    :cond_0
    iget-object v2, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1264
    return-void
.end method

.method clear()V
    .locals 4

    .prologue
    .line 1238
    iget-object v2, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mNodes:Ljava/util/ArrayList;

    .line 1239
    .local v2, nodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/RelativeLayout$DependencyGraph$Node;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1241
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1242
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout$DependencyGraph$Node;->release()V

    .line 1241
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1244
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1246
    iget-object v3, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mKeyNodes:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 1247
    iget-object v3, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mRoots:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 1248
    return-void
.end method

.method varargs getSortedViews([Landroid/view/View;[I)V
    .locals 12
    .parameter "sorted"
    .parameter "rules"

    .prologue
    .line 1277
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout$DependencyGraph;->findRoots([I)Ljava/util/LinkedList;

    move-result-object v8

    .line 1278
    .local v8, roots:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/widget/RelativeLayout$DependencyGraph$Node;>;"
    const/4 v4, 0x0

    .line 1280
    .local v4, index:I
    :goto_0
    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 1281
    invoke-virtual {v8}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 1282
    .local v7, node:Landroid/widget/RelativeLayout$DependencyGraph$Node;
    iget-object v9, v7, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    .line 1283
    .local v9, view:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getId()I

    move-result v6

    .line 1285
    .local v6, key:I
    add-int/lit8 v5, v4, 0x1

    .end local v4           #index:I
    .local v5, index:I
    aput-object v9, p1, v4

    .line 1287
    iget-object v2, v7, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependents:Ljava/util/HashSet;

    .line 1288
    .local v2, dependents:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/widget/RelativeLayout$DependencyGraph$Node;>;"
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 1289
    .local v1, dependent:Landroid/widget/RelativeLayout$DependencyGraph$Node;
    iget-object v0, v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependencies:Landroid/util/SparseArray;

    .line 1291
    .local v0, dependencies:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/widget/RelativeLayout$DependencyGraph$Node;>;"
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->remove(I)V

    .line 1292
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-nez v10, :cond_0

    .line 1293
    invoke-virtual {v8, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0           #dependencies:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/widget/RelativeLayout$DependencyGraph$Node;>;"
    .end local v1           #dependent:Landroid/widget/RelativeLayout$DependencyGraph$Node;
    :cond_1
    move v4, v5

    .line 1296
    .end local v5           #index:I
    .restart local v4       #index:I
    goto :goto_0

    .line 1298
    .end local v2           #dependents:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/widget/RelativeLayout$DependencyGraph$Node;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #key:I
    .end local v7           #node:Landroid/widget/RelativeLayout$DependencyGraph$Node;
    .end local v9           #view:Landroid/view/View;
    :cond_2
    array-length v10, p1

    if-ge v4, v10, :cond_3

    .line 1299
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "Circular dependencies cannot exist in RelativeLayout"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1302
    :cond_3
    return-void
.end method

.method varargs log(Landroid/content/res/Resources;[I)V
    .locals 4
    .parameter "resources"
    .parameter "rules"

    .prologue
    .line 1372
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout$DependencyGraph;->findRoots([I)Ljava/util/LinkedList;

    move-result-object v2

    .line 1373
    .local v2, roots:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/widget/RelativeLayout$DependencyGraph$Node;>;"
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 1374
    .local v1, node:Landroid/widget/RelativeLayout$DependencyGraph$Node;
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$DependencyGraph;->printNode(Landroid/content/res/Resources;Landroid/widget/RelativeLayout$DependencyGraph$Node;)V

    goto :goto_0

    .line 1376
    .end local v1           #node:Landroid/widget/RelativeLayout$DependencyGraph$Node;
    :cond_0
    return-void
.end method
