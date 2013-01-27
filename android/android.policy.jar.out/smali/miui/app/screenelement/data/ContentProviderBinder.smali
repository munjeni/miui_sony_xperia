.class public Lmiui/app/screenelement/data/ContentProviderBinder;
.super Ljava/lang/Object;
.source "ContentProviderBinder.java"

# interfaces
.implements Lmiui/app/screenelement/data/VariableBinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/screenelement/data/ContentProviderBinder$1;,
        Lmiui/app/screenelement/data/ContentProviderBinder$MyDataSetObserver;,
        Lmiui/app/screenelement/data/ContentProviderBinder$ChangeObserver;,
        Lmiui/app/screenelement/data/ContentProviderBinder$QueryHandler;,
        Lmiui/app/screenelement/data/ContentProviderBinder$Variable;,
        Lmiui/app/screenelement/data/ContentProviderBinder$Builder;,
        Lmiui/app/screenelement/data/ContentProviderBinder$QueryCompleteListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "ContentProviderBinder"

.field private static final QUERY_TOKEN:I = 0x64

.field public static final TAG_NAME:Ljava/lang/String; = "ContentProviderBinder"

.field private static final TYPE_STRING:Ljava/lang/String; = "string"


# instance fields
.field protected mArgs:[Ljava/lang/String;

.field public mChangeObserver:Lmiui/app/screenelement/data/ContentProviderBinder$ChangeObserver;

.field protected mColumns:[Ljava/lang/String;

.field private mContext:Lmiui/app/screenelement/ScreenContext;

.field protected mCountName:Ljava/lang/String;

.field private mCountVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mCursor:Landroid/database/Cursor;

.field private mCursorLock:Ljava/lang/Object;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mDependency:Ljava/lang/String;

.field private mFinished:Z

.field private mLastQueryTime:J

.field private mLastUri:Ljava/lang/String;

.field protected mName:Ljava/lang/String;

.field protected mOrder:Ljava/lang/String;

.field private mQueryCompletedListener:Lmiui/app/screenelement/data/ContentProviderBinder$QueryCompleteListener;

.field private mQueryHandler:Lmiui/app/screenelement/data/ContentProviderBinder$QueryHandler;

.field private mUpdateInterval:I

.field protected mUriFormatter:Lmiui/app/screenelement/util/TextFormatter;

.field private mVariables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/app/screenelement/data/ContentProviderBinder$Variable;",
            ">;"
        }
    .end annotation
.end field

.field protected mWhereFormatter:Lmiui/app/screenelement/util/TextFormatter;


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/ScreenContext;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 216
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/app/screenelement/data/ContentProviderBinder;-><init>(Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/data/ContentProviderBinder$QueryCompleteListener;)V

    .line 217
    return-void
.end method

.method public constructor <init>(Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/data/ContentProviderBinder$QueryCompleteListener;)V
    .locals 2
    .parameter "c"
    .parameter "l"

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mVariables:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Lmiui/app/screenelement/data/ContentProviderBinder$ChangeObserver;

    invoke-direct {v0, p0}, Lmiui/app/screenelement/data/ContentProviderBinder$ChangeObserver;-><init>(Lmiui/app/screenelement/data/ContentProviderBinder;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mChangeObserver:Lmiui/app/screenelement/data/ContentProviderBinder$ChangeObserver;

    .line 65
    new-instance v0, Lmiui/app/screenelement/data/ContentProviderBinder$MyDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/app/screenelement/data/ContentProviderBinder$MyDataSetObserver;-><init>(Lmiui/app/screenelement/data/ContentProviderBinder;Lmiui/app/screenelement/data/ContentProviderBinder$1;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCursorLock:Ljava/lang/Object;

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mUpdateInterval:I

    .line 220
    iput-object p1, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mContext:Lmiui/app/screenelement/ScreenContext;

    .line 221
    new-instance v0, Lmiui/app/screenelement/data/ContentProviderBinder$QueryHandler;

    iget-object v1, p1, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lmiui/app/screenelement/data/ContentProviderBinder$QueryHandler;-><init>(Lmiui/app/screenelement/data/ContentProviderBinder;Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mQueryHandler:Lmiui/app/screenelement/data/ContentProviderBinder$QueryHandler;

    .line 222
    iput-object p2, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mQueryCompletedListener:Lmiui/app/screenelement/data/ContentProviderBinder$QueryCompleteListener;

    .line 223
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V
    .locals 1
    .parameter "node"
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 196
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/app/screenelement/data/ContentProviderBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/data/ContentProviderBinder$QueryCompleteListener;)V

    .line 197
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/data/ContentProviderBinder$QueryCompleteListener;)V
    .locals 2
    .parameter "node"
    .parameter "c"
    .parameter "l"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mVariables:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Lmiui/app/screenelement/data/ContentProviderBinder$ChangeObserver;

    invoke-direct {v0, p0}, Lmiui/app/screenelement/data/ContentProviderBinder$ChangeObserver;-><init>(Lmiui/app/screenelement/data/ContentProviderBinder;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mChangeObserver:Lmiui/app/screenelement/data/ContentProviderBinder$ChangeObserver;

    .line 65
    new-instance v0, Lmiui/app/screenelement/data/ContentProviderBinder$MyDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/app/screenelement/data/ContentProviderBinder$MyDataSetObserver;-><init>(Lmiui/app/screenelement/data/ContentProviderBinder;Lmiui/app/screenelement/data/ContentProviderBinder$1;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCursorLock:Ljava/lang/Object;

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mUpdateInterval:I

    .line 209
    iput-object p2, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mContext:Lmiui/app/screenelement/ScreenContext;

    .line 210
    new-instance v0, Lmiui/app/screenelement/data/ContentProviderBinder$QueryHandler;

    iget-object v1, p2, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lmiui/app/screenelement/data/ContentProviderBinder$QueryHandler;-><init>(Lmiui/app/screenelement/data/ContentProviderBinder;Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mQueryHandler:Lmiui/app/screenelement/data/ContentProviderBinder$QueryHandler;

    .line 211
    iput-object p3, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mQueryCompletedListener:Lmiui/app/screenelement/data/ContentProviderBinder$QueryCompleteListener;

    .line 212
    invoke-direct {p0, p1}, Lmiui/app/screenelement/data/ContentProviderBinder;->load(Lorg/w3c/dom/Element;)V

    .line 213
    return-void
.end method

.method static synthetic access$200(Lmiui/app/screenelement/data/ContentProviderBinder;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lmiui/app/screenelement/data/ContentProviderBinder;->onQueryComplete(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$300(Lmiui/app/screenelement/data/ContentProviderBinder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mFinished:Z

    return v0
.end method

.method static synthetic access$400(Lmiui/app/screenelement/data/ContentProviderBinder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lmiui/app/screenelement/data/ContentProviderBinder;->updateVariables()V

    return-void
.end method

.method static synthetic access$500(Lmiui/app/screenelement/data/ContentProviderBinder;)Lmiui/app/screenelement/data/ContentProviderBinder$QueryCompleteListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mQueryCompletedListener:Lmiui/app/screenelement/data/ContentProviderBinder$QueryCompleteListener;

    return-object v0
.end method

.method private closeCursor()V
    .locals 3

    .prologue
    .line 271
    iget-object v1, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCursorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 272
    :try_start_0
    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 273
    monitor-exit v1

    .line 281
    :goto_0
    return-void

    .line 274
    :cond_0
    iget v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mUpdateInterval:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 275
    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mChangeObserver:Lmiui/app/screenelement/data/ContentProviderBinder$ChangeObserver;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 276
    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 278
    :cond_1
    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    .line 280
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 6
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 284
    if-nez p1, :cond_0

    .line 285
    const-string v1, "ContentProviderBinder"

    const-string v2, "ContentProviderBinder node is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    new-instance v1, Lmiui/app/screenelement/ScreenElementLoadException;

    const-string v2, "node is null"

    invoke-direct {v1, v2}, Lmiui/app/screenelement/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 288
    :cond_0
    const-string v1, "name"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mName:Ljava/lang/String;

    .line 289
    const-string v1, "dependency"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mDependency:Ljava/lang/String;

    .line 291
    new-instance v1, Lmiui/app/screenelement/util/TextFormatter;

    const-string v3, "uri"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "uriFormat"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "uriParas"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v3, v4, v5}, Lmiui/app/screenelement/util/TextFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mUriFormatter:Lmiui/app/screenelement/util/TextFormatter;

    .line 293
    const-string v1, "columns"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, tmp:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, v2

    :goto_0
    iput-object v1, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mColumns:[Ljava/lang/String;

    .line 295
    new-instance v1, Lmiui/app/screenelement/util/TextFormatter;

    const-string v3, "where"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "whereFormat"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "whereParas"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v3, v4, v5}, Lmiui/app/screenelement/util/TextFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mWhereFormatter:Lmiui/app/screenelement/util/TextFormatter;

    .line 297
    const-string v1, "args"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 298
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, v2

    :goto_1
    iput-object v1, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mArgs:[Ljava/lang/String;

    .line 299
    const-string v1, "order"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, v2

    .end local v0           #tmp:Ljava/lang/String;
    :cond_1
    iput-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mOrder:Ljava/lang/String;

    .line 302
    const-string v1, "countName"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 303
    .restart local v0       #tmp:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_2
    iput-object v2, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    .line 304
    iget-object v1, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 305
    new-instance v1, Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v2, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    iget-object v3, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v3, v3, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v1, v2, v3}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v1, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCountVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 308
    :cond_2
    const-string v1, "updateInterval"

    const/4 v2, -0x1

    invoke-static {p1, v1, v2}, Lmiui/app/screenelement/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mUpdateInterval:I

    .line 310
    invoke-direct {p0, p1}, Lmiui/app/screenelement/data/ContentProviderBinder;->loadVariables(Lorg/w3c/dom/Element;)V

    .line 311
    return-void

    .line 294
    :cond_3
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 298
    :cond_4
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    move-object v2, v0

    .line 303
    goto :goto_2
.end method

.method private loadVariables(Lorg/w3c/dom/Element;)V
    .locals 5
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 314
    const-string v3, "Variable"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 315
    .local v2, variables:Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 316
    new-instance v1, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    iget-object v4, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v4, v4, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v1, v3, v4}, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/data/Variables;)V

    .line 317
    .local v1, v:Lmiui/app/screenelement/data/ContentProviderBinder$Variable;
    invoke-virtual {p0, v1}, Lmiui/app/screenelement/data/ContentProviderBinder;->addVariable(Lmiui/app/screenelement/data/ContentProviderBinder$Variable;)V

    .line 315
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 319
    .end local v1           #v:Lmiui/app/screenelement/data/ContentProviderBinder$Variable;
    :cond_0
    return-void
.end method

.method private onQueryComplete(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 379
    invoke-direct {p0}, Lmiui/app/screenelement/data/ContentProviderBinder;->closeCursor()V

    .line 380
    iget-boolean v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mFinished:Z

    if-eqz v0, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    iput-object p1, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    .line 384
    iget-object v1, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCursorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 385
    :try_start_0
    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 386
    iget v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mUpdateInterval:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 387
    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mChangeObserver:Lmiui/app/screenelement/data/ContentProviderBinder$ChangeObserver;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 388
    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 390
    :cond_2
    invoke-direct {p0}, Lmiui/app/screenelement/data/ContentProviderBinder;->updateVariables()V

    .line 392
    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenContext;->requestUpdate()V

    .line 394
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mQueryCompletedListener:Lmiui/app/screenelement/data/ContentProviderBinder$QueryCompleteListener;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mQueryCompletedListener:Lmiui/app/screenelement/data/ContentProviderBinder$QueryCompleteListener;

    iget-object v1, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lmiui/app/screenelement/data/ContentProviderBinder$QueryCompleteListener;->onQueryCompleted(Ljava/lang/String;)V

    goto :goto_0

    .line 394
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private setNull(Lmiui/app/screenelement/data/ContentProviderBinder$Variable;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 468
    const-string v0, "string"

    iget-object v1, p1, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p1, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;->mStringVar:Lmiui/app/screenelement/util/IndexedStringVariable;

    invoke-virtual {v0, v2}, Lmiui/app/screenelement/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 473
    :goto_0
    return-void

    .line 471
    :cond_0
    iget-object v0, p1, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;->mNumberVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    invoke-virtual {v0, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(Ljava/lang/Double;)V

    goto :goto_0
.end method

.method private updateVariables()V
    .locals 14

    .prologue
    const/4 v2, 0x0

    .line 401
    iget-object v11, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCursorLock:Ljava/lang/Object;

    monitor-enter v11

    .line 402
    :try_start_0
    iget-object v10, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    if-nez v10, :cond_2

    .line 403
    .local v2, count:I
    :goto_0
    iget-object v10, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCountVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    if-eqz v10, :cond_0

    .line 404
    iget-object v10, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCountVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    int-to-double v12, v2

    invoke-virtual {v10, v12, v13}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 406
    :cond_0
    const-string v10, "ContentProviderBinder"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "query result count: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mLastUri:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v10, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    if-eqz v10, :cond_1

    if-nez v2, :cond_4

    .line 408
    :cond_1
    iget-object v10, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;

    .line 409
    .local v6, v:Lmiui/app/screenelement/data/ContentProviderBinder$Variable;
    invoke-direct {p0, v6}, Lmiui/app/screenelement/data/ContentProviderBinder;->setNull(Lmiui/app/screenelement/data/ContentProviderBinder$Variable;)V

    goto :goto_1

    .line 464
    .end local v2           #count:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #v:Lmiui/app/screenelement/data/ContentProviderBinder$Variable;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 402
    :cond_2
    :try_start_1
    iget-object v10, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    goto :goto_0

    .line 411
    .restart local v2       #count:I
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_3
    monitor-exit v11

    .line 465
    :goto_2
    return-void

    .line 413
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_4
    const-string v10, "ContentProviderBinder"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateVariables: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mLastUri:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v10, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;

    .line 415
    .restart local v6       #v:Lmiui/app/screenelement/data/ContentProviderBinder$Variable;
    const/4 v5, 0x1

    .line 416
    .local v5, isNull:Z
    const-string v9, "null"

    .line 417
    .local v9, valueStr:Ljava/lang/String;
    iget-object v10, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    iget v12, v6, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;->mRow:I

    invoke-interface {v10, v12}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    if-eqz v10, :cond_7

    .line 419
    :try_start_2
    iget-object v1, v6, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;->mColumn:Ljava/lang/String;

    .line 420
    .local v1, column:Ljava/lang/String;
    iget-object v10, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 421
    .local v0, col:I
    iget-object v10, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v10, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-nez v10, :cond_7

    .line 422
    const-string v10, "string"

    iget-object v12, v6, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;->mType:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 423
    iget-object v10, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 424
    iget-object v10, v6, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;->mStringVar:Lmiui/app/screenelement/util/IndexedStringVariable;

    invoke-virtual {v10, v9}, Lmiui/app/screenelement/util/IndexedStringVariable;->set(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 446
    :cond_6
    :goto_4
    const/4 v5, 0x0

    .line 454
    .end local v0           #col:I
    .end local v1           #column:Ljava/lang/String;
    :cond_7
    :goto_5
    if-eqz v5, :cond_5

    .line 455
    :try_start_3
    invoke-direct {p0, v6}, Lmiui/app/screenelement/data/ContentProviderBinder;->setNull(Lmiui/app/screenelement/data/ContentProviderBinder$Variable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 425
    .restart local v0       #col:I
    .restart local v1       #column:Ljava/lang/String;
    :cond_8
    :try_start_4
    const-string v10, "double"

    iget-object v12, v6, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;->mType:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 426
    iget-object v10, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v7

    .line 427
    .local v7, value:D
    iget-object v10, v6, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;->mNumberVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    invoke-virtual {v10, v7, v8}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    .line 448
    .end local v0           #col:I
    .end local v1           #column:Ljava/lang/String;
    .end local v7           #value:D
    :catch_0
    move-exception v3

    .line 449
    .local v3, e:Ljava/lang/NumberFormatException;
    :try_start_5
    const-string v10, "ContentProviderBinder"

    const-string v12, "failed to get value from cursor"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    .line 430
    .end local v3           #e:Ljava/lang/NumberFormatException;
    .restart local v0       #col:I
    .restart local v1       #column:Ljava/lang/String;
    :cond_9
    :try_start_6
    const-string v10, "float"

    iget-object v12, v6, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;->mType:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 431
    iget-object v10, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v7

    .line 432
    .local v7, value:F
    iget-object v10, v6, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;->mNumberVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    float-to-double v12, v7

    invoke-virtual {v10, v12, v13}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_4

    .line 450
    .end local v0           #col:I
    .end local v1           #column:Ljava/lang/String;
    .end local v7           #value:F
    :catch_1
    move-exception v3

    .line 451
    .local v3, e:Ljava/lang/IllegalArgumentException;
    :try_start_7
    const-string v10, "ContentProviderBinder"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "column does not exist: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v6, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;->mColumn:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5

    .line 435
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #col:I
    .restart local v1       #column:Ljava/lang/String;
    :cond_a
    :try_start_8
    const-string v10, "int"

    iget-object v12, v6, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;->mType:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 436
    iget-object v10, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 437
    .local v7, value:I
    iget-object v10, v6, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;->mNumberVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    int-to-double v12, v7

    invoke-virtual {v10, v12, v13}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    goto :goto_4

    .line 440
    .end local v7           #value:I
    :cond_b
    const-string v10, "long"

    iget-object v12, v6, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;->mType:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 441
    iget-object v10, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 442
    .local v7, value:J
    iget-object v10, v6, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;->mNumberVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    long-to-double v12, v7

    invoke-virtual {v10, v12, v13}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_4

    .line 464
    .end local v0           #col:I
    .end local v1           #column:Ljava/lang/String;
    .end local v5           #isNull:Z
    .end local v6           #v:Lmiui/app/screenelement/data/ContentProviderBinder$Variable;
    .end local v7           #value:J
    .end local v9           #valueStr:Ljava/lang/String;
    :cond_c
    :try_start_9
    monitor-exit v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2
.end method


# virtual methods
.method protected addVariable(Lmiui/app/screenelement/data/ContentProviderBinder$Variable;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 322
    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    return-void
.end method

.method public createCountVar()V
    .locals 3

    .prologue
    .line 200
    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCountVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_0
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    iget-object v2, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCountVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 246
    invoke-direct {p0}, Lmiui/app/screenelement/data/ContentProviderBinder;->closeCursor()V

    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mFinished:Z

    .line 248
    return-void
.end method

.method public getDependency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mDependency:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lmiui/app/screenelement/data/ContentProviderBinder;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 237
    invoke-virtual {p0}, Lmiui/app/screenelement/data/ContentProviderBinder;->getDependency()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {p0}, Lmiui/app/screenelement/data/ContentProviderBinder;->startQuery()V

    .line 240
    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 2

    .prologue
    .line 492
    const-string v0, "ContentProviderBinder"

    const-string v1, "ChangeObserver: content changed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-boolean v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mFinished:Z

    if-eqz v0, :cond_0

    .line 497
    :goto_0
    return-void

    .line 496
    :cond_0
    invoke-virtual {p0}, Lmiui/app/screenelement/data/ContentProviderBinder;->startQuery()V

    goto :goto_0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 254
    return-void
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 267
    invoke-virtual {p0}, Lmiui/app/screenelement/data/ContentProviderBinder;->startQuery()V

    .line 268
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 260
    iget v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mUpdateInterval:I

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mLastQueryTime:J

    sub-long/2addr v0, v2

    iget v2, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mUpdateInterval:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 261
    invoke-virtual {p0}, Lmiui/app/screenelement/data/ContentProviderBinder;->startQuery()V

    .line 263
    :cond_0
    return-void
.end method

.method public startQuery()V
    .locals 8

    .prologue
    const/16 v1, 0x64

    .line 326
    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mQueryHandler:Lmiui/app/screenelement/data/ContentProviderBinder$QueryHandler;

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/data/ContentProviderBinder$QueryHandler;->cancelOperation(I)V

    .line 327
    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mUriFormatter:Lmiui/app/screenelement/util/TextFormatter;

    iget-object v2, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-virtual {v0, v2}, Lmiui/app/screenelement/util/TextFormatter;->getText(Lmiui/app/screenelement/data/Variables;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 328
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mLastUri:Ljava/lang/String;

    .line 329
    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mWhereFormatter:Lmiui/app/screenelement/util/TextFormatter;

    iget-object v2, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-virtual {v0, v2}, Lmiui/app/screenelement/util/TextFormatter;->getText(Lmiui/app/screenelement/data/Variables;)Ljava/lang/String;

    move-result-object v5

    .line 333
    .local v5, where:Ljava/lang/String;
    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mQueryHandler:Lmiui/app/screenelement/data/ContentProviderBinder$QueryHandler;

    const/4 v2, 0x0

    iget-object v4, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mColumns:[Ljava/lang/String;

    iget-object v6, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mArgs:[Ljava/lang/String;

    iget-object v7, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mOrder:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lmiui/app/screenelement/data/ContentProviderBinder$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mLastQueryTime:J

    .line 335
    return-void
.end method
