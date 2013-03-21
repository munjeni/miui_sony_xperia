.class Lcom/sonyericsson/test/server/TestServer$ViewCandidate;
.super Ljava/lang/Object;
.source "TestServer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/test/server/TestServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewCandidate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/sonyericsson/test/server/TestServer$ViewCandidate;",
        ">;"
    }
.end annotation


# instance fields
.field private view:Ljava/lang/Object;

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;[I)V
    .locals 1
    .parameter "view"
    .parameter "viewLocationOnScreen"

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-object p1, p0, Lcom/sonyericsson/test/server/TestServer$ViewCandidate;->view:Ljava/lang/Object;

    .line 232
    const/4 v0, 0x0

    aget v0, p2, v0

    iput v0, p0, Lcom/sonyericsson/test/server/TestServer$ViewCandidate;->x:I

    .line 233
    const/4 v0, 0x1

    aget v0, p2, v0

    iput v0, p0, Lcom/sonyericsson/test/server/TestServer$ViewCandidate;->y:I

    .line 234
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/test/server/TestServer$ViewCandidate;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/sonyericsson/test/server/TestServer$ViewCandidate;->view:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/sonyericsson/test/server/TestServer$ViewCandidate;)I
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 244
    iget v2, p0, Lcom/sonyericsson/test/server/TestServer$ViewCandidate;->y:I

    iget v3, p1, Lcom/sonyericsson/test/server/TestServer$ViewCandidate;->y:I

    if-ge v2, v3, :cond_1

    .line 252
    :cond_0
    :goto_0
    return v0

    .line 246
    :cond_1
    iget v2, p0, Lcom/sonyericsson/test/server/TestServer$ViewCandidate;->y:I

    iget v3, p1, Lcom/sonyericsson/test/server/TestServer$ViewCandidate;->y:I

    if-le v2, v3, :cond_2

    move v0, v1

    .line 247
    goto :goto_0

    .line 248
    :cond_2
    iget v2, p0, Lcom/sonyericsson/test/server/TestServer$ViewCandidate;->x:I

    iget v3, p1, Lcom/sonyericsson/test/server/TestServer$ViewCandidate;->x:I

    if-lt v2, v3, :cond_0

    .line 250
    iget v0, p0, Lcom/sonyericsson/test/server/TestServer$ViewCandidate;->x:I

    iget v2, p1, Lcom/sonyericsson/test/server/TestServer$ViewCandidate;->x:I

    if-le v0, v2, :cond_3

    move v0, v1

    .line 251
    goto :goto_0

    .line 252
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 223
    check-cast p1, Lcom/sonyericsson/test/server/TestServer$ViewCandidate;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/test/server/TestServer$ViewCandidate;->compareTo(Lcom/sonyericsson/test/server/TestServer$ViewCandidate;)I

    move-result v0

    return v0
.end method

.method public getCenter([I)[I
    .locals 5
    .parameter "viewSize"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 237
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 238
    .local v0, xy:[I
    iget v1, p0, Lcom/sonyericsson/test/server/TestServer$ViewCandidate;->x:I

    aget v2, p1, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    aput v1, v0, v3

    .line 239
    iget v1, p0, Lcom/sonyericsson/test/server/TestServer$ViewCandidate;->y:I

    aget v2, p1, v4

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    aput v1, v0, v4

    .line 240
    return-object v0
.end method
