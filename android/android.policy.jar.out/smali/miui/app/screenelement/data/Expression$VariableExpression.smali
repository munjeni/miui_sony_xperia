.class abstract Lmiui/app/screenelement/data/Expression$VariableExpression;
.super Lmiui/app/screenelement/data/Expression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "VariableExpression"
.end annotation


# instance fields
.field protected mVar:Lmiui/app/screenelement/util/Variable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "exp"

    .prologue
    .line 144
    invoke-direct {p0}, Lmiui/app/screenelement/data/Expression;-><init>()V

    .line 145
    new-instance v0, Lmiui/app/screenelement/util/Variable;

    invoke-direct {v0, p1}, Lmiui/app/screenelement/util/Variable;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/Expression$VariableExpression;->mVar:Lmiui/app/screenelement/util/Variable;

    .line 149
    return-void
.end method
