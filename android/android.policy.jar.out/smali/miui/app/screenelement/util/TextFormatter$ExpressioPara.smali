.class Lmiui/app/screenelement/util/TextFormatter$ExpressioPara;
.super Lmiui/app/screenelement/util/TextFormatter$FormatPara;
.source "TextFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/util/TextFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExpressioPara"
.end annotation


# instance fields
.field private mExp:Lmiui/app/screenelement/data/Expression;


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/data/Expression;)V
    .locals 1
    .parameter "exp"

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/app/screenelement/util/TextFormatter$FormatPara;-><init>(Lmiui/app/screenelement/util/TextFormatter$1;)V

    .line 181
    iput-object p1, p0, Lmiui/app/screenelement/util/TextFormatter$ExpressioPara;->mExp:Lmiui/app/screenelement/data/Expression;

    .line 182
    return-void
.end method


# virtual methods
.method public evaluate(Lmiui/app/screenelement/data/Variables;)Ljava/lang/Object;
    .locals 2
    .parameter "var"

    .prologue
    .line 186
    iget-object v0, p0, Lmiui/app/screenelement/util/TextFormatter$ExpressioPara;->mExp:Lmiui/app/screenelement/data/Expression;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v0

    double-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
