.class Lcom/android/calculator2/Logic;
.super Ljava/lang/Object;
.source "Logic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calculator2/Logic$Listener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeleteMode:I

.field private mDisplay:Lcom/android/calculator2/CalculatorDisplay;

.field private final mErrorString:Ljava/lang/String;

.field private mHistory:Lcom/android/calculator2/History;

.field private mIsError:Z

.field private mLineLength:I

.field private mListener:Lcom/android/calculator2/Logic$Listener;

.field private mResult:Ljava/lang/String;

.field private mResumed:Z

.field private mSymbols:Lorg/javia/arity/Symbols;

.field private mTranslationsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/calculator2/History;Lcom/android/calculator2/CalculatorDisplay;)V
    .locals 2
    .parameter "context"
    .parameter "history"
    .parameter "display"

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lorg/javia/arity/Symbols;

    invoke-direct {v0}, Lorg/javia/arity/Symbols;-><init>()V

    iput-object v0, p0, Lcom/android/calculator2/Logic;->mSymbols:Lorg/javia/arity/Symbols;

    .line 41
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    .line 42
    iput-boolean v1, p0, Lcom/android/calculator2/Logic;->mIsError:Z

    .line 43
    iput v1, p0, Lcom/android/calculator2/Logic;->mLineLength:I

    .line 44
    iput-boolean v1, p0, Lcom/android/calculator2/Logic;->mResumed:Z

    .line 63
    iput v1, p0, Lcom/android/calculator2/Logic;->mDeleteMode:I

    .line 74
    iput-object p1, p0, Lcom/android/calculator2/Logic;->mContext:Landroid/content/Context;

    .line 75
    iget-object v0, p0, Lcom/android/calculator2/Logic;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calculator2/Logic;->mErrorString:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    .line 77
    iput-object p3, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    .line 78
    iget-object v0, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    invoke-virtual {v0, p0}, Lcom/android/calculator2/CalculatorDisplay;->setLogic(Lcom/android/calculator2/Logic;)V

    .line 79
    return-void
.end method

.method private addTranslation(Ljava/util/HashMap;II)V
    .locals 4
    .parameter
    .parameter "t"
    .parameter "m"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 263
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/calculator2/Logic;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 264
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, translated:Ljava/lang/String;
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, math:Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 267
    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    :cond_0
    return-void
.end method

.method private clear(Z)V
    .locals 4
    .parameter "scroll"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/android/calculator2/History;->enter(Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    const-string v2, "0"

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/calculator2/CalculatorDisplay$Scroll;->UP:Lcom/android/calculator2/CalculatorDisplay$Scroll;

    :goto_0
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/calculator2/CalculatorDisplay;->setText(Ljava/lang/CharSequence;Lcom/android/calculator2/CalculatorDisplay$Scroll;Z)V

    .line 144
    invoke-virtual {p0}, Lcom/android/calculator2/Logic;->cleared()V

    .line 145
    return-void

    .line 142
    :cond_0
    sget-object v0, Lcom/android/calculator2/CalculatorDisplay$Scroll;->NONE:Lcom/android/calculator2/CalculatorDisplay$Scroll;

    goto :goto_0
.end method

.method private clearWithHistory(Z)V
    .locals 3
    .parameter "scroll"

    .prologue
    .line 125
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    invoke-virtual {v1}, Lcom/android/calculator2/History;->getText()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, text:Ljava/lang/String;
    const-string v1, "?"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    invoke-virtual {v1}, Lcom/android/calculator2/History;->moveToPrevious()Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    const-string v0, "0"

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    invoke-virtual {v1}, Lcom/android/calculator2/History;->getText()Ljava/lang/String;

    move-result-object v0

    .line 131
    sget-object v1, Lcom/android/calculator2/CalculatorDisplay$Scroll;->NONE:Lcom/android/calculator2/CalculatorDisplay$Scroll;

    invoke-virtual {p0, v0, v1}, Lcom/android/calculator2/Logic;->evaluateAndShowResult(Ljava/lang/String;Lcom/android/calculator2/CalculatorDisplay$Scroll;)V

    .line 138
    :goto_0
    return-void

    .line 133
    :cond_1
    const-string v1, "0"

    iput-object v1, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    .line 134
    iget-object v2, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    if-eqz p1, :cond_2

    sget-object v1, Lcom/android/calculator2/CalculatorDisplay$Scroll;->UP:Lcom/android/calculator2/CalculatorDisplay$Scroll;

    :goto_1
    invoke-virtual {v2, v0, v1}, Lcom/android/calculator2/CalculatorDisplay;->setText(Ljava/lang/CharSequence;Lcom/android/calculator2/CalculatorDisplay$Scroll;)V

    .line 136
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/calculator2/Logic;->mIsError:Z

    goto :goto_0

    .line 134
    :cond_2
    sget-object v1, Lcom/android/calculator2/CalculatorDisplay$Scroll;->NONE:Lcom/android/calculator2/CalculatorDisplay$Scroll;

    goto :goto_1
.end method

.method private getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    invoke-virtual {v0}, Lcom/android/calculator2/CalculatorDisplay;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static isOperator(C)Z
    .locals 2
    .parameter "c"

    .prologue
    .line 344
    const-string v0, "+\u2212\u00d7\u00f7/*"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isValidOperatorAfterResult(Ljava/lang/String;)Z
    .locals 5
    .parameter "text"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 335
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 339
    :cond_0
    :goto_0
    return v1

    .line 338
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 339
    .local v0, ope:C
    invoke-static {v0}, Lcom/android/calculator2/Logic;->isOperator(C)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "!^"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private replaceTranslations(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "input"

    .prologue
    .line 272
    iget-object v3, p0, Lcom/android/calculator2/Logic;->mTranslationsSet:Ljava/util/Set;

    if-nez v3, :cond_0

    .line 273
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 274
    .local v2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const v3, 0x7f0a0015

    const v4, 0x7f0a0016

    invoke-direct {p0, v2, v3, v4}, Lcom/android/calculator2/Logic;->addTranslation(Ljava/util/HashMap;II)V

    .line 275
    const v3, 0x7f0a0017

    const v4, 0x7f0a0018

    invoke-direct {p0, v2, v3, v4}, Lcom/android/calculator2/Logic;->addTranslation(Ljava/util/HashMap;II)V

    .line 276
    const v3, 0x7f0a0019

    const v4, 0x7f0a001a

    invoke-direct {p0, v2, v3, v4}, Lcom/android/calculator2/Logic;->addTranslation(Ljava/util/HashMap;II)V

    .line 277
    const v3, 0x7f0a001c

    const v4, 0x7f0a001d

    invoke-direct {p0, v2, v3, v4}, Lcom/android/calculator2/Logic;->addTranslation(Ljava/util/HashMap;II)V

    .line 278
    const v3, 0x7f0a001e

    const v4, 0x7f0a001f

    invoke-direct {p0, v2, v3, v4}, Lcom/android/calculator2/Logic;->addTranslation(Ljava/util/HashMap;II)V

    .line 279
    const v3, 0x7f0a0020

    const v4, 0x7f0a0021

    invoke-direct {p0, v2, v3, v4}, Lcom/android/calculator2/Logic;->addTranslation(Ljava/util/HashMap;II)V

    .line 280
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lcom/android/calculator2/Logic;->mTranslationsSet:Ljava/util/Set;

    .line 282
    .end local v2           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v3, p0, Lcom/android/calculator2/Logic;->mTranslationsSet:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 283
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 285
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-object p1
.end method

.method private tryFormattingWithPrecision(DI)Ljava/lang/String;
    .locals 10
    .parameter "value"
    .parameter "precision"

    .prologue
    .line 291
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/calculator2/Logic;->mLineLength:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "g"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 292
    .local v4, result:Ljava/lang/String;
    const-string v5, "NaN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 293
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/calculator2/Logic;->mIsError:Z

    .line 294
    iget-object v5, p0, Lcom/android/calculator2/Logic;->mErrorString:Ljava/lang/String;

    .line 330
    :goto_0
    return-object v5

    .line 296
    :cond_0
    move-object v2, v4

    .line 297
    .local v2, mantissa:Ljava/lang/String;
    const/4 v1, 0x0

    .line 298
    .local v1, exponent:Ljava/lang/String;
    const/16 v5, 0x65

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 299
    .local v0, e:I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_3

    .line 300
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 303
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 304
    const-string v5, "+"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 305
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 307
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 312
    :goto_1
    const/16 v5, 0x2e

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 313
    .local v3, period:I
    const/4 v5, -0x1

    if-ne v3, v5, :cond_2

    .line 314
    const/16 v5, 0x2c

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 316
    :cond_2
    const/4 v5, -0x1

    if-eq v3, v5, :cond_5

    .line 318
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    const-string v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 319
    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 309
    .end local v3           #period:I
    :cond_3
    move-object v2, v4

    goto :goto_1

    .line 321
    .restart local v3       #period:I
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v6, v3, 0x1

    if-ne v5, v6, :cond_5

    .line 322
    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 325
    :cond_5
    if-eqz v1, :cond_6

    .line 326
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x65

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    move-object v5, v4

    .line 330
    goto/16 :goto_0

    .line 328
    :cond_6
    move-object v4, v2

    goto :goto_3
.end method


# virtual methods
.method acceptInsert(Ljava/lang/String;)Z
    .locals 3
    .parameter "delta"

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/android/calculator2/Logic;->getText()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, text:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/calculator2/Logic;->mIsError:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/android/calculator2/Logic;->isValidOperatorAfterResult(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    invoke-virtual {v1}, Lcom/android/calculator2/CalculatorDisplay;->getSelectionStart()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method cleared()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 148
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    .line 149
    iput-boolean v1, p0, Lcom/android/calculator2/Logic;->mIsError:Z

    .line 150
    invoke-virtual {p0}, Lcom/android/calculator2/Logic;->updateHistory()V

    .line 152
    invoke-virtual {p0, v1}, Lcom/android/calculator2/Logic;->setDeleteMode(I)V

    .line 153
    return-void
.end method

.method eatHorizontalMove(Z)Z
    .locals 5
    .parameter "toLeft"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 101
    iget-object v4, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    invoke-virtual {v4}, Lcom/android/calculator2/CalculatorDisplay;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    .line 102
    .local v1, editText:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 103
    .local v0, cursorPos:I
    if-eqz p1, :cond_2

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method evaluate(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/SyntaxException;
        }
    .end annotation

    .prologue
    .line 238
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 239
    const-string v5, "0"

    .line 259
    :goto_0
    return-object v5

    .line 243
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 244
    .local v2, size:I
    :goto_1
    if-lez v2, :cond_1

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/calculator2/Logic;->isOperator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 245
    const/4 v5, 0x0

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 246
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 249
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/calculator2/Logic;->replaceTranslations(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 250
    iget-object v5, p0, Lcom/android/calculator2/Logic;->mSymbols:Lorg/javia/arity/Symbols;

    invoke-virtual {v5, p1}, Lorg/javia/arity/Symbols;->eval(Ljava/lang/String;)D

    move-result-wide v3

    .line 252
    .local v3, value:D
    const-string v1, ""

    .line 253
    .local v1, result:Ljava/lang/String;
    iget v0, p0, Lcom/android/calculator2/Logic;->mLineLength:I

    .local v0, precision:I
    :goto_2
    const/4 v5, 0x6

    if-le v0, v5, :cond_2

    .line 254
    invoke-direct {p0, v3, v4, v0}, Lcom/android/calculator2/Logic;->tryFormattingWithPrecision(DI)Ljava/lang/String;

    move-result-object v1

    .line 255
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    iget v6, p0, Lcom/android/calculator2/Logic;->mLineLength:I

    if-gt v5, v6, :cond_3

    .line 259
    :cond_2
    const/16 v5, 0x2d

    const/16 v6, 0x2212

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Infinity"

    const-string v7, "\u221e"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 253
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method public evaluateAndShowResult(Ljava/lang/String;Lcom/android/calculator2/CalculatorDisplay$Scroll;)V
    .locals 5
    .parameter "text"
    .parameter "scroll"

    .prologue
    const/4 v4, 0x1

    .line 190
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/calculator2/Logic;->evaluate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, result:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/calculator2/Logic;->mResumed:Z

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 192
    :cond_0
    iget-object v2, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    invoke-virtual {v2, p1}, Lcom/android/calculator2/History;->enter(Ljava/lang/String;)V

    .line 193
    iput-object v1, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    .line 194
    iget-object v2, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    iget-object v3, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    invoke-virtual {v2, v3, p2}, Lcom/android/calculator2/CalculatorDisplay;->setText(Ljava/lang/CharSequence;Lcom/android/calculator2/CalculatorDisplay$Scroll;)V

    .line 195
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/calculator2/Logic;->setDeleteMode(I)V
    :try_end_0
    .catch Lorg/javia/arity/SyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    .end local v1           #result:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, e:Lorg/javia/arity/SyntaxException;
    iput-boolean v4, p0, Lcom/android/calculator2/Logic;->mIsError:Z

    .line 199
    iget-object v2, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    invoke-virtual {v2, p1}, Lcom/android/calculator2/History;->enter(Ljava/lang/String;)V

    .line 200
    iget-object v2, p0, Lcom/android/calculator2/Logic;->mErrorString:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    .line 201
    iget-object v3, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    iget-boolean v2, p0, Lcom/android/calculator2/Logic;->mResumed:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, v2, p2}, Lcom/android/calculator2/CalculatorDisplay;->setText(Ljava/lang/CharSequence;Lcom/android/calculator2/CalculatorDisplay$Scroll;)V

    .line 202
    invoke-virtual {p0, v4}, Lcom/android/calculator2/Logic;->setDeleteMode(I)V

    goto :goto_0

    .line 201
    :cond_2
    const-string v2, "0"

    goto :goto_1
.end method

.method public getDeleteMode()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/android/calculator2/Logic;->mDeleteMode:I

    return v0
.end method

.method insert(Ljava/lang/String;)V
    .locals 1
    .parameter "delta"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    invoke-virtual {v0, p1}, Lcom/android/calculator2/CalculatorDisplay;->insert(Ljava/lang/String;)V

    .line 112
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/calculator2/Logic;->setDeleteMode(I)V

    .line 113
    return-void
.end method

.method onClear()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 179
    iget v1, p0, Lcom/android/calculator2/Logic;->mDeleteMode:I

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/calculator2/Logic;->clear(Z)V

    .line 180
    return-void

    .line 179
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onDelete()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 165
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    invoke-virtual {v1}, Lcom/android/calculator2/CalculatorDisplay;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 166
    .local v0, editText:Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 167
    invoke-direct {p0}, Lcom/android/calculator2/Logic;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    .line 168
    invoke-direct {p0, v4}, Lcom/android/calculator2/Logic;->clear(Z)V

    .line 170
    :cond_0
    invoke-direct {p0}, Lcom/android/calculator2/Logic;->getText()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/calculator2/Logic;->mIsError:Z

    if-eqz v1, :cond_2

    .line 171
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/calculator2/Logic;->clear(Z)V

    .line 176
    :goto_0
    return-void

    .line 173
    :cond_2
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    new-instance v2, Landroid/view/KeyEvent;

    const/16 v3, 0x43

    invoke-direct {v2, v4, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/android/calculator2/CalculatorDisplay;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 174
    const-string v1, ""

    iput-object v1, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    goto :goto_0
.end method

.method onDown()V
    .locals 4

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/android/calculator2/Logic;->getText()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    invoke-virtual {v1, v0}, Lcom/android/calculator2/History;->update(Ljava/lang/String;)V

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    invoke-virtual {v1}, Lcom/android/calculator2/History;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    iget-object v2, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    invoke-virtual {v2}, Lcom/android/calculator2/History;->getText()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/calculator2/CalculatorDisplay$Scroll;->UP:Lcom/android/calculator2/CalculatorDisplay$Scroll;

    invoke-virtual {v1, v2, v3}, Lcom/android/calculator2/CalculatorDisplay;->setText(Ljava/lang/CharSequence;Lcom/android/calculator2/CalculatorDisplay$Scroll;)V

    .line 224
    :cond_1
    return-void
.end method

.method onEnter()V
    .locals 2

    .prologue
    .line 183
    iget v0, p0, Lcom/android/calculator2/Logic;->mDeleteMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/android/calculator2/Logic;->getText()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/calculator2/CalculatorDisplay$Scroll;->UP:Lcom/android/calculator2/CalculatorDisplay$Scroll;

    invoke-virtual {p0, v0, v1}, Lcom/android/calculator2/Logic;->evaluateAndShowResult(Ljava/lang/String;Lcom/android/calculator2/CalculatorDisplay$Scroll;)V

    .line 186
    :cond_0
    return-void
.end method

.method public onTextChanged()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/calculator2/Logic;->setDeleteMode(I)V

    .line 117
    return-void
.end method

.method onUp()V
    .locals 4

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/android/calculator2/Logic;->getText()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    invoke-virtual {v1, v0}, Lcom/android/calculator2/History;->update(Ljava/lang/String;)V

    .line 211
    :cond_0
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    invoke-virtual {v1}, Lcom/android/calculator2/History;->moveToPrevious()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    iget-object v2, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    invoke-virtual {v2}, Lcom/android/calculator2/History;->getText()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/calculator2/CalculatorDisplay$Scroll;->DOWN:Lcom/android/calculator2/CalculatorDisplay$Scroll;

    invoke-virtual {v1, v2, v3}, Lcom/android/calculator2/CalculatorDisplay;->setText(Ljava/lang/CharSequence;Lcom/android/calculator2/CalculatorDisplay$Scroll;)V

    .line 214
    :cond_1
    return-void
.end method

.method public resumeWithHistory()V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/calculator2/Logic;->clearWithHistory(Z)V

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calculator2/Logic;->mResumed:Z

    .line 122
    return-void
.end method

.method public setDeleteMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 86
    iget v0, p0, Lcom/android/calculator2/Logic;->mDeleteMode:I

    if-eq v0, p1, :cond_0

    .line 87
    iput p1, p0, Lcom/android/calculator2/Logic;->mDeleteMode:I

    .line 88
    iget-object v0, p0, Lcom/android/calculator2/Logic;->mListener:Lcom/android/calculator2/Logic$Listener;

    invoke-interface {v0}, Lcom/android/calculator2/Logic$Listener;->onDeleteModeChange()V

    .line 90
    :cond_0
    return-void
.end method

.method setLineLength(I)V
    .locals 0
    .parameter "nDigits"

    .prologue
    .line 97
    iput p1, p0, Lcom/android/calculator2/Logic;->mLineLength:I

    .line 98
    return-void
.end method

.method public setListener(Lcom/android/calculator2/Logic$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/calculator2/Logic;->mListener:Lcom/android/calculator2/Logic$Listener;

    .line 83
    return-void
.end method

.method updateHistory()V
    .locals 3

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/android/calculator2/Logic;->getText()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, text:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    const-string v2, "?"

    invoke-virtual {v1, v2}, Lcom/android/calculator2/History;->update(Ljava/lang/String;)V

    .line 235
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    invoke-direct {p0}, Lcom/android/calculator2/Logic;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/calculator2/History;->update(Ljava/lang/String;)V

    goto :goto_0
.end method
