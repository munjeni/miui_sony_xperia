.class public Lmiui/app/screenelement/data/ContentProviderBinder$Builder;
.super Ljava/lang/Object;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/data/ContentProviderBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBinder:Lmiui/app/screenelement/data/ContentProviderBinder;


# direct methods
.method protected constructor <init>(Lmiui/app/screenelement/data/ContentProviderBinder;)V
    .locals 0
    .parameter "binder"

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lmiui/app/screenelement/data/ContentProviderBinder$Builder;->mBinder:Lmiui/app/screenelement/data/ContentProviderBinder;

    .line 98
    return-void
.end method


# virtual methods
.method public addVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "name"
    .parameter "type"
    .parameter "column"
    .parameter "row"

    .prologue
    .line 138
    new-instance v0, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;

    invoke-direct {v0}, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;-><init>()V

    .line 139
    .local v0, v:Lmiui/app/screenelement/data/ContentProviderBinder$Variable;
    iput-object p1, v0, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;->mName:Ljava/lang/String;

    .line 140
    iput-object p2, v0, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;->mType:Ljava/lang/String;

    .line 141
    iput-object p3, v0, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;->mColumn:Ljava/lang/String;

    .line 142
    iput p4, v0, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;->mRow:I

    .line 143
    #calls: Lmiui/app/screenelement/data/ContentProviderBinder$Variable;->createVar()V
    invoke-static {v0}, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;->access$100(Lmiui/app/screenelement/data/ContentProviderBinder$Variable;)V

    .line 144
    iget-object v1, p0, Lmiui/app/screenelement/data/ContentProviderBinder$Builder;->mBinder:Lmiui/app/screenelement/data/ContentProviderBinder;

    invoke-virtual {v1, v0}, Lmiui/app/screenelement/data/ContentProviderBinder;->addVariable(Lmiui/app/screenelement/data/ContentProviderBinder$Variable;)V

    .line 145
    return-void
.end method

.method public setArgs([Ljava/lang/String;)Lmiui/app/screenelement/data/ContentProviderBinder$Builder;
    .locals 1
    .parameter "args"

    .prologue
    .line 121
    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder$Builder;->mBinder:Lmiui/app/screenelement/data/ContentProviderBinder;

    iput-object p1, v0, Lmiui/app/screenelement/data/ContentProviderBinder;->mArgs:[Ljava/lang/String;

    .line 122
    return-object p0
.end method

.method public setColumns([Ljava/lang/String;)Lmiui/app/screenelement/data/ContentProviderBinder$Builder;
    .locals 1
    .parameter "columns"

    .prologue
    .line 116
    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder$Builder;->mBinder:Lmiui/app/screenelement/data/ContentProviderBinder;

    iput-object p1, v0, Lmiui/app/screenelement/data/ContentProviderBinder;->mColumns:[Ljava/lang/String;

    .line 117
    return-object p0
.end method

.method public setCountName(Ljava/lang/String;)Lmiui/app/screenelement/data/ContentProviderBinder$Builder;
    .locals 1
    .parameter "countName"

    .prologue
    .line 131
    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder$Builder;->mBinder:Lmiui/app/screenelement/data/ContentProviderBinder;

    iput-object p1, v0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder$Builder;->mBinder:Lmiui/app/screenelement/data/ContentProviderBinder;

    invoke-virtual {v0}, Lmiui/app/screenelement/data/ContentProviderBinder;->createCountVar()V

    .line 133
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lmiui/app/screenelement/data/ContentProviderBinder$Builder;
    .locals 1
    .parameter "name"

    .prologue
    .line 101
    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder$Builder;->mBinder:Lmiui/app/screenelement/data/ContentProviderBinder;

    iput-object p1, v0, Lmiui/app/screenelement/data/ContentProviderBinder;->mName:Ljava/lang/String;

    .line 102
    return-object p0
.end method

.method public setOrder(Ljava/lang/String;)Lmiui/app/screenelement/data/ContentProviderBinder$Builder;
    .locals 1
    .parameter "order"

    .prologue
    .line 126
    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder$Builder;->mBinder:Lmiui/app/screenelement/data/ContentProviderBinder;

    iput-object p1, v0, Lmiui/app/screenelement/data/ContentProviderBinder;->mOrder:Ljava/lang/String;

    .line 127
    return-object p0
.end method

.method public setWhere(Ljava/lang/String;)Lmiui/app/screenelement/data/ContentProviderBinder$Builder;
    .locals 2
    .parameter "where"

    .prologue
    .line 106
    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder$Builder;->mBinder:Lmiui/app/screenelement/data/ContentProviderBinder;

    new-instance v1, Lmiui/app/screenelement/util/TextFormatter;

    invoke-direct {v1, p1}, Lmiui/app/screenelement/util/TextFormatter;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lmiui/app/screenelement/data/ContentProviderBinder;->mWhereFormatter:Lmiui/app/screenelement/util/TextFormatter;

    .line 107
    return-object p0
.end method

.method public setWhere(Ljava/lang/String;Ljava/lang/String;)Lmiui/app/screenelement/data/ContentProviderBinder$Builder;
    .locals 2
    .parameter "whereFormat"
    .parameter "whereParas"

    .prologue
    .line 111
    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder$Builder;->mBinder:Lmiui/app/screenelement/data/ContentProviderBinder;

    new-instance v1, Lmiui/app/screenelement/util/TextFormatter;

    invoke-direct {v1, p1, p2}, Lmiui/app/screenelement/util/TextFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lmiui/app/screenelement/data/ContentProviderBinder;->mWhereFormatter:Lmiui/app/screenelement/util/TextFormatter;

    .line 112
    return-object p0
.end method
