.class public Lmiui/app/screenelement/util/Utils$GetChildWrapper;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/util/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetChildWrapper"
.end annotation


# instance fields
.field private mEle:Lorg/w3c/dom/Element;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 0
    .parameter "ele"

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lmiui/app/screenelement/util/Utils$GetChildWrapper;->mEle:Lorg/w3c/dom/Element;

    .line 82
    return-void
.end method


# virtual methods
.method public getChild(Ljava/lang/String;)Lmiui/app/screenelement/util/Utils$GetChildWrapper;
    .locals 2
    .parameter "name"

    .prologue
    .line 89
    new-instance v0, Lmiui/app/screenelement/util/Utils$GetChildWrapper;

    iget-object v1, p0, Lmiui/app/screenelement/util/Utils$GetChildWrapper;->mEle:Lorg/w3c/dom/Element;

    invoke-static {v1, p1}, Lmiui/app/screenelement/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/screenelement/util/Utils$GetChildWrapper;-><init>(Lorg/w3c/dom/Element;)V

    return-object v0
.end method

.method public getElement()Lorg/w3c/dom/Element;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lmiui/app/screenelement/util/Utils$GetChildWrapper;->mEle:Lorg/w3c/dom/Element;

    return-object v0
.end method
