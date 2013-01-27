.class public Lmiui/app/screenelement/util/IndexedStringVariable;
.super Ljava/lang/Object;
.source "IndexedStringVariable.java"


# instance fields
.field private mIndex:I

.field private mVars:Lmiui/app/screenelement/data/Variables;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V
    .locals 1
    .parameter "object"
    .parameter "property"
    .parameter "vars"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, -0x1

    iput v0, p0, Lmiui/app/screenelement/util/IndexedStringVariable;->mIndex:I

    .line 16
    invoke-virtual {p3, p1, p2}, Lmiui/app/screenelement/data/Variables;->registerStringVariable(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmiui/app/screenelement/util/IndexedStringVariable;->mIndex:I

    .line 17
    iput-object p3, p0, Lmiui/app/screenelement/util/IndexedStringVariable;->mVars:Lmiui/app/screenelement/data/Variables;

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V
    .locals 1
    .parameter "name"
    .parameter "vars"

    .prologue
    .line 12
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lmiui/app/screenelement/util/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    .line 13
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/String;
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lmiui/app/screenelement/util/IndexedStringVariable;->mVars:Lmiui/app/screenelement/data/Variables;

    iget v1, p0, Lmiui/app/screenelement/util/IndexedStringVariable;->mIndex:I

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/data/Variables;->getStr(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 21
    iget-object v0, p0, Lmiui/app/screenelement/util/IndexedStringVariable;->mVars:Lmiui/app/screenelement/data/Variables;

    iget v1, p0, Lmiui/app/screenelement/util/IndexedStringVariable;->mIndex:I

    invoke-virtual {v0, v1, p1}, Lmiui/app/screenelement/data/Variables;->putStr(ILjava/lang/String;)V

    .line 22
    return-void
.end method
