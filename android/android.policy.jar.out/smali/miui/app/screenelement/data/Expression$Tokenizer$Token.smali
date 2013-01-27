.class public Lmiui/app/screenelement/data/Expression$Tokenizer$Token;
.super Ljava/lang/Object;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/data/Expression$Tokenizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Token"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/screenelement/data/Expression$Tokenizer;

.field public token:Ljava/lang/String;

.field public type:Lmiui/app/screenelement/data/Expression$Tokenizer$TokenType;


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/data/Expression$Tokenizer;Lmiui/app/screenelement/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "t"
    .parameter "s"

    .prologue
    .line 50
    iput-object p1, p0, Lmiui/app/screenelement/data/Expression$Tokenizer$Token;->this$0:Lmiui/app/screenelement/data/Expression$Tokenizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-object v0, Lmiui/app/screenelement/data/Expression$Tokenizer$TokenType;->INVALID:Lmiui/app/screenelement/data/Expression$Tokenizer$TokenType;

    iput-object v0, p0, Lmiui/app/screenelement/data/Expression$Tokenizer$Token;->type:Lmiui/app/screenelement/data/Expression$Tokenizer$TokenType;

    .line 51
    iput-object p2, p0, Lmiui/app/screenelement/data/Expression$Tokenizer$Token;->type:Lmiui/app/screenelement/data/Expression$Tokenizer$TokenType;

    .line 52
    iput-object p3, p0, Lmiui/app/screenelement/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    .line 53
    return-void
.end method
