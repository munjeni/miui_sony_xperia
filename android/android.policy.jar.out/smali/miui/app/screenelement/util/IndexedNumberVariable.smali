.class public Lmiui/app/screenelement/util/IndexedNumberVariable;
.super Ljava/lang/Object;
.source "IndexedNumberVariable.java"


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

    iput v0, p0, Lmiui/app/screenelement/util/IndexedNumberVariable;->mIndex:I

    .line 16
    invoke-virtual {p3, p1, p2}, Lmiui/app/screenelement/data/Variables;->registerNumberVariable(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmiui/app/screenelement/util/IndexedNumberVariable;->mIndex:I

    .line 17
    iput-object p3, p0, Lmiui/app/screenelement/util/IndexedNumberVariable;->mVars:Lmiui/app/screenelement/data/Variables;

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

    invoke-direct {p0, v0, p1, p2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    .line 13
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lmiui/app/screenelement/util/IndexedNumberVariable;->mVars:Lmiui/app/screenelement/data/Variables;

    iget v1, p0, Lmiui/app/screenelement/util/IndexedNumberVariable;->mIndex:I

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/data/Variables;->getNum(I)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public set(D)V
    .locals 1
    .parameter "value"

    .prologue
    .line 21
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(Ljava/lang/Double;)V

    .line 22
    return-void
.end method

.method public set(Ljava/lang/Double;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 25
    iget-object v0, p0, Lmiui/app/screenelement/util/IndexedNumberVariable;->mVars:Lmiui/app/screenelement/data/Variables;

    iget v1, p0, Lmiui/app/screenelement/util/IndexedNumberVariable;->mIndex:I

    invoke-virtual {v0, v1, p1}, Lmiui/app/screenelement/data/Variables;->putNum(ILjava/lang/Double;)V

    .line 26
    return-void
.end method
