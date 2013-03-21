.class Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteViewsMetaData"
.end annotation


# instance fields
.field count:I

.field hasStableIds:Z

.field mFirstView:Landroid/widget/RemoteViews;

.field mFirstViewHeight:I

.field private final mTypeIdIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mUserLoadingView:Landroid/widget/RemoteViews;

.field final synthetic this$0:Landroid/widget/RemoteViewsAdapter;

.field viewTypeCount:I


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViewsAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->this$0:Landroid/widget/RemoteViewsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mTypeIdIndexMap:Ljava/util/HashMap;

    .line 352
    invoke-virtual {p0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->reset()V

    .line 353
    return-void
.end method

.method static synthetic access$1600(Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 336
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->createLoadingView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    move-result-object v0

    return-object v0
.end method

.method private createLoadingView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 398
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 399
    .local v0, context:Landroid/content/Context;
    new-instance v5, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    iget-object v8, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->this$0:Landroid/widget/RemoteViewsAdapter;

    invoke-direct {v5, v8, v0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;-><init>(Landroid/widget/RemoteViewsAdapter;Landroid/content/Context;)V

    .line 402
    .local v5, layout:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    iget-object v8, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->this$0:Landroid/widget/RemoteViewsAdapter;

    #getter for: Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;
    invoke-static {v8}, Landroid/widget/RemoteViewsAdapter;->access$400(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-result-object v9

    monitor-enter v9

    .line 403
    const/4 v1, 0x0

    .line 405
    .local v1, customLoadingViewAvailable:Z
    :try_start_0
    iget-object v8, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mUserLoadingView:Landroid/widget/RemoteViews;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_0

    .line 408
    :try_start_1
    iget-object v8, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mUserLoadingView:Landroid/widget/RemoteViews;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v8, v10, p3}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 409
    .local v7, loadingView:Landroid/view/View;
    const v8, 0x1020228

    new-instance v10, Ljava/lang/Integer;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v8, v10}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 411
    invoke-virtual {v5, v7}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->addView(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 412
    const/4 v1, 0x1

    .line 418
    .end local v7           #loadingView:Landroid/view/View;
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 421
    :try_start_2
    iget v8, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstViewHeight:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-gez v8, :cond_1

    .line 423
    :try_start_3
    iget-object v8, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstView:Landroid/widget/RemoteViews;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v8, v10, p3}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 424
    .local v4, firstView:Landroid/view/View;
    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v4, v8, v10}, Landroid/view/View;->measure(II)V

    .line 427
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    iput v8, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstViewHeight:I

    .line 428
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstView:Landroid/widget/RemoteViews;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 439
    .end local v4           #firstView:Landroid/view/View;
    :cond_1
    :goto_1
    :try_start_4
    iget-object v8, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->this$0:Landroid/widget/RemoteViewsAdapter;

    #getter for: Landroid/widget/RemoteViewsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;
    invoke-static {v8}, Landroid/widget/RemoteViewsAdapter;->access$1200(Landroid/widget/RemoteViewsAdapter;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v10, 0x1090085

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v5, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 442
    .local v6, loadingTextView:Landroid/widget/TextView;
    iget v8, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstViewHeight:I

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setHeight(I)V

    .line 443
    new-instance v8, Ljava/lang/Integer;

    const/4 v10, 0x0

    invoke-direct {v8, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 445
    invoke-virtual {v5, v6}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->addView(Landroid/view/View;)V

    .line 447
    .end local v6           #loadingTextView:Landroid/widget/TextView;
    :cond_2
    monitor-exit v9

    .line 449
    return-object v5

    .line 413
    :catch_0
    move-exception v3

    .line 414
    .local v3, e:Ljava/lang/Exception;
    const-string v8, "RemoteViewsAdapter"

    const-string v10, "Error inflating custom loading view, using default loadingview instead"

    invoke-static {v8, v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 447
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v8

    .line 429
    :catch_1
    move-exception v3

    .line 430
    .restart local v3       #e:Ljava/lang/Exception;
    :try_start_5
    iget-object v8, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->this$0:Landroid/widget/RemoteViewsAdapter;

    #getter for: Landroid/widget/RemoteViewsAdapter;->mContext:Landroid/content/Context;
    invoke-static {v8}, Landroid/widget/RemoteViewsAdapter;->access$1100(Landroid/widget/RemoteViewsAdapter;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v2, v8, Landroid/util/DisplayMetrics;->density:F

    .line 431
    .local v2, density:F
    const/high16 v8, 0x4248

    mul-float/2addr v8, v2

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstViewHeight:I

    .line 433
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstView:Landroid/widget/RemoteViews;

    .line 434
    const-string v8, "RemoteViewsAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error inflating first RemoteViews"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public getMappedViewType(I)I
    .locals 4
    .parameter "typeId"

    .prologue
    .line 385
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mTypeIdIndexMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 386
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mTypeIdIndexMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 391
    :goto_0
    return v0

    .line 389
    :cond_0
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mTypeIdIndexMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 390
    .local v0, incrementalTypeId:I
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mTypeIdIndexMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 365
    iput v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    .line 368
    iput v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->viewTypeCount:I

    .line 369
    iput-boolean v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->hasStableIds:Z

    .line 370
    iput-object v2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mUserLoadingView:Landroid/widget/RemoteViews;

    .line 371
    iput-object v2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstView:Landroid/widget/RemoteViews;

    .line 372
    iput v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstViewHeight:I

    .line 373
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mTypeIdIndexMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 374
    return-void
.end method

.method public set(Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 356
    monitor-enter p1

    .line 357
    :try_start_0
    iget v0, p1, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    iput v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    .line 358
    iget v0, p1, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->viewTypeCount:I

    iput v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->viewTypeCount:I

    .line 359
    iget-boolean v0, p1, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->hasStableIds:Z

    iput-boolean v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->hasStableIds:Z

    .line 360
    iget-object v0, p1, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mUserLoadingView:Landroid/widget/RemoteViews;

    iget-object v1, p1, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstView:Landroid/widget/RemoteViews;

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->setLoadingViewTemplates(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 361
    monitor-exit p1

    .line 362
    return-void

    .line 361
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLoadingViewTemplates(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 1
    .parameter "loadingView"
    .parameter "firstView"

    .prologue
    .line 377
    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mUserLoadingView:Landroid/widget/RemoteViews;

    .line 378
    if-eqz p2, :cond_0

    .line 379
    iput-object p2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstView:Landroid/widget/RemoteViews;

    .line 380
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstViewHeight:I

    .line 382
    :cond_0
    return-void
.end method
