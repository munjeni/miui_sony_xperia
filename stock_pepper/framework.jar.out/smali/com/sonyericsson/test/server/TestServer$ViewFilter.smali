.class Lcom/sonyericsson/test/server/TestServer$ViewFilter;
.super Ljava/lang/Object;
.source "TestServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/test/server/TestServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewFilter"
.end annotation


# instance fields
.field private id:Ljava/lang/String;

.field private index:I

.field private text:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 11
    .parameter "parameters"

    .prologue
    const/16 v10, 0x3d

    const/16 v9, 0x2c

    const/4 v8, -0x1

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput v8, p0, Lcom/sonyericsson/test/server/TestServer$ViewFilter;->index:I

    .line 181
    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 182
    .local v0, i:I
    invoke-virtual {p1, v9, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 183
    .local v1, j:I
    const/4 v3, 0x0

    .line 184
    .local v3, last:I
    :goto_0
    if-eq v0, v8, :cond_0

    if-eq v1, v8, :cond_0

    .line 185
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, key:Ljava/lang/String;
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 187
    .local v4, len:I
    add-int/lit8 v6, v1, 0x1

    add-int/lit8 v7, v1, 0x1

    add-int/2addr v7, v4

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 188
    .local v5, val:Ljava/lang/String;
    invoke-direct {p0, v2, v5}, Lcom/sonyericsson/test/server/TestServer$ViewFilter;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    add-int v6, v1, v4

    add-int/lit8 v3, v6, 0x2

    .line 191
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p1, v10, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 192
    invoke-virtual {p1, v9, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 193
    goto :goto_0

    .line 194
    .end local v2           #key:Ljava/lang/String;
    .end local v4           #len:I
    .end local v5           #val:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/test/server/TestServer$ViewFilter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 171
    iget v0, p0, Lcom/sonyericsson/test/server/TestServer$ViewFilter;->index:I

    return v0
.end method

.method private set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "val"

    .prologue
    .line 212
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    iput-object p2, p0, Lcom/sonyericsson/test/server/TestServer$ViewFilter;->type:Ljava/lang/String;

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 215
    iput-object p2, p0, Lcom/sonyericsson/test/server/TestServer$ViewFilter;->text:Ljava/lang/String;

    goto :goto_0

    .line 216
    :cond_2
    const-string v0, "id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/test/server/TestServer$ViewFilter;->id:Ljava/lang/String;

    goto :goto_0

    .line 218
    :cond_3
    const-string v0, "index"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/test/server/TestServer$ViewFilter;->index:I

    goto :goto_0
.end method


# virtual methods
.method public anyIndex()Z
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/sonyericsson/test/server/TestServer$ViewFilter;->index:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public matches(Ljava/lang/Object;Lcom/sonyericsson/test/server/IAndroidProxy;)Z
    .locals 5
    .parameter "view"
    .parameter "android"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 197
    const/4 v0, 0x1

    .line 198
    .local v0, match:Z
    iget-object v3, p0, Lcom/sonyericsson/test/server/TestServer$ViewFilter;->id:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 199
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/sonyericsson/test/server/TestServer$ViewFilter;->id:Ljava/lang/String;

    invoke-interface {p2, p1}, Lcom/sonyericsson/test/server/IAndroidProxy;->getViewId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    .line 200
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/test/server/TestServer$ViewFilter;->text:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 201
    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/sonyericsson/test/server/TestServer$ViewFilter;->text:Ljava/lang/String;

    invoke-interface {p2, p1}, Lcom/sonyericsson/test/server/IAndroidProxy;->getViewText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v1

    .line 202
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/sonyericsson/test/server/TestServer$ViewFilter;->type:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 203
    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/sonyericsson/test/server/TestServer$ViewFilter;->type:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v1

    .line 204
    :cond_2
    :goto_2
    return v0

    :cond_3
    move v0, v2

    .line 199
    goto :goto_0

    :cond_4
    move v0, v2

    .line 201
    goto :goto_1

    :cond_5
    move v0, v2

    .line 203
    goto :goto_2
.end method
