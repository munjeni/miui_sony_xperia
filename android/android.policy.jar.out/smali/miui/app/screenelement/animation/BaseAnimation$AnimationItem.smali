.class public Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;
.super Ljava/lang/Object;
.source "BaseAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/animation/BaseAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimationItem"
.end annotation


# instance fields
.field private mAttrs:[Ljava/lang/String;

.field private mContext:Lmiui/app/screenelement/ScreenContext;

.field public mExps:[Lmiui/app/screenelement/data/Expression;

.field public mTime:J


# direct methods
.method public constructor <init>([Ljava/lang/String;Lmiui/app/screenelement/ScreenContext;)V
    .locals 0
    .parameter "attrs"
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;->mAttrs:[Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;->mContext:Lmiui/app/screenelement/ScreenContext;

    .line 31
    return-void
.end method


# virtual methods
.method public get(I)D
    .locals 5
    .parameter "i"

    .prologue
    const-wide/16 v0, 0x0

    .line 34
    if-ltz p1, :cond_0

    iget-object v2, p0, Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;->mExps:[Lmiui/app/screenelement/data/Expression;

    array-length v2, v2

    if-ge p1, v2, :cond_0

    iget-object v2, p0, Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;->mExps:[Lmiui/app/screenelement/data/Expression;

    if-nez v2, :cond_2

    .line 35
    :cond_0
    const-string v2, "BaseAnimation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to get number in AnimationItem:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_1
    :goto_0
    return-wide v0

    :cond_2
    iget-object v2, p0, Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;->mExps:[Lmiui/app/screenelement/data/Expression;

    aget-object v2, v2, p1

    if-eqz v2, :cond_1

    iget-object v0, p0, Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;->mExps:[Lmiui/app/screenelement/data/Expression;

    aget-object v0, v0, p1

    iget-object v1, p0, Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v0

    goto :goto_0
.end method

.method public load(Lorg/w3c/dom/Element;)Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;
    .locals 9
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 43
    :try_start_0
    const-string v7, "time"

    invoke-interface {p1, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;->mTime:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    iget-object v7, p0, Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;->mAttrs:[Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 50
    iget-object v7, p0, Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;->mAttrs:[Ljava/lang/String;

    array-length v7, v7

    new-array v7, v7, [Lmiui/app/screenelement/data/Expression;

    iput-object v7, p0, Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;->mExps:[Lmiui/app/screenelement/data/Expression;

    .line 51
    const/4 v2, 0x0

    .line 52
    .local v2, i:I
    iget-object v0, p0, Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;->mAttrs:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    move v3, v2

    .end local v2           #i:I
    .local v3, i:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v6, v0, v4

    .line 53
    .local v6, s:Ljava/lang/String;
    iget-object v7, p0, Lmiui/app/screenelement/animation/BaseAnimation$AnimationItem;->mExps:[Lmiui/app/screenelement/data/Expression;

    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    invoke-interface {p1, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lmiui/app/screenelement/data/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v8

    aput-object v8, v7, v3

    .line 52
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2           #i:I
    .restart local v3       #i:I
    goto :goto_0

    .line 44
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #s:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 45
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v7, "BaseAnimation"

    const-string v8, "fail to get time attribute"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance v7, Lmiui/app/screenelement/ScreenElementLoadException;

    const-string v8, "fail to get time attribute"

    invoke-direct {v7, v8}, Lmiui/app/screenelement/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 56
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_0
    return-object p0
.end method
