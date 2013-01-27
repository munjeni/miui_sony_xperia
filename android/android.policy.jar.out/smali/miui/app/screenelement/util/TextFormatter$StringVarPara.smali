.class Lmiui/app/screenelement/util/TextFormatter$StringVarPara;
.super Lmiui/app/screenelement/util/TextFormatter$FormatPara;
.source "TextFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/util/TextFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringVarPara"
.end annotation


# instance fields
.field private mVar:Lmiui/app/screenelement/util/IndexedStringVariable;

.field private mVariable:Lmiui/app/screenelement/util/Variable;


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/util/Variable;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/app/screenelement/util/TextFormatter$FormatPara;-><init>(Lmiui/app/screenelement/util/TextFormatter$1;)V

    .line 196
    iput-object p1, p0, Lmiui/app/screenelement/util/TextFormatter$StringVarPara;->mVariable:Lmiui/app/screenelement/util/Variable;

    .line 197
    return-void
.end method


# virtual methods
.method public evaluate(Lmiui/app/screenelement/data/Variables;)Ljava/lang/Object;
    .locals 4
    .parameter "var"

    .prologue
    .line 201
    iget-object v1, p0, Lmiui/app/screenelement/util/TextFormatter$StringVarPara;->mVar:Lmiui/app/screenelement/util/IndexedStringVariable;

    if-nez v1, :cond_0

    .line 202
    new-instance v1, Lmiui/app/screenelement/util/IndexedStringVariable;

    iget-object v2, p0, Lmiui/app/screenelement/util/TextFormatter$StringVarPara;->mVariable:Lmiui/app/screenelement/util/Variable;

    invoke-virtual {v2}, Lmiui/app/screenelement/util/Variable;->getObjName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lmiui/app/screenelement/util/TextFormatter$StringVarPara;->mVariable:Lmiui/app/screenelement/util/Variable;

    invoke-virtual {v3}, Lmiui/app/screenelement/util/Variable;->getPropertyName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Lmiui/app/screenelement/util/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v1, p0, Lmiui/app/screenelement/util/TextFormatter$StringVarPara;->mVar:Lmiui/app/screenelement/util/IndexedStringVariable;

    .line 204
    :cond_0
    iget-object v1, p0, Lmiui/app/screenelement/util/TextFormatter$StringVarPara;->mVar:Lmiui/app/screenelement/util/IndexedStringVariable;

    invoke-virtual {v1}, Lmiui/app/screenelement/util/IndexedStringVariable;->get()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, string:Ljava/lang/String;
    if-nez v0, :cond_1

    const-string v0, ""

    .end local v0           #string:Ljava/lang/String;
    :cond_1
    return-object v0
.end method
