.class Lmiui/app/screenelement/data/Expression$Tokenizer;
.super Ljava/lang/Object;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Tokenizer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/screenelement/data/Expression$Tokenizer$Token;,
        Lmiui/app/screenelement/data/Expression$Tokenizer$TokenType;
    }
.end annotation


# instance fields
.field private mPos:I

.field private mString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lmiui/app/screenelement/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Lmiui/app/screenelement/data/Expression$Tokenizer;->reset()V

    .line 59
    return-void
.end method


# virtual methods
.method public getToken()Lmiui/app/screenelement/data/Expression$Tokenizer$Token;
    .locals 12

    .prologue
    const/4 v7, 0x0

    const/16 v11, 0x27

    const/16 v10, 0x23

    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, bracketCount:I
    const/4 v1, -0x1

    .line 68
    .local v1, bracketStart:I
    iget v4, p0, Lmiui/app/screenelement/data/Expression$Tokenizer;->mPos:I

    .local v4, i:I
    :goto_0
    iget-object v8, p0, Lmiui/app/screenelement/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v4, v8, :cond_15

    .line 69
    iget-object v8, p0, Lmiui/app/screenelement/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 71
    .local v2, c:C
    if-nez v0, :cond_11

    .line 72
    if-eq v2, v10, :cond_0

    const/16 v8, 0x40

    if-ne v2, v8, :cond_6

    .line 75
    :cond_0
    add-int/lit8 v5, v4, 0x1

    .local v5, j:I
    :goto_1
    iget-object v8, p0, Lmiui/app/screenelement/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v5, v8, :cond_1

    .line 76
    iget-object v8, p0, Lmiui/app/screenelement/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    #calls: Lmiui/app/screenelement/data/Expression;->isVariableChar(C)Z
    invoke-static {v8}, Lmiui/app/screenelement/data/Expression;->access$000(C)Z

    move-result v8

    if-nez v8, :cond_3

    .line 79
    :cond_1
    add-int/lit8 v8, v4, 0x1

    if-ne v5, v8, :cond_4

    .line 80
    const-string v8, "Expression"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "invalid variable name:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lmiui/app/screenelement/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .end local v2           #c:C
    .end local v5           #j:I
    :cond_2
    :goto_2
    return-object v7

    .line 75
    .restart local v2       #c:C
    .restart local v5       #j:I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 83
    :cond_4
    iput v5, p0, Lmiui/app/screenelement/data/Expression$Tokenizer;->mPos:I

    .line 84
    new-instance v8, Lmiui/app/screenelement/data/Expression$Tokenizer$Token;

    if-ne v2, v10, :cond_5

    sget-object v7, Lmiui/app/screenelement/data/Expression$Tokenizer$TokenType;->VAR:Lmiui/app/screenelement/data/Expression$Tokenizer$TokenType;

    :goto_3
    iget-object v9, p0, Lmiui/app/screenelement/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v9, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v7, v9}, Lmiui/app/screenelement/data/Expression$Tokenizer$Token;-><init>(Lmiui/app/screenelement/data/Expression$Tokenizer;Lmiui/app/screenelement/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    move-object v7, v8

    goto :goto_2

    :cond_5
    sget-object v7, Lmiui/app/screenelement/data/Expression$Tokenizer$TokenType;->VARSTR:Lmiui/app/screenelement/data/Expression$Tokenizer$TokenType;

    goto :goto_3

    .line 85
    .end local v5           #j:I
    :cond_6
    #calls: Lmiui/app/screenelement/data/Expression;->isDigitChar(C)Z
    invoke-static {v2}, Lmiui/app/screenelement/data/Expression;->access$100(C)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 88
    add-int/lit8 v5, v4, 0x1

    .restart local v5       #j:I
    :goto_4
    iget-object v7, p0, Lmiui/app/screenelement/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_7

    .line 89
    iget-object v7, p0, Lmiui/app/screenelement/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    #calls: Lmiui/app/screenelement/data/Expression;->isDigitChar(C)Z
    invoke-static {v7}, Lmiui/app/screenelement/data/Expression;->access$100(C)Z

    move-result v7

    if-nez v7, :cond_8

    .line 92
    :cond_7
    iput v5, p0, Lmiui/app/screenelement/data/Expression$Tokenizer;->mPos:I

    .line 93
    new-instance v7, Lmiui/app/screenelement/data/Expression$Tokenizer$Token;

    sget-object v8, Lmiui/app/screenelement/data/Expression$Tokenizer$TokenType;->NUM:Lmiui/app/screenelement/data/Expression$Tokenizer$TokenType;

    iget-object v9, p0, Lmiui/app/screenelement/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v9, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, p0, v8, v9}, Lmiui/app/screenelement/data/Expression$Tokenizer$Token;-><init>(Lmiui/app/screenelement/data/Expression$Tokenizer;Lmiui/app/screenelement/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    goto :goto_2

    .line 88
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 94
    .end local v5           #j:I
    :cond_9
    #calls: Lmiui/app/screenelement/data/Expression;->isFunctionChar(C)Z
    invoke-static {v2}, Lmiui/app/screenelement/data/Expression;->access$200(C)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 97
    add-int/lit8 v5, v4, 0x1

    .restart local v5       #j:I
    :goto_5
    iget-object v7, p0, Lmiui/app/screenelement/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_a

    .line 98
    iget-object v7, p0, Lmiui/app/screenelement/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    #calls: Lmiui/app/screenelement/data/Expression;->isFunctionChar(C)Z
    invoke-static {v7}, Lmiui/app/screenelement/data/Expression;->access$200(C)Z

    move-result v7

    if-nez v7, :cond_b

    .line 101
    :cond_a
    iput v5, p0, Lmiui/app/screenelement/data/Expression$Tokenizer;->mPos:I

    .line 102
    new-instance v7, Lmiui/app/screenelement/data/Expression$Tokenizer$Token;

    sget-object v8, Lmiui/app/screenelement/data/Expression$Tokenizer$TokenType;->FUN:Lmiui/app/screenelement/data/Expression$Tokenizer$TokenType;

    iget-object v9, p0, Lmiui/app/screenelement/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v9, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, p0, v8, v9}, Lmiui/app/screenelement/data/Expression$Tokenizer$Token;-><init>(Lmiui/app/screenelement/data/Expression$Tokenizer;Lmiui/app/screenelement/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    goto :goto_2

    .line 97
    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 103
    .end local v5           #j:I
    :cond_c
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lmiui/app/screenelement/data/Expression$BinaryExpression;->parseOperator(Ljava/lang/String;)Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;

    move-result-object v8

    sget-object v9, Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;->INVALID:Lmiui/app/screenelement/data/Expression$BinaryExpression$Ope;

    if-eq v8, v9, :cond_d

    .line 105
    add-int/lit8 v7, v4, 0x1

    iput v7, p0, Lmiui/app/screenelement/data/Expression$Tokenizer;->mPos:I

    .line 106
    new-instance v7, Lmiui/app/screenelement/data/Expression$Tokenizer$Token;

    sget-object v8, Lmiui/app/screenelement/data/Expression$Tokenizer$TokenType;->OPE:Lmiui/app/screenelement/data/Expression$Tokenizer$TokenType;

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, p0, v8, v9}, Lmiui/app/screenelement/data/Expression$Tokenizer$Token;-><init>(Lmiui/app/screenelement/data/Expression$Tokenizer;Lmiui/app/screenelement/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 107
    :cond_d
    if-ne v2, v11, :cond_11

    .line 110
    const/4 v6, 0x0

    .line 111
    .local v6, slash:Z
    add-int/lit8 v5, v4, 0x1

    .restart local v5       #j:I
    :goto_6
    iget-object v7, p0, Lmiui/app/screenelement/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_e

    .line 112
    iget-object v7, p0, Lmiui/app/screenelement/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 113
    .local v3, cc:C
    if-nez v6, :cond_f

    if-ne v3, v11, :cond_f

    .line 117
    .end local v3           #cc:C
    :cond_e
    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lmiui/app/screenelement/data/Expression$Tokenizer;->mPos:I

    .line 118
    new-instance v7, Lmiui/app/screenelement/data/Expression$Tokenizer$Token;

    sget-object v8, Lmiui/app/screenelement/data/Expression$Tokenizer$TokenType;->STR:Lmiui/app/screenelement/data/Expression$Tokenizer$TokenType;

    iget-object v9, p0, Lmiui/app/screenelement/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v9, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v10, "\\\'"

    const-string v11, "\'"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, p0, v8, v9}, Lmiui/app/screenelement/data/Expression$Tokenizer$Token;-><init>(Lmiui/app/screenelement/data/Expression$Tokenizer;Lmiui/app/screenelement/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 115
    .restart local v3       #cc:C
    :cond_f
    const/16 v7, 0x5c

    if-ne v3, v7, :cond_10

    const/4 v6, 0x1

    .line 111
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 115
    :cond_10
    const/4 v6, 0x0

    goto :goto_7

    .line 122
    .end local v3           #cc:C
    .end local v5           #j:I
    .end local v6           #slash:Z
    :cond_11
    const/16 v8, 0x28

    if-ne v2, v8, :cond_14

    .line 123
    if-nez v0, :cond_12

    .line 124
    add-int/lit8 v1, v4, 0x1

    .line 125
    :cond_12
    add-int/lit8 v0, v0, 0x1

    .line 68
    :cond_13
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 126
    :cond_14
    const/16 v8, 0x29

    if-ne v2, v8, :cond_13

    .line 127
    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_13

    .line 128
    add-int/lit8 v7, v4, 0x1

    iput v7, p0, Lmiui/app/screenelement/data/Expression$Tokenizer;->mPos:I

    .line 129
    new-instance v7, Lmiui/app/screenelement/data/Expression$Tokenizer$Token;

    sget-object v8, Lmiui/app/screenelement/data/Expression$Tokenizer$TokenType;->BRACKET:Lmiui/app/screenelement/data/Expression$Tokenizer$TokenType;

    iget-object v9, p0, Lmiui/app/screenelement/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v9, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, p0, v8, v9}, Lmiui/app/screenelement/data/Expression$Tokenizer$Token;-><init>(Lmiui/app/screenelement/data/Expression$Tokenizer;Lmiui/app/screenelement/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 134
    .end local v2           #c:C
    :cond_15
    if-eqz v0, :cond_2

    .line 135
    const-string v8, "Expression"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mismatched bracket:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lmiui/app/screenelement/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lmiui/app/screenelement/data/Expression$Tokenizer;->mPos:I

    .line 63
    return-void
.end method
